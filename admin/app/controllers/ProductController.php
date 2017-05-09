<?php
class ProductController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm' => ''	
			);
		$word = request()->getQuery('word', '');
		$product = new ProductAR("searchListProduct");
		if($word) $product->word = $word;
		$content = $product->searchListProduct();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm'	=> app()->baseUrl.'/product',
			'Add'		=> ''	
			);

		$model = new ProductAR();
		if (app()->request->getPost('ProductAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('ProductAR');
			$model->attributes = $data;
			if(isset($_POST['tagList']))
				$model->tag_id = implode(',', $_POST['tagList']);
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
						$pathThumbImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].'thumbs/'.$imageFileName;

						$imageUploadFile->saveAs($pathImage);
						// resize
						$this->resizeImage($pathImage);
						$this->createThumbs($pathImage, $pathThumbImage);
					}
					$this->redirect(url('/product/add'));
					user()->setFlash('messages', 'Add successful!!');
				}

			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		// danh muc 2
		$category1 = $model_cate->getSub2();		

		// tag list
		$model_tag = new TagAR();
		$tags = $model_tag->findAllListTag();

		$this->render('add', compact('model', 'category', 'category1', 'tags'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm'	=> app()->baseUrl.'/product',
			'Edit'		=> ''	
			);
		$product = new ProductAR();
		$model = $product->findByPk($id);
		if(!$model)
			return ;
		$model_tag = new TagAR();
		$tags = $model_tag->findAllListTag();

		$tags_checked = explode(',', $model->tag_id);

		if (app()->request->getPost('ProductAR'))
		{
			$data = request()->getPost('ProductAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			if(isset($_POST['tagList']))
				$model->tag_id = implode(',', $_POST['tagList']);
			else
				$model->tag_id = '';
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
					$pathThumbImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].'thumbs/'.$imageFileName;
					$ret = $imageUploadFile->saveAs($pathImage);
					//resize
					$this->resizeImage($pathImage);
					$this->createThumbs($pathImage, $pathThumbImage);
					if($ret) {
						deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $image_old);
					}
				}

				if($model->save())
				{
					user()->setFlash('messages', 'Edit successful!!');
					$this->redirect(url('/product/edit/'.$id));
				}
			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		// danh muc 2
		$category1 = $model_cate->getSub2();		

		$this->render('edit', compact('model', 'category', 'category1', 'tags', 'tags_checked'));
	}
	public function actionDelete($id)
	{
		$model = ProductAR::model()->findByPk($id);
		if($model->delete())
			deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $model->image);
	}

	private function resizeImage($pathImage){
		if(is_file($pathImage)){
			$w = 480; $h = 480;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'auto');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		}
	}

	private function createThumb($pathImage) {
		// if(is_file($pathImage)){
			echo "createThumb";
			$w = 160; $h = 160;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'auto');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		// }
	}

	private function createThumbs($pathImage, $thumbPath){
		// *** 1) Initialise / load image
		$resizeObj = new Resize($pathImage);

		// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
		$resizeObj -> resizeImage(160, 160, 'auto');

		// *** 3) Save image
		$resizeObj -> saveImage($thumbPath, 100);
	}
}