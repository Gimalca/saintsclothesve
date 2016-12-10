<?php
class ControllerModuleLatest extends Controller {
	protected function index($setting) {
		$this->language->load('module/latest');
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
				
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$this->data['products'] = array();
$this->data['images'] = array();$sql = "SELECT product_listing_effect FROM vigo_configuration";
				$query = $this->db->query($sql);
				$productlistingeffects = $query->row;
				$this->data['listing_effect'] = $productlistingeffects['product_listing_effect'];
		
		$data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		$results = $this->model_catalog_product->getProducts($data);

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
			} else {
				$image = false;
			}
						
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
			
$product_info = '';
			$addtional_image='';
			$product_info = $result['product_id'];
			
			
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		
			$results_2 = $this->model_catalog_product->getProductImages($result['product_id']);
				foreach ($results_2 as $result_1) {
					$addtional_image=$this->model_tool_image->resize($result_1['image'], $this->config->get('config_image_additional_width'),$this->config->get('config_image_additional_height'));
			
			}
			if (!$image) {
				$image = "image/no_image.jpg";
			}
			if (!$addtional_image) {
				$addtional_image = $image;
			}
			
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
'desc'    	 => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
'add'        => $addtional_image,
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/latest.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/latest.tpl';
		} else {
			$this->template = 'default/template/module/latest.tpl';
		}

		$this->render();
	}
}
?>