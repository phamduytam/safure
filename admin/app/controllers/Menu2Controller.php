<?php

class Menu2Controller extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Menu cấp 2';
		$this->breadcrumb = array(
			'Menu 2' => '',	
			);

		$model = new Menu2AR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchList();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Menu cấp 2';
		$this->breadcrumb = array(
			'Menu 2' => url('menu2'),
			'Add'		=> ''	
			);
		$model = new Menu2AR();
		if (app()->request->getPost('Menu2AR'))
		{
			// POSTデータの取得
			$data = request()->getPost('Menu2AR');
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

		$model_1 = new Menu1AR("findAllList");
		$menu1 = $model_1->findAllList();

		$this->render('add', compact('model', 'menu1'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Menu cấp 2';
		$this->breadcrumb = array(
			'Menu 2' => url('menu2'),
			'Edit'		=> ''	
			);

		$menu2 = new Menu2AR();
		$model = $menu2->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('Menu2AR'))
		{
			$data = request()->getPost('Menu2AR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			if($model->validate())
			{
				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}

		// danh muc cap 1
		$model_1 = new Menu1AR();
		
		$menu1 = $model_1->findAllList();

		$this->render('edit', compact('model', 'menu1'));
	}
	public function actionDelete($id)
	{
		$model = Menu2AR::model()->findByPk($id);
		if($model->delete())
			return true;
	}

	/**
	 * Danh muc cap 1
	 */
	public function actionSub1() {
		$this->pageTitle = 'Danh mục sản phẩm';
		$this->breadcrumb = array(
			'Danh mục' => '',	
			);

		$model = new Menu2AR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$model->parent_id = 0;
		$content = $model->listSub1();
		$this->render('index', compact('content', 'word'));
	}

	/**
	 * Danh muc cap 2
	 */
	public function actionSub2() {
		$this->pageTitle = 'Danh mục sản phẩm';
		$this->breadcrumb = array(
			'Danh mục' => '',	
			);

		$model = new Menu2AR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$model->parent_id = 0;
		$content = $model->listSub2();
		$this->render('index', compact('content', 'word'));
	}

	/**
	 * get danh muc cap 2 bang ajax
	 *
	 * @param int $id cat_id danh muc cap 1
	 */
	public function actionAjaxSub2($id) {
		$model = new Menu2AR();
		$model->parent_id = $id;
		$category = $model->findAllList();
		$html = '';
		$html.= '<label for="ProductAR_cat1_id">Danh mục cấp 2</label>';
		$html.= '<select class="form-control" name="ProductAR[cat1_id]">';
		$html.= '<option value="0">Danh mục cấp 2</option>';
		if($category) {
			foreach ($category as $value) {
				$html.= '<option value="'.$value->id.'">'.$value->name.'</option>';
			}
		}
		$html.= '</select>';
		echo $html;
	}
}