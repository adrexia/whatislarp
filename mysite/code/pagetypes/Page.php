<?php
class Page extends SiteTree {

	private static $icon = "mysite/images/sitetree_images/page.png";

	private static $db = array (
		'Sidebar' => 'HTMLText'
	);

	private static $has_many = array(
		'PromotionalBanners' => 'PromotionalBanner'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->insertAfter(new HTMLEditorField('Sidebar', 'Sidebar Content'),'Content');


		// Slider tab
		$gridField = new GridField(
			'PromotionalBanners',
			'Promotional Banners',
			$this->PromotionalBanners()->sort(array('Sort'=>'ASC','Archived'=>'ASC')),
			$conf = GridFieldConfig_RelationEditor::create());

		$gridField->setModelClass('PromotionalBanner');
		$fields->addFieldToTab('Root.PromotionalBanners', $gridField);
		$conf->addComponent(new GridFieldOrderableRows());

		return $fields;

	}


}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}


	public function HomePage() {
		return HomePage::get_one('HomePage');
	}

	public function getCurrentSliderItems() {
		return $this->SliderItems()->filter('Archived', false);
	}

	public function getCurrentPromotionalBanners() {
		return $this->PromotionalBanners()->filter('Archived', false);
	}



	public function CMSAccess() {
		return Permission::check('ADMIN') || Permission::check('CMS_ACCESS_LeftAndMain');
	}

}
