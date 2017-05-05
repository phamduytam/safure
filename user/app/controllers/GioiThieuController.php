<?php
class GioithieuController extends Controller
{
	public function actionIndex($alias='')
	{
		$alias = htmlentities($alias);

		// category gioithieu
		$model = new StaticAR();
		$id = 4;
		$content = $model->findByPk($id);

		$this->breadcrumbs = array(
			'Giới thiệu' => ''
			);

		if (!$content) {
			$this->error('Page not found', '404');
			return ;
		}

		$this->render('index', compact('content'));
	}
}