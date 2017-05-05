<?php

class StaticController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Trang đơn';
		$this->breadcrumb = array(
			'Trang đơn' => ''	
			);
		$model = new StaticAR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchListStatic();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Trang đơn';
		$this->breadcrumb = array(
			'Trang đơn' => app()->baseUrl.'/static',
			'Add'		=> ''	
			);
		
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
		$this->pageTitle = 'Trang đơn';
		$this->breadcrumb = array(
			'Trang đơn' => app()->baseUrl.'/static',
			'Edit'		=> ''	
			);

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
}