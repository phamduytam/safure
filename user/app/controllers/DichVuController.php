<?php
class DichVuController extends Controller
{
	public function actionIndex()
	{
		$model = new DichVuAR();
		$model->status = 1;
		$content = $model->searchListDichvu(10);
		$this->render('index', compact('content'));
	}

	public function actionDetail($id, $alias)
	{
		$model = new DichVuAR();
		$dichvu = $model->findByPk($id);
		if(!$dichvu)
			return ;

		$model->id = $id;
		$ortherList = $model->getListOrther(10);
		$this->render('detail', compact('dichvu', 'ortherList'));
	}
}