<?php

class Controllercustomvigoconfiguration extends Controller{ 
    public function index(){
		$this->language->load('custom/vigo_configuration');
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_update'] = $this->language->get('button_update');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['text_footer_option'] = $this->language->get('text_footer_option');
		$this->data['text_facebook'] = $this->language->get('text_facebook');
		$this->data['text_twitter'] = $this->language->get('text_twitter');
		$this->data['text_rss'] = $this->language->get('text_rss');
		$this->data['text_delicious'] = $this->language->get('text_delicious');
		$this->data['text_linkedin'] = $this->language->get('text_linkedin');
		$this->data['text_flickr'] = $this->language->get('text_flickr');
		$this->data['text_skype'] = $this->language->get('text_skype');
		$this->data['text_email'] = $this->language->get('text_email');
		
		$this->data['text_copy_right'] = $this->language->get('text_copy_right');
		$this->data['text_footer_background'] = $this->language->get('text_footer_background');
		$this->data['text_color'] = $this->language->get('text_color');
		$this->data['text_image'] = $this->language->get('text_image');
		$this->data['text_pattent'] = $this->language->get('text_pattent');
		$this->data['text_product_listing_option'] = $this->language->get('text_product_listing_option');
		$this->data['text_product_listing_effects'] = $this->language->get('text_product_listing_effects');
		$this->data['text_mega_manu_option'] = $this->language->get('text_mega_manu_option');
		$this->data['text_mega_menu'] = $this->language->get('text_mega_menu');
		$this->data['text_mega_menu_content'] = $this->language->get('text_mega_menu_content');
		$this->data['text_custom_menu'] = $this->language->get('text_custom_menu');
		
		

		$this->load->model('custom/vigo_configuration');
		
		$this->update();
    }
	
	
		
		public function update() {
			
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('custom/vigo_configuration');
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			
			
		$this->model_custom_vigo_configuration->editProduct($this->request->post);
		//$this->openbay->productUpdateListen($this->request->post);

		//$this->session->data['success'] = $this->language->get('text_success');
		
		$this->redirect($this->url->link('custom/vigo_configuration', 'token=' . $this->session->data['token'], 'SSL'));
			}
			$this->getForm();
		}
		
		
		
		protected function getForm() {
	//	if (!isset($this->request->get['id'])) {
	//		$this->data['action'] = $this->url->link('custom/vigo_configuration/insert', 'token=' . $this->session->data['token'], 'SSL');
	//	} else {
	//		$this->data['update'] = $this->url->link('custom/vigo_configuration/update', 'token=' . $this->session->data['token'], 'SSL');
	//	}
		$this->load->model('tool/image');
		$this->data['action'] = $this->url->link('custom/vigo_configuration/update', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('custom/vigo_configuration', 'token=' . $this->session->data['token'], 'SSL');
		
		if ($this->request->server['REQUEST_METHOD'] != 'POST') {
			 $product_info = $this->model_custom_vigo_configuration->getProductsocial();
		}
		
		if (isset($this->request->post['facebook'])) {
			$this->data['facebook'] = $this->request->post['facebook'];
		} elseif (!empty($product_info)) {
			$this->data['facebook'] = $product_info['facebook'];
		} else {
			$this->data['facebook'] = '';
		}
		
		if (isset($this->request->post['twitter'])) {
			$this->data['twitter'] = $this->request->post['twitter'];
		} elseif (!empty($product_info)) {
			$this->data['twitter'] = $product_info['twitter'];
		} else {
			$this->data['twitter'] = '';
		}
		
		if (isset($this->request->post['rss'])) {
			$this->data['rss'] = $this->request->post['rss'];
		} elseif (!empty($product_info)) {
			$this->data['rss'] = $product_info['rss'];
		} else {
			$this->data['rss'] = '';
		}
		
		if (isset($this->request->post['delicious'])) {
			$this->data['delicious'] = $this->request->post['delicious'];
		} elseif (!empty($product_info)) {
			$this->data['delicious'] = $product_info['delicious'];
		} else {
			$this->data['delicious'] = '';
		}
		
		if (isset($this->request->post['linkedin'])) {
			$this->data['linkedin'] = $this->request->post['linkedin'];
		} elseif (!empty($product_info)) {
			$this->data['linkedin'] = $product_info['linkedin'];
		} else {
			$this->data['linkedin'] = '';
		}
		
		if (isset($this->request->post['flickr'])) {
			$this->data['flickr'] = $this->request->post['flickr'];
		} elseif (!empty($product_info)) {
			$this->data['flickr'] = $product_info['flickr'];
		} else {
			$this->data['flickr'] = '';
		}
		
		if (isset($this->request->post['skype'])) {
			$this->data['skype'] = $this->request->post['skype'];
		} elseif (!empty($product_info)) {
			$this->data['skype'] = $product_info['skype'];
		} else {
			$this->data['skype'] = '';
		}
		
		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} elseif (!empty($product_info)) {
			$this->data['email'] = $product_info['email'];
		} else {
			$this->data['email'] = '';
		}
		
		if (isset($this->request->post['copyright'])) {
			$this->data['copyright'] = $this->request->post['copyright'];
		} elseif (!empty($product_info)) {
			$this->data['copyright'] = $product_info['copyright'];
		} else {
			$this->data['copyright'] = '';
		}
		
		if (isset($this->request->post['product_listing_effect'])) {
			$this->data['product_listing_effect'] = $this->request->post['product_listing_effect'];
		} elseif (!empty($product_info)) {
			$this->data['product_listing_effect'] = $product_info['product_listing_effect'];
		} else {
			$this->data['product_listing_effect'] = '';
		}
		
		
		if (isset($this->request->post['megamenu'])) {
			$this->data['megamenu'] = $this->request->post['megamenu'];
		} elseif (!empty($product_info)) {
			$this->data['megamenu'] = $product_info['megamenu'];
		} else {
			$this->data['megamenu'] = '';
		}
		
		if (isset($this->request->post['category_image'])) {
			$this->data['category_image'] = $this->request->post['category_image'];
		} elseif (!empty($product_info)) {
			$this->data['category_image'] = $product_info['category_image'];
		} else {
			$this->data['category_image'] = '';
		}
		
		if (isset($this->request->post['custom_category'])) {
			$this->data['custom_category'] = $this->request->post['custom_category'];
		} elseif (!empty($product_info)) {
			$this->data['custom_category'] = $product_info['custom_category'];
		} else {
			$this->data['custom_category'] = '';
		}
		
		if (isset($this->request->post['footer_background_type'])) {
			$this->data['footer_background_type'] = $this->request->post['footer_background_type'];
		} elseif (!empty($product_info)) {
			$this->data['footer_background_type'] = $product_info['footer_background_type'];
		} else {
			$this->data['footer_background_type'] = '';
		}
		
		if (isset($this->request->post['footer_background'])) {
			$this->data['footer_background'] = $this->request->post['footer_background'];
		} elseif (!empty($product_info)) {
			$this->data['footer_background'] = $product_info['footer_background'];
		} else {
			$this->data['footer_background'] = '';
		}
		
		if($this->data['footer_background_type'] == 2){;
		$this->load->model('tool/image');
		
		if (isset($this->request->post['footer_background']) && file_exists(DIR_IMAGE . $this->request->post['footer_background'])) {
			$this->data['footer_background'] = $this->model_tool_image->resize($this->request->post['footer_background'], 100, 100);
		} elseif (!empty($product_info) && $product_info['footer_background'] && file_exists(DIR_IMAGE . $product_info['footer_background'])) {
			$this->data['footer_background'] = $this->model_tool_image->resize($product_info['footer_background'], 100, 100);
		} else {
			$this->data['footer_background'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		}
		/*if (isset($this->request->post['image'])) {
			$this->data['image'] = $this->request->post['image'];
		} elseif (!empty($product_info)) {
			$this->data['image'] = $product_info['image'];
		} else {
			$this->data['image'] = '';
		}
		
		$this->load->model('tool/image');

		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($product_info) && $product_info['image'] && file_exists(DIR_IMAGE . $product_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($product_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		*/
		$template="custom/vigo_configuration.tpl"; // .tpl location and file
			$this->load->model('custom/vigo_configuration');
			$this->template = ''.$template.'';
			$this->children = array(
				'common/header',
				'common/footer'
			);      
			$this->response->setOutput($this->render());
	
	}
}
?>