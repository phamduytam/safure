<?php

class StaticController extends Controller
{
	public function actionIndex()
	{
		$model = new StaticAR();
		$alias = $_SERVER['REQUEST_URI'];
		$search = array('/', '.html');
		$replace = array('', '');
		$alias = str_replace($search, $replace, $alias);
		$tintuc = $model->findByAttributes(array('alias' => $alias));
		if(!$tintuc)
			throw new CHttpException(404,'The specified post cannot be found.');

		$this->breadcrumbs = array(
			$tintuc->name => ''
			);
		$this->pageTitle = $tintuc->name;
		if ($tintuc->keyword != '')
			$this->keyword = $tintuc->keyword;
		if ($tintuc->description != '')
			$this->description = $tintuc->description;	
		
		// get 6 item of ban ghe pallet
		$product = new ProductAR();
		$product->cat_id = 33;
		$banghe = $product->getBanGhe(6);
		$this->render('index', compact('tintuc', 'banghe'));
	}

	public function actionAdd()
	{
		$model = new StaticAR();
		if (app()->request->getPost('StaticAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('StaticAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				if($model->save()){
					user()->setFlash('messages', 'Add successful!!');
				}
			}
		}
		$this->render('add', compact('model'));
	}

	public function actionEdit($id)
	{
		$static = new StaticAR();
		$model = $static->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('StaticAR'))
		{
			$data = request()->getPost('StaticAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			if($model->validate())
			{
				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->render('edit', compact('model'));
	}
	public function actionDelete($id)
	{
		$model = StaticAR::model()->findByPk($id);
		if($model->delete())
			return true;
	}

	public function actionKhuyenmai() {
		$content = StaticAR::model()->findByPk(12);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionTuyendung() {
		$content = StaticAR::model()->findByPk(14);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionThongtin() {
		$content = StaticAR::model()->findByPk(15);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionHethong() {
		$content = StaticAR::model()->findByPk(16);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionOnline() {
		$content = StaticAR::model()->findByPk(19);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionTragop() {
		$content = StaticAR::model()->findByPk(20);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionQuyche() {
		$content = StaticAR::model()->findByPk(21);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionChinhsach() {
		$content = StaticAR::model()->findByPk(22);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionBaohanh() {
		$content = StaticAR::model()->findByPk(23);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionHoivien() {
		$content = StaticAR::model()->findByPk(24);
		if ($content)
			$this->render('index', compact('content'));
	}

	public function actionGiaohang() {
		$content = StaticAR::model()->findByPk(25);
		if ($content)
			$this->render('index', compact('content'));
	}
}