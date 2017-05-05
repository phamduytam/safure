<?php
class KhachhangController extends Controller
{
	public function actionIndex()
	{
		$this->breadcrumbs = array(
			'Khách hàng' => ''
			);
		$model = new KhachHangAR();
		$model->status = 1;
		$content = $model->searchList(10);
		$this->pageTitle = 'Khách hàng';
		$this->render('index', compact('content'));
	}

	public function actionDetail($id, $alias)
	{
		$model = new KhachHangAR();
		$khachhang = $model->findByPk($id);
		if(!$khachhang)
			throw new CHttpException(404,'The specified post cannot be found.');

		$model->id = $id;
		$ortherList = $model->getListOrther(10);
		$this->breadcrumbs = array(
			'Khách hàng' => url('khach-hang.html'),
			$khachhang->name => ''
			);
		$this->pageTitle = $khachhang->name;
		$this->render('detail', compact('khachhang', 'ortherList'));
	}
}