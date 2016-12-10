<?php
class ControllerModuleFeatured extends Controller {
	protected function index($setting) {
		$this->language->load('module/featured'); 

		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product'); 
		
		$this->load->model('tool/image');
$sql = "SELECT product_listing_effect FROM vigo_configuration";
				$query = $this->db->query($sql);
				$productlistingeffects = $query->row;
				$this->data['listing_effect'] = $productlistingeffects['product_listing_effect'];

			

		$this->data['products'] = array();

		$products = explode(',', $this->config->get('featured_product'));		

		if (empty($setting['limit'])) {
			$setting['limit'] = 5;
		}
		
		$products = array_slice($products, 0, (int)$setting['limit']);
		
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			
			if ($product_info) {
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height']);
				} else {
					$image = false;
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
				if ($this->config->get('config_review_status')) {
					$rating = $product_info['rating'];
				} else {
					$rating = false;
				}
					
$product_info1 = '';
			$addtional_image='';
			 $product_info1 = $product_info['product_id'];
			
		 
			$this->load->model('catalog/product');
			$this->load->model('tool/image');
$sql = "SELECT product_listing_effect FROM vigo_configuration";
				$query = $this->db->query($sql);
				$productlistingeffects = $query->row;
				$this->data['listing_effect'] = $productlistingeffects['product_listing_effect'];

			
		
			$results_2 = $this->model_catalog_product->getProductImages($product_info['product_id']);
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
					'product_id' => $product_info['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $product_info['name'],
'desc'    	 => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
,  'add'        => $addtional_image,
				);
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/featured.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/featured.tpl';
		} else {
			$this->template = 'default/template/module/featured.tpl';
		}

		$this->render();
	}
}
?>