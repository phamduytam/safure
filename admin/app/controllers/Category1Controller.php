<?php

class Category1Controller extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Danh mục sản phẩm';
		$this->breadcrumb = array(
			'Danh mục' => '',	
			);

		$model = new Category1AR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchList();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Danh mục sản phẩm';
		$this->breadcrumb = array(
			'Danh mục' => url('category1'),
			'Add'		=> ''	
			);
		$model = new Category1AR();
		if (app()->request->getPost('Category1AR'))
		{
			// POSTデータの取得
			$data = request()->getPost('Category1AR');
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

		$model_1 = new Category1AR("findAllList");
		$model_1->parent_id = 0;
		$category = $model_1->findAllList();

		$this->render('add', compact('model', 'category'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Danh mục sản phẩm';
		$this->breadcrumb = array(
			'Danh mục' => url('category1'),
			'Edit'		=> ''	
			);

		$category = new Category1AR();
		$model = $category->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('Category1AR'))
		{
			$data = request()->getPost('Category1AR');
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
		$model_1 = new Category1AR("findAllList");
		$model_1->parent_id = 0;
		$category = $model_1->findAllList();

		$this->render('edit', compact('model', 'category'));
	}
	public function actionDelete($id)
	{
		$model = Category1AR::model()->findByPk($id);
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

		$model = new Category1AR();
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

		$model = new Category1AR();
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
		$model = new Category1AR();
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