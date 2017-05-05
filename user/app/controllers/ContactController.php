<?php
class ContactController extends Controller
{
	public function actionIndex()
	{
		$this->breadcrumbs = array(
			'Liên hệ' => ''
			);
		$model = new ContactAR();
		if(request()->getPost('ContactAR')){
			$model->attributes = request()->getPost('ContactAR');
			$model->created = date('Y-m-d H:i:s', time());
			$model->status = 1;
			if($model->validate()){
				if($model->save())
					user()->setFlash('messages', 'Send successful!!');
			}
		}
		$tmp_model = new StaticAR();
		$contact = $tmp_model->findByPk(1);
		$this->pageTitle = 'Liên hệ';
		$this->render('index', compact('model', 'contact'));
	}

	public function actionView($id)
	{
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