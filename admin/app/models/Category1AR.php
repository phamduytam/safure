<?php
class Category1AR extends BaseAR
{
	public $word;
	public $parent_id;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AdminAR the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'category_pro';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			/*
			※後で使用できそうなので、元のコードをコメントして、残しておきます。
			array('user_id, password, name', 'required'),
			array('permission, status', 'numerical', 'integerOnly'=>true),
			array('user_id, password', 'length', 'max'=>64),
			array('name', 'length', 'max'=>128),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('user_id, password, name, permission, status', 'safe', 'on'=>'search'),
			*/
			array('name, ', 'required', 'message' => 'Vui lòng nhập {attribute} '),
			array('created, status, parent_id, ordering, title, keyword, description, hot, img_left, img_bottom', 'safe')
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(

		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'name'			=> 'Tiêu đề',
			'status'		=> 'Tình trạng',
			'alias'			=> 'Alias',
			'created'		=> 'Ngày tạo',
			'ordering'		=> 'Thứ tự',
			'parent_id'		=> 'Danh mục',
			'hot'			=> 'Hiện ra trang chủ',
			'img_left'		=> 'Hình ảnh bên trái (278 x 446)',
			'img_bottom'	=> 'Hình ảnh phía dưới (1140 x 115)'
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		/*
		※後で使用できそうなので、元のコードをコメントして、残しておきます。
		$criteria->compare('user_id',$this->user_id,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('permission',$this->permission);
		$criteria->compare('status',$this->status);
		*/

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	private function getCriteriaList()
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('name', $this->word, true);
		}
		if(strlen($this->parent_id) > 0){
			$criteria->addCondition('parent_id = :parent_id')->params[':parent_id'] = $this->parent_id;
		}

		$criteria->order = 'id DESC';
		return $criteria;
	}

	public function searchList($pageSize = 20, $maxPage = -1)
	{
		$criteria = $this->getCriteriaList();
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}

	/**
	 * List sub 1
	 *
	*/
	public function listSub1($pageSize = 20, $maxPage = -1)
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('name', $this->word, true);
		}
		$criteria->addCondition('parent_id = :parent_id')->params[':parent_id'] = 0;
		
		$criteria->order = 'id DESC';
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}

	/**
	 * List sub 2
	 *
	*/
	public function listSub2($pageSize = 20, $maxPage = -1)
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('name', $this->word, true);
		}
		$criteria->addCondition('parent_id <> :parent_id')->params[':parent_id'] = 0;
		
		$criteria->order = 'id DESC';
		return $this->searchList_Ex($criteria, $pageSize, $maxPage);
	}

	/**
	 * Get sub 1
	 *
	*/
	public function getSub1($pageSize = 20, $maxPage = -1)
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('name', $this->word, true);
		}
		$criteria->addCondition('parent_id = :parent_id')->params[':parent_id'] = 0;
		
		$criteria->order = 'id DESC';
		return $this->findAll($criteria);
	}

	/**
	 * Get sub 2
	 *
	*/
	public function getSub2($pageSize = 20, $maxPage = -1)
	{
		$criteria = new CDbCriteria();
		$criteria->select = '*';
		//$criteria->addCondition('status = :status')->params[':status'] = 1;
		if(strlen($this->word) > 0){
			$criteria->compare('name', $this->word, true);
		}
		$criteria->addCondition('parent_id <> :parent_id')->params[':parent_id'] = 0;
		
		$criteria->order = 'id DESC';
		return $this->findAll($criteria);
	}

	public function findAllList()
	{
		$criteria = $this->getCriteriaList();
		return $this->findAll($criteria);
	}
}