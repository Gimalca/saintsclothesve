<?php
class Controllercustomvigocolor extends Controller{ 
    public function index(){
		$this->language->load('custom/vigo_color');
    	$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_update'] = $this->language->get('button_update');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['text_basic_color'] = $this->language->get('text_basic_color');
		$this->data['text_text_color'] = $this->language->get('text_text_color');
		$this->data['text_link_color'] = $this->language->get('text_link_color');
		$this->data['text_link_hover_color'] = $this->language->get('text_link_hover_color');
		$this->data['text_buttons'] = $this->language->get('text_buttons');
		$this->data['text_button_background_color'] = $this->language->get('text_button_background_color');
		$this->data['text_button_border_color'] = $this->language->get('text_button_border_color');
		$this->data['text_button_text_color'] = $this->language->get('text_button_text_color');
		$this->data['text_hover_button_background_color'] = $this->language->get('text_hover_button_background_color');
		$this->data['text_hover_button_border_color'] = $this->language->get('text_hover_button_border_color');
		$this->data['text_hover_button_text_color'] = $this->language->get('text_hover_button_text_color');
		$this->data['text_product_labels'] = $this->language->get('text_product_labels');
		$this->data['text_label_new_background_color'] = $this->language->get('text_label_new_background_color');
		$this->data['text_label_new_border_color'] = $this->language->get('text_label_new_border_color');
		$this->data['text_label_new_text_color'] = $this->language->get('text_label_new_text_color');
		$this->data['text_label_sale_background_color'] = $this->language->get('text_label_sale_background_color');
		$this->data['text_label_sale_border_color'] = $this->language->get('text_label_sale_border_color');
		$this->data['text_label_sale_text_color'] = $this->language->get('text_label_sale_text_color');
		$this->data['heading_title'] = $this->language->get('heading_title');



		$this->load->model('custom/vigo_color');
		
		$this->update();
    }
		public function update() {
			
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('custom/vigo_color');
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			
			
		$this->model_custom_vigo_color->editProduct($this->request->post);
		$this->redirect($this->url->link('custom/vigo_color', 'token=' . $this->session->data['token'], 'SSL'));
			}
			$this->getForm();
		}
		
		protected function getForm() {
			
			
	
		$this->data['action'] = $this->url->link('custom/vigo_color/update', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('custom/vigo_color', 'token=' . $this->session->data['token'], 'SSL');
		
		if ($this->request->server['REQUEST_METHOD'] != 'POST') {
			 $product_info = $this->model_custom_vigo_color->getProductsocial();
		}
		
		if (isset($this->request->post['text_color'])) {
			$this->data['text_color'] = $this->request->post['text_color'];
		} elseif (!empty($product_info)) {
			$this->data['text_color'] = $product_info['text_color'];
		} else {
			$this->data['text_color'] = '';
		}
		
		if (isset($this->request->post['link_color'])) {
			$this->data['link_color'] = $this->request->post['twitter'];
		} elseif (!empty($product_info)) {
			$this->data['link_color'] = $product_info['link_color'];
		} else {
			$this->data['link_color'] = '';
		}
		
		if (isset($this->request->post['link_hover_color'])) {
			$this->data['link_hover_color'] = $this->request->post['link_hover_color'];
		} elseif (!empty($product_info)) {
			$this->data['link_hover_color'] = $product_info['link_hover_color'];
		} else {
			$this->data['link_hover_color'] = '';
		}
		
		if (isset($this->request->post['button_background_color'])) {
			$this->data['button_background_color'] = $this->request->post['button_background_color'];
		} elseif (!empty($product_info)) {
			$this->data['button_background_color'] = $product_info['button_background_color'];
		} else {
			$this->data['button_background_color'] = '';
		}
		
		if (isset($this->request->post['button_border_color'])) {
			$this->data['button_border_color'] = $this->request->post['button_border_color'];
		} elseif (!empty($product_info)) {
			$this->data['button_border_color'] = $product_info['button_border_color'];
		} else {
			$this->data['button_border_color'] = '';
		}
		
		if (isset($this->request->post['button_text_color'])) {
			$this->data['button_text_color'] = $this->request->post['button_text_color'];
		} elseif (!empty($product_info)) {
			$this->data['button_text_color'] = $product_info['button_text_color'];
		} else {
			$this->data['button_text_color'] = '';
		}
		
		if (isset($this->request->post['button_hover_background_color'])) {
			$this->data['button_hover_background_color'] = $this->request->post['button_hover_background_color'];
		} elseif (!empty($product_info)) {
			$this->data['button_hover_background_color'] = $product_info['button_hover_background_color'];
		} else {
			$this->data['button_hover_background_color'] = '';
		}
		
		if (isset($this->request->post['button_hover_border_color'])) {
			$this->data['button_hover_border_color'] = $this->request->post['button_hover_border_color'];
		} elseif (!empty($product_info)) {
			$this->data['button_hover_border_color'] = $product_info['button_hover_border_color'];
		} else {
			$this->data['button_hover_border_color'] = '';
		}
		
		if (isset($this->request->post['button_hover_text_color'])) {
			$this->data['button_hover_text_color'] = $this->request->post['button_hover_text_color'];
		} elseif (!empty($product_info)) {
			$this->data['button_hover_text_color'] = $product_info['button_hover_text_color'];
		} else {
			$this->data['button_hover_text_color'] = '';
		}
		
		if (isset($this->request->post['label_new_background_color'])) {
			$this->data['label_new_background_color'] = $this->request->post['label_new_background_color'];
		} elseif (!empty($product_info)) {
			$this->data['label_new_background_color'] = $product_info['label_new_background_color'];
		} else {
			$this->data['label_new_background_color'] = '';
		}
		
		if (isset($this->request->post['label_new_border_color'])) {
			$this->data['label_new_border_color'] = $this->request->post['label_new_border_color'];
		} elseif (!empty($product_info)) {
			$this->data['label_new_border_color'] = $product_info['label_new_border_color'];
		} else {
			$this->data['label_new_border_color'] = '';
		}
		
		if (isset($this->request->post['label_new_text_color'])) {
			$this->data['label_new_text_color'] = $this->request->post['label_new_text_color'];
		} elseif (!empty($product_info)) {
			$this->data['label_new_text_color'] = $product_info['label_new_text_color'];
		} else {
			$this->data['label_new_text_color'] = '';
		}
		
		if (isset($this->request->post['label_sale_background_color'])) {
			$this->data['label_sale_background_color'] = $this->request->post['label_sale_background_color'];
		} elseif (!empty($product_info)) {
			$this->data['label_sale_background_color'] = $product_info['label_sale_background_color'];
		} else {
			$this->data['label_sale_background_color'] = '';
		}
		
		if (isset($this->request->post['label_sale_border_color'])) {
			$this->data['label_sale_border_color'] = $this->request->post['label_sale_border_color'];
		} elseif (!empty($product_info)) {
			$this->data['label_sale_border_color'] = $product_info['label_sale_border_color'];
		} else {
			$this->data['label_sale_border_color'] = '';
		}
		
		if (isset($this->request->post['label_sale_text_color'])) {
			$this->data['label_sale_text_color'] = $this->request->post['label_sale_text_color'];
		} elseif (!empty($product_info)) {
			$this->data['label_sale_text_color'] = $product_info['label_sale_text_color'];
		} else {
			$this->data['label_sale_text_color'] = '';
		}
		
		
		$template="custom/vigo_color.tpl"; // .tpl location and file
			$this->load->model('custom/vigo_color');
			$this->template = ''.$template.'';
			$this->children = array(
				'common/header',
				'common/footer'
			);      
			$this->response->setOutput($this->render());
	
	}
}
?>