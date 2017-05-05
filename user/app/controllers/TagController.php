<?php
class TagController extends Controller
{
	public function actionIndex($alias = '')
	{
		$model = new TagAR();
		$alias = str_replace('.html', '', $alias);
		$tag = $model->findByAttributes(array('alias' => $alias));
		if (!$tag) {
			$this->error('<div class="col-md-6">Page not found</div>', '404');
			return ;
		}

		$model_product = new ProductAR();
		$model_product->tag_id = $tag->id;
		$content = $model_product->searchListProduct(15);

		$this->layout = 'standard';
		$this->breadcrumbs = array(
			'Tags' => ''
			);
		$this->pageTitle = 'Tags';
		$title = $this->pageTitle;
		$this->pageTitle = $tag->name;
		$this->render('index', compact('content', 'title'));
	}
}