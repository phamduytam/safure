<?php

class TagController extends Controller
{
	public function actionIndex()
	{
		$model = new TagAR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchListTag();
		$this->pageTitle = 'Tags';
		$this->breadcrumb = array(
			'Tags' => '',	
			);

		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$model = new TagAR();
		if (app()->request->getPost('TagAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('TagAR');
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
		$this->pageTitle = 'Tags';
		$this->breadcrumb = array(
			'Tags' => url('tag'),
			'Add'		=> ''	
			);

		$this->render('add', compact('model'));
	}

	public function actionEdit($id)
	{
		$tag = new TagAR();
		$model = $tag->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('TagAR'))
		{
			$data = request()->getPost('TagAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			if($model->validate())
			{
				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->pageTitle = 'Tags';
		$this->breadcrumb = array(
			'Tags' => url('tag'),
			'Edit'		=> ''	
			);

		$this->render('edit', compact('model'));
	}
	public function actionDelete($id)
	{
		$model = TagAR::model()->findByPk($id);
		if($model->delete())
			return true;
	}
}