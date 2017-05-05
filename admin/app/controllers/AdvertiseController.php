<?php
class AdvertiseController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Banner - Hình ảnh';
		$this->breadcrumb = array(
			'Banner - Hình ảnh' => '',
			);

		$word = request()->getQuery('word', '');
		$advertise = new AdvertiseAR("searchListAdvertise");
		if($word) $advertise->word = $word;
		$content = $advertise->searchListAdvertise();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Banner - Hình ảnh';
		$this->breadcrumb = array(
			'Banner - Hình ảnh' => app()->baseUrl.'/advertise',
			'Add'		=> ''
			);

		$model = new AdvertiseAR();
		$category_model = new CategoryAR();
		$category = $category_model->findAllListCategory();
		if (app()->request->getPost('AdvertiseAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('AdvertiseAR');
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
						$this->resizeImage($pathImage, $data['cat_id']);
					}
					user()->setFlash('messages', 'Add successful!!');
				}

			}
		}
		$this->render('add', compact('model', 'category'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Banner - Hình ảnh';
		$this->breadcrumb = array(
			'Banner - Hình ảnh' => app()->baseUrl.'/advertise',
			'Edit'		=> ''
			);

		$advertise = new AdvertiseAR();
		$model = $advertise->findByPk($id);
		$category_model = new CategoryAR();
		$category = $category_model->findAllListCategory();
		if(!$model)
			return ;
		if (app()->request->getPost('AdvertiseAR'))
		{
			$data = request()->getPost('AdvertiseAR');
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
					// resize
					$this->resizeImage($pathImage, $data['cat_id']);
					if($ret)
						deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $image_old);
				}

				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->render('edit', compact('model', 'category'));
	}
	public function actionDelete($id)
	{
		$model = AdvertiseAR::model()->findByPk($id);
		if($model->delete())
			deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $model->image);
	}

	private function resizeImage($pathImage, $cat_id){
		if(is_file($pathImage)){
			if($cat_id == 3){
				$w = 600; $h = 330;
			}else if($cat_id == 2){
				$w = 1250; $h = 250;
			}else if($cat_id == 1){
				$w = 162; $h = 23;
			}
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'exact');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		}
	}
}