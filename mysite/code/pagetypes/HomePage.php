<?php
class HomePage extends Page {

	private static $icon = "mysite/images/sitetree_images/home.png";
	public $pageIcon = "mysite/images/sitetree_images/home.png";

	private static $db = array(

	);

	private static $has_one = array(
		'FeatureImage' => 'Image',
	);

	private static $has_many = array(
		'SliderItems' => 'SliderItem'
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Sidebar');
		$fields->removeByName('PromotionalBanners');

		$fields->insertBefore(UploadField::create('FeatureImage', 'Feature Image'), 'Content');

		// Slider tab
		$gridField = new GridField(
			'SliderItems',
			'Slider',
			$this->SliderItems()->sort(array('Sort'=>'ASC','Archived'=>'ASC')),
			$sliderConf = GridFieldConfig_RelationEditor::create());

		$gridField->setModelClass('SliderItem');
		$fields->addFieldToTab('Root.Slider', $gridField);
		$sliderConf->addComponent(new GridFieldOrderableRows());

		return $fields;
	}

}

class HomePage_Controller extends Page_Controller {


	public function getNews($pageSize = 5) {
		$items =  $this->NewsItems()->sort(array('Sort'=>'ASC','Created'=>'ASC'));
		// Apply pagination
		$list = new AjaxPaginatedList($items, $this->request);
		$list->setPageLength($pageSize);
		return $list;
	}

	public function RecentNews($pageSize = 10) {
		return $this->NewsItems()->Limit($pageSize);
	}

	public function getSponsorLinks() {
		return $this->SponsorLinks()->Sort('Sort');
	}


}
