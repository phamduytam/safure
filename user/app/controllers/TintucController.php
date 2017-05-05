<?php
class TintucController extends Controller
{
	public function actionIndex()
	{
		$model = new TinTucAR();
		$model->status = 1;
		$content = $model->searchList(10);
		$this->breadcrumbs = array(
			'Tin tức' => ''
			);
		$this->pageTitle = 'Tin tức';
		$this->render('index', compact('content'));
	}

	public function actionDetail($id, $alias)
	{
		$model = new TinTucAR();
		$tintuc = $model->findByPk($id);
		if(!$tintuc)
			throw new CHttpException(404,'The specified post cannot be found.');

		$model->id = $id;
		$ortherList = $model->getListOrther(10);
		$this->breadcrumbs = array(
			'Tin tức' => url('tin-tuc.html'),
			$tintuc->name => ''
			);
		$this->pageTitle = $tintuc->name;
		$this->render('detail', compact('tintuc', 'ortherList'));
	}
}