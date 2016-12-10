<?php

class Controllercustomvigobanner extends Controller{ 
    public function index(){
		$this->language->load('custom/vigo_banner');
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['text_title'] = $this->language->get('text_title');
		$this->data['text_text_color'] = $this->language->get('text_text_color');
		$this->data['text_link'] = $this->language->get('text_link');
		$this->data['text_image'] = $this->language->get('text_image');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_slider'] = $this->language->get('text_slider');
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
		$this->data['text_action'] = $this->language->get('text_action');
		$this->data['text_no_banner'] = $this->language->get('text_no_banner');

		$this->load->model('custom/vigo_banner');
		
		$this->getList();
			
	
	}
		public function delete() {
			
			$this->document->setTitle($this->language->get('heading_title'));

			$this->load->model('custom/vigo_banner');
			
			if (isset($this->request->post['selected'])) {
				
			foreach ($this->request->post['selected'] as $id) {
				$this->model_custom_vigo_banner->deleteProduct($id);
				//$this->openbay->deleteProduct($id);
			}

			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->link('custom/vigo_banner', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->getList();
	}
			
		protected function getList() {
			$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('custom/vigo_banner', 'token=' . $this->session->data['token'], 'SSL'),       		
			'separator' => ' :: '
		);

		$this->data['insert'] = $this->url->link('custom/vigo_banner/insert', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['copy'] = $this->url->link('custom/vigo_banner/copy', 'token=' . $this->session->data['token'], 'SSL');	
		$this->data['delete'] = $this->url->link('custom/vigo_banner/delete', 'token=' . $this->session->data['token'], 'SSL');
		
		
		
		
		$this->load->model('custom/vigo_banner');
		$this->load->model('tool/image');
		$product_total = $this->model_custom_vigo_banner->getTotalProducts();

		$results = $this->model_custom_vigo_banner->getProducts();
		
		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('custom/vigo_banner/update', 'token=' . $this->session->data['token'] . '&id=' . $result['id'], 'SSL')
			);
			
			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				
				$image = $this->model_tool_image->resize($result['image'], 40, 40);
			} else {
				
				$image = $this->model_tool_image->resize('no_image.jpg', 40, 40);
			}
			$this->data['products'][] = array(
				'id'        => $result['id'],
				'name'      => $result['name'],
				
				'color'    => $result['color'],
				'link'      => $result['link'],
				'image'     => $image,
				'selected'  => isset($this->request->post['selected']) && in_array($result['id'], $this->request->post['selected']),
				'order_1'    => $result['order_1'],
				'slider'    => $result['slider'],
				'action'    => $action
			);
		  }
		  
		  if (isset($this->request->get['id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			 $product_info = $this->model_custom_vigo_banner->getProduct($this->request->get['id']);
		}
		
		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} elseif (!empty($product_info)) {
			$this->data['name'] = $product_info['name'];
		} else {
			$this->data['name'] = '';
		}
		
		
		
		if (isset($this->request->post['color'])) {
			$this->data['color'] = $this->request->post['color'];
		} elseif (!empty($product_info)) {
			$this->data['color'] = $product_info['color'];
		} else {
			$this->data['color'] = '';
		}
		
		if (isset($this->request->post['link'])) {
			$this->data['link'] = $this->request->post['link'];
		} elseif (!empty($product_info)) {
			$this->data['link'] = $product_info['link'];
		} else {
			$this->data['link'] = '';
		}
		
		if (isset($this->request->post['image'])) {
			$this->data['image'] = $this->request->post['image'];
		} elseif (!empty($product_info)) {
			$this->data['image'] = $product_info['image'];
		} else {
			$this->data['image'] = '';
		}

		//$this->load->model('custom/vigo_banner');
		$this->load->model('tool/image');
		
		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($product_info) && $product_info['image'] && file_exists(DIR_IMAGE . $product_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($product_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		  
		if (isset($this->request->post['order_1'])) {
			$this->data['order_1'] = $this->request->post['order_1'];
		} elseif (!empty($product_info)) {
			$this->data['order_1'] = $product_info['order_1'];
		} else {
			$this->data['order_1'] = '';
		} 
		if (isset($this->request->post['slider'])) {
			$this->data['slider'] = $this->request->post['slider'];
		} elseif (!empty($product_info)) {
			$this->data['slider'] = $product_info['slider'];
		} else {
			$this->data['slider'] = '';
		} 
		 
		  $template="custom/vigo_banner_list.tpl"; // .tpl location and file
			$this->load->model('custom/vigo_banner');
			$this->template = ''.$template.'';
			$this->children = array(
				'common/header',
				'common/footer'
			);      
			$this->response->setOutput($this->render());
		
		}
		
		public function update() {
			$this->document->setTitle($this->language->get('heading_title'));
			$this->load->model('custom/vigo_banner');
			
			if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			$this->model_custom_vigo_banner->editProduct($this->request->get['id'], $this->request->post);

			//$this->openbay->productUpdateListen($this->request->get['id'], $this->request->post);

			//$this->session->data['success'] = $this->language->get('text_success');

			

			$this->redirect($this->url->link('custom/vigo_banner', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getForm();
		}
		
	
		public function insert() {
		

		$this->load->model('custom/vigo_banner');

		if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
			//&& $this->validateForm()
			
			
			if (isset($this->request->post['image'])) {
			$this->data['image'] = $this->request->post['image'];
		} elseif (!empty($product_info)) {
			$this->data['image'] = $product_info['image'];
		} else {
			$this->data['image'] = '';
		}

		//$this->load->model('custom/vigo_banner');
		$this->load->model('tool/image');
		 
		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE .  $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($product_info) && $product_info['image'] && file_exists(DIR_IMAGE . $product_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($product_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		
		$this->model_custom_vigo_banner->addProduct($this->request->post);

		
		$this->redirect($this->url->link('custom/vigo_banner', 'token=' . $this->session->data['token'], 'SSL'));
		}
		$this->getForm();
		}
		
		protected function getForm() {
			
			$this->language->load('custom/vigo_banner');
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['text_title'] = $this->language->get('text_title');
		$this->data['text_text_color'] = $this->language->get('text_text_color');
		$this->data['text_link'] = $this->language->get('text_link');
		$this->data['text_image'] = $this->language->get('text_image');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_slider'] = $this->language->get('text_slider');
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
		$this->data['text_action'] = $this->language->get('text_action');
		$this->data['text_no_banner'] = $this->language->get('text_no_banner');
			if (!isset($this->request->get['id'])) {
			$this->data['action'] = $this->url->link('custom/vigo_banner/insert', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$this->data['action'] = $this->url->link('custom/vigo_banner/update', 'token=' . $this->session->data['token'] . '&id=' . $this->request->get['id'], 'SSL');
		}
		$this->data['cancel'] = $this->url->link('custom/vigo_banner', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->get['id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			 $product_info = $this->model_custom_vigo_banner->getProduct($this->request->get['id']);
		}
		
		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} elseif (!empty($product_info)) {
			$this->data['name'] = $product_info['name'];
		} else {
			$this->data['name'] = '';
		}
		
		
		if (isset($this->request->post['color'])) {
			$this->data['color'] = $this->request->post['color'];
		} elseif (!empty($product_info)) {
			$this->data['color'] = $product_info['color'];
		} else {
			$this->data['color'] = '';
		}
		
		if (isset($this->request->post['link'])) {
			$this->data['link'] = $this->request->post['link'];
		} elseif (!empty($product_info)) {
			$this->data['link'] = $product_info['link'];
		} else {
			$this->data['link'] = '';
		}
		
		if (isset($this->request->post['image'])) {
			$this->data['image'] = $this->request->post['image'];
		} elseif (!empty($product_info)) {
			$this->data['image'] = $product_info['image'];
		} else {
			$this->data['image'] = '';
		}

		//$this->load->model('custom/vigo_banner');
		$this->load->model('tool/image');

		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($product_info) && $product_info['image'] && file_exists(DIR_IMAGE . $product_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($product_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}
		
		if (isset($this->request->post['order_1'])) {
			$this->data['order_1'] = $this->request->post['order_1'];
		} elseif (!empty($product_info)) {
			$this->data['order_1'] = $product_info['order_1'];
		} else {
			$this->data['order_1'] = '';
		}
		if (isset($this->request->post['slider'])) {
			$this->data['slider'] = $this->request->post['slider'];
		} elseif (!empty($product_info)) {
			$this->data['slider'] = $product_info['slider'];
		} else {
			$this->data['slider'] = '';
		}
			
			$template="custom/vigo_banner.tpl"; // .tpl location and file
			$this->load->model('custom/vigo_banner');
			$this->template = ''.$template.'';
			$this->children = array(
				'common/header',
				'common/footer'
			);      
			$this->response->setOutput($this->render());
			
		}
		
        
}
		
?>