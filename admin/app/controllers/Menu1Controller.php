<?php

class Menu1Controller extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Menu cấp 1';
		$this->breadcrumb = array(
			'Menu 1' => '',	
			);

		$model = new Menu1AR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchList();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Menu cấp 1';
		$this->breadcrumb = array(
			'Menu 1' => url('menu1'),
			'Add'		=> ''	
			);
		$model = new Menu1AR();
		if (app()->request->getPost('Menu1AR'))
		{
			// POSTデータの取得
			$data = request()->getPost('Menu1AR');
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
		$this->pageTitle = 'Menu cấp 1';
		$this->breadcrumb = array(
			'Menu 1' => url('menu1'),
			'Edit'		=> ''	
			);

		$category = new Menu1AR();
		$model = $category->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('Menu1AR'))
		{
			$data = request()->getPost('Menu1AR');
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
		$model = Menu1AR::model()->findByPk($id);
		if($model->delete())
			return true;
	}

	/**
	 * get danh muc cap 2 bang ajax
	 *
	 * @param int $id cat_id danh muc cap 1
	 */
	public function actionAjaxSub2($id) {
		$model = new Menu1AR();
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