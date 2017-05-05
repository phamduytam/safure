<?php
class DichVuController extends Controller
{
	public function actionIndex()
	{
		$word = request()->getQuery('word', '');
		$dichvu = new DichVuAR("searchList");
		if($word) $dichvu->word = $word;
		$content = $dichvu->searchList();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$model = new DichVuAR();
		if (app()->request->getPost('DichVuAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('DichVuAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				$imageUploadFile = CUploadedFile::getInstance($model, 'image');
				if($imageUploadFile !== null){ // only do if file is really uploaded
					$imageFileName = time().$imageUploadFile->name;
					$model->image = $imageFileName;
				}
				if($model->save()){
					if($imageUploadFile !== null) // validate to save file
					{
						$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
						$imageUploadFile->saveAs($pathImage);
						// resize
						$this->resizeImage($pathImage);
					}
					user()->setFlash('messages', 'Add successful!!');
				}

			}
		}
		$this->render('add', compact('model'));
	}

	public function actionEdit($id)
	{
		$dichvu = new DichVuAR();
		$model = $dichvu->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('DichVuAR'))
		{
			$data = request()->getPost('DichVuAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			$imageUploadFile = CUploadedFile::getInstance($model, 'image');
			if($imageUploadFile == null){
				$model->image = $_POST['hd_img'];
			}
			if($model->validate())
			{
				if($imageUploadFile !== null) // validate to save file
				{
					$image_old = $model->image;
					$imageFileName = time().$imageUploadFile->name;
					$model->image = $imageFileName;
					$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
					$ret = $imageUploadFile->saveAs($pathImage);
					//resize
					$this->resizeImage($pathImage);
					if($ret)
						deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $image_old);
				}

				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->render('edit', compact('model'));
	}
	public function actionDelete($id)
	{
		$model = DichVuAR::model()->findByPk($id);
		if($model->delete())
			deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $model->image);
	}

	private function resizeImage($pathImage){
		if(is_file($pathImage)){
			$w = 600; $h = 430;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'exact');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		}
	}
}