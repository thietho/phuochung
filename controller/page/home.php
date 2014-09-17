<?php
class ControllerPageHome extends Controller
{
	function __construct() 
	{
		//$this->iscache = true;
	 	$arr=array();
		foreach($_GET as $key => $val)
			$arr[] = $key."=".$val;
	 	$this->name ="PageHome".implode("_",$arr);
   	}
	public function index()
	{
		if($this->cachehtml->iscacht($this->name) == false)
		{
			//Banner home
			$template = array(
						  'template' => "home/banner.tpl",
						  'width' => 548,
						  'height' =>548
						  );
		
			$arr = array("bannerhome",0,"",$template);
			$this->data['bannerhome'] = $this->loadModule('module/block','getList',$arr);
			
			//Tin tuc moi
			$template = array(
						  'template' => "home/news_list.tpl",
						  'width' => 150,
						  'height' =>150,
						  'paging' => false,
						  'sorting' =>false
						  );
			
			$medias = $this->getNews();
			
			$arr = array("",6,"",$template,$medias);
			$this->data['newshome'] = $this->loadModule('module/productlist','index',$arr);
			
			//San pham moi
			$template = array(
						  'template' => "module/product_list.tpl",
						  'width' => 100,
						  'height' =>100,
						  'paging' => false,
						  'sorting' =>false
						  );
			
			$medias = $this->getProduct('sanphammoi');
			
			$arr = array("",8,"",$template,$medias);
			$this->data['producthome'] = $this->loadModule('module/productlist','index',$arr);
			
			/*$arr = array("gioithieu");
			$this->data['producthome'] = $this->loadModule('module/information','index',$arr);*/
			//
			$this->loadSiteBar();
			$this->document->title = $this->document->setup['Title'] ." - ". $this->document->setup['Slogan'];
		}
		
		$this->id="content";
		$this->template="page/home.tpl";
		$this->layout="layout/home";
		$this->render();
	}
	
	private function loadSiteBar()
	{
		//Left sitebar
		$arr = array('sanpham');
		$this->data['leftsitebar']['produtcategory'] = $this->loadModule('sitebar/catalogue','index',$arr);
		$template = array(
						  'template' => "sitebar/product_hot.tpl",
						  'width' => 0,
						  'height' =>159,
						  'paging' => false,
						  'sorting' =>false
						  );
			
		$medias = $this->getProduct('sanphamhot');
		
		$arr = array("",8,"",$template,$medias);
		$this->data['leftsitebar']['producthot'] = $this->loadModule('module/productlist','index',$arr);
		$this->data['leftsitebar']['search'] = $this->loadModule('sitebar/searchproduct');
		
		$template = array(
					  'template' => "sitebar/gallery.tpl",
					  'width' => 198,
					  'height' =>0
					  );
	
		$arr = array("thu-vien",0,"",$template);
		$this->data['leftsitebar']['imagecompany'] = $this->loadModule('module/block','getList',$arr);
		
		$this->data['leftsitebar']['supportonline'] = $this->loadModule('sitebar/supportonline');
		
		//$this->data['leftsitebar']['exchange'] = $this->loadModule('sitebar/exchange');
		//$this->data['leftsitebar']['weblink'] = $this->loadModule('sitebar/weblink');
		//$this->data['leftsitebar']['hitcounter'] = $this->loadModule('sitebar/hitcounter');
		
		//Rigth sitebar
		/*$this->data['rightsitebar']['login'] = $this->loadModule('sitebar/login');
		$this->data['rightsitebar']['search'] = $this->loadModule('sitebar/search');
		$this->data['rightsitebar']['cart'] = $this->loadModule('sitebar/cart');
		$this->data['rightsitebar']['banner'] = $this->loadModule('sitebar/banner');
		$this->data['rightsitebar']['question'] = $this->loadModule('sitebar/question');*/
	}
	
	function getNews()
	{
		$this->load->model('core/sitemap');
		$this->load->model('core/media');
		$siteid = $this->member->getSiteId();
		$sitemaps = $this->model_core_sitemap->getListByModule("module/news", $siteid);
		$arrsitemapid = $this->string->matrixToArray($sitemaps,"sitemapid");
		$queryoptions = array();
		$queryoptions['mediaparent'] = '%';
		$queryoptions['mediatype'] = '%';
		$options['refersitemap'] = $arrsitemapid;
		$data = $this->model_core_media->getPaginationList($options, $step=0, $to=15);
		
		return $data;
	}
	
	function getProduct($status)
	{
		$this->load->model('core/sitemap');
		$this->load->model('core/media');
		$siteid = $this->member->getSiteId();
		$sitemaps = $this->model_core_sitemap->getListByModule("module/product", $siteid);
		$arrsitemapid = $this->string->matrixToArray($sitemaps,"sitemapid");
		$queryoptions = array();
		$queryoptions['mediaparent'] = '%';
		$queryoptions['mediatype'] = '%';
		$options['refersitemap'] = $arrsitemapid;
		$options['groupkeys'] = $status;
		$data = $this->model_core_media->getPaginationList($options, $step=0, $to=9);
		
		return $data;
	}
}
?>