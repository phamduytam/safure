<?php
class ContactController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Liên hệ';
		$this->breadcrumb = array(
			'Liên hệ' => ''	
			);
		$word = request()->getQuery('word', '');
		$model = new ContactAR('searchListContact');
		if($word) $model->word = $word;
		$content = $model->searchListContact();
		$this->render('index', compact('content', 'word'));
	}

	public function actionView($id)
	{
		$this->pageTitle = 'Liên hệ';
		$this->breadcrumb = array(
			'Liên hệ'	=> app()->baseUrl.'/contact',
			'Xem'		=> ''	
			);
		$model = ContactAR::model()->findByPk($id);
		if($model)
		{
			$model->status = 0;
			$model->save($model->status);

		}
		$this->render('view', compact('model'));
	}

	public function actionDelete($id)
	{
		$model = ContactAR::model()->findByPk($id);
		if($model->delete())
			return true;
	}
}