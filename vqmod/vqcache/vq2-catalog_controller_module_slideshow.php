<?php  
class ControllerModuleSlideshow extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
$this->data['text_sorry_no_slider'] = $this->language->get('text_sorry_no_slider');
						 
			
			
		
		$this->document->addScript('catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js');
		
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/slideshow.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/slideshow.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/slideshow.css');
		}
	        //print_r($this->data);
		$this->data['width'] = $setting['width'];
		$this->data['height'] = $setting['height'];
		
		$this->data['banners'] = array();
		
                //print_r($setting);die;
                
		if (isset($setting['banner_id'])) {
			$results = $this->model_design_banner->getBanner($setting['banner_id']);

			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$this->data['banners'][] = array(
						'title' => $result['title'],
						'link'  => $result['link'],
						'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
					);
				}
			}
		}
		
		$this->data['module'] = $module++;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshow.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/slideshow.tpl';
		} else {
			$this->template = 'default/template/module/slideshow.tpl';
}
		$this->getList();
		}
		
public function getList() {
		$this->load->model('tool/image');
		$this->load->model('module/slideshow');
		
		
		
		$sql = "SELECT slider_effect FROM vigo_configuration";
		$query = $this->db->query($sql);
		$slidereffects = $query->row;
		$this->data['slidereffect'] = $slidereffects['slider_effect'];
		
		
		$results = $this->model_module_slideshow->getProducts();
			
				foreach ($results as $result) {
			
				if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
					if($this->data['slidereffect'] ==1 ){
						if($this->data['slidereffect'] ==1){
							$image = $this->model_tool_image->resize($result['image'], 1170,550);
						}
						elseif($this->data['slidereffect'] ==2){
							$image = $this->model_tool_image->resize($result['image'], 1900,750);
						}
						elseif($this->data['slidereffect'] == 4){
							$image = $this->model_tool_image->resize($result['image'], 770,615);
						}
						elseif($this->data['slidereffect'] == 5){
							$image = $this->model_tool_image->resize($result['image'], 1000,300);
						}
						else{
							$image = $this->model_tool_image->resize($result['image'], 1170,550);
						}
						
					}
					elseif($this->data['slidereffect'] ==2){
						if($this->data['slidereffect'] ==1){
							$image = $this->model_tool_image->resize($result['image'], 1170,550);
						}
						elseif($this->data['slidereffect'] ==2){
							$image = $this->model_tool_image->resize($result['image'], 1900,750);
						}
						elseif($this->data['slidereffect'] == 4){
							$image = $this->model_tool_image->resize($result['image'], 770,615);
						}
						elseif($this->data['slidereffect'] == 5){
							$image = $this->model_tool_image->resize($result['image'], 1000,300);
						}
						else{
							$image = $this->model_tool_image->resize($result['image'], 1100,550);
						}
					}
					elseif($this->data['slidereffect'] ==3){
						if($this->data['slidereffect'] ==1){
							$image = $this->model_tool_image->resize($result['image'], 1170,550);
						}
						elseif($this->data['slidereffect'] ==2){
							$image = $this->model_tool_image->resize($result['image'], 1100,550);
						}
						elseif($this->data['slidereffect'] == 4){
							$image = $this->model_tool_image->resize($result['image'], 770,615);
						}
						elseif($this->data['slidereffect'] == 5){
							$image = $this->model_tool_image->resize($result['image'], 1000,300);
						}
						else{
							
						}
					}
					elseif($this->data['slidereffect'] == 4){
						if($this->data['slidereffect'] ==1){
							$image = $this->model_tool_image->resize($result['image'], 1170,550);
						}
						elseif($this->data['slidereffect'] ==2){
							$image = $this->model_tool_image->resize($result['image'], 1900,750);
						}
						elseif($this->data['slidereffect'] == 4){
							$image = $this->model_tool_image->resize($result['image'], 770,615);
						}
						elseif($this->data['slidereffect'] == 5){
							$image = $this->model_tool_image->resize($result['image'], 1000,300);
						}
						else{
							$image = $this->model_tool_image->resize($result['image'], 770,615);
						}
					}
					elseif($this->data['slidereffect'] == 5){
						if($this->data['slidereffect'] ==1){
							$image = $this->model_tool_image->resize($result['image'], 1170,550);
						}
						elseif($this->data['slidereffect'] ==2){
							$image = $this->model_tool_image->resize($result['image'], 1100,550);
						}
						elseif($this->data['slidereffect'] == 4){
							$image = $this->model_tool_image->resize($result['image'], 770,615);
						}
						elseif($this->data['slidereffect'] == 5){
							$image = $this->model_tool_image->resize($result['image'], 300,300);
						}
						else{
							$image = $this->model_tool_image->resize($result['image'], 500,300);
						}
					}
	
				} else {
					$image = $this->model_tool_image->resize('no_image.jpg', 550, 550);
				}
				
			
			$this->data['products'][] = array(
				'id'        => $result['id'],
				'name'      => $result['name'],
				'desc_1'    => $result['desc_1'],
				'color'    => $result['color'],
				'link'      => $result['link'],
				'image'     => $image,
				'order_1'      => $result['order_1'],
			);
		}
		$this->render();
	}
}
?>