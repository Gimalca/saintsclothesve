<?php
class ControllerModulestaffpeak extends Controller {
	protected function index($setting) {
		$this->language->load('module/staffpeak');
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
				
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$this->data['products'] = array();
		$this->data['images'] = array();
		$data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		
		 $sql = "SELECT distinct cat_des.category_id, cat_des.name, p.product_id, p.image, pd.name, pd.description FROM ". DB_PREFIX . "product_to_category ptoc, ". DB_PREFIX . "product p, ". DB_PREFIX . "product_description pd, ". DB_PREFIX . "category_description  cat_des WHERE cat_des.category_id=ptoc.category_id AND ptoc.product_id=p.product_id AND ptoc.product_id=pd.product_id AND pd.language_id = ". (int)$this->config->get('config_language_id') ." AND cat_des.name LIKE '%Staff Peak%'";
		
		 $query = $this->db->query($sql);
		$results = $query->rows;
		foreach ($results as $result) {
			if ($result['image']) {
				 $image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
			} else {
				 $image = false;
			}
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'desc'    	 => $result['description'],
				//'price'   	 => $price,
				//'special' 	 => $special,
				//'rating'     => $rating,
				//'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				
			);
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/staffpeak.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/staffpeak.tpl';
		} else {
			$this->template = 'default/template/module/staffpeak.tpl';
		}

		$this->render();
	}
}
?>