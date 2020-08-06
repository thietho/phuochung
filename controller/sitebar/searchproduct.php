<?php
class ControllerSitebarSearchproduct extends Controller
{
	public function index()
	{
		$this->load->model("core/category");
		$this->load->model("core/sitemap");
		$this->data['loaisp'] = array();
		$siteid = $this->member->getSiteId();
		$this->model_core_sitemap->getTreeSitemap("sanpham",$this->data['loaisp'],$siteid);
		unset($this->data['loaisp'][0]);
		
		$this->data['nhomsp'] = array();
		$this->model_core_category->getTree("nhomsp",$this->data['nhomsp']);
		unset($this->data['nhomsp'][0]);
		
		
		
		$this->id="content";		
		$this->template="sitebar/searchproduct.tpl";
		
		$this->render();
	}
	
	
}
?>