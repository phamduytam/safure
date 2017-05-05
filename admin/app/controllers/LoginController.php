<?php
Class LoginController extends Controller
{
	public $test;
	public function actionIndex()
	{
		$this->render('login');
	}

	public function actionLogout()
	{
	}
}