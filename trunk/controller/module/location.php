<?php
class ControllerModuleLocation extends Controller
{
	public function index()
	{
		
		$this->load->model("core/media");
		
		$sitemapid = $this->document->sitemapid;
		$this->load->model("core/media");
		$this->load->model("core/sitemap");
		$this->data['sitemap'] = $this->model_core_sitemap->getItem($sitemapid,$this->user->getSiteId());
		$mediaid = $this->user->getSiteId().$sitemapid;

		$this->data['item'] = $this->model_core_media->getItem($mediaid);
		
		$this->data['location']['zoom'] = $this->model_core_media->getInformation($mediaid, 'zoom');
		if($this->data['location']['zoom']=="")
			$this->data['location']['zoom'] = 5;
		$this->data['location']['x'] = $this->model_core_media->getInformation($mediaid, 'x');
			if($this->data['location']['x']=="")
		$this->data['location']['x']=14.058324;
		$this->data['location']['y'] = $this->model_core_media->getInformation($mediaid, 'y');
		if($this->data['location']['y']=="")
			$this->data['location']['y']=108.277199;
		
		$this->id="location";
		$this->template="module/location.tpl";
		$this->render();
	}
	
	public function loadLocation($sitemapid)
	{
		$this->load->model("core/media");
		
		
		$this->load->model("core/media");
		$this->load->model("core/sitemap");
		$this->data['sitemap'] = $this->model_core_sitemap->getItem($sitemapid,$this->user->getSiteId());
		$mediaid = $this->user->getSiteId().$sitemapid;

		$this->data['item'] = $this->model_core_media->getItem($mediaid);
		
		$this->data['location']['zoom'] = $this->model_core_media->getInformation($mediaid, 'zoom');
		if($this->data['location']['zoom']=="")
			$this->data['location']['zoom'] = 5;
		$this->data['location']['x'] = $this->model_core_media->getInformation($mediaid, 'x');
			if($this->data['location']['x']=="")
		$this->data['location']['x']=14.058324;
		$this->data['location']['y'] = $this->model_core_media->getInformation($mediaid, 'y');
		if($this->data['location']['y']=="")
			$this->data['location']['y']=108.277199;
		
		$arr = array("chi-nhanh-1","chi-nhanh-2","chi-nhanh-3");
		foreach($arr as $key => $chinhanh)
		{
			$mediaid = $this->user->getSiteId().$chinhanh;
			$media = $this->model_core_media->getItem($mediaid);
			$this->data['chinhanhs'][$key]['x'] = $this->model_core_media->getInformation($mediaid, 'x');
			$this->data['chinhanhs'][$key]['y'] = $this->model_core_media->getInformation($mediaid, 'y');
			$this->data['chinhanhs'][$key]['description'] = html_entity_decode($media['description']);
		}
		
		
		
		$this->id="location";
		$this->template="module/location.tpl";
		$this->render();
	}
}
?>