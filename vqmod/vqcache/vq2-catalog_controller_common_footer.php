<?php  
class ControllerCommonFooter extends Controller {
/*quixk contact end*/
			public function success() {
		$this->language->load('information/contact');

		
		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/contact'),
			'separator' => $this->language->get('text_separator')
		);

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_message'] = $this->language->get('text_message');

		$this->data['button_continue'] = $this->language->get('button_continue');

		$this->data['continue'] = $this->url->link('common/home');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success.tpl';
		} else {
			$this->template = 'default/template/common/success.tpl';
		}

		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);

		$this->response->setOutput($this->render());
	}
	
	protected function validate() {
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
			$this->error['email'] = $this->language->get('error_email');
		}

		if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
			$this->error['enquiry'] = $this->language->get('error_enquiry');
		}

		if (empty($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
			$this->error['captcha'] = $this->language->get('error_captcha');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}  	  
	}
	/*quixk contact end*/	
			
	protected function index() {
		$this->language->load('common/footer');
$this->data['text_reward'] = $this->language->get('text_reward');
						  $this->data['text_transaction'] = $this->language->get('text_transaction');
						  $this->data['text_contactinfo'] = $this->language->get('text_contactinfo');
						  $this->data['text_downloads'] = $this->language->get('text_downloads');
						  
			
$this->data['text_footer_most_favorite'] = $this->language->get('text_footer_most_favorite');
						  $this->data['text_footer_quick_contact'] = $this->language->get('text_footer_quick_contact');
						  $this->data['text_footer_enter_your_name'] = $this->language->get('text_footer_enter_your_name');
						  $this->data['text_footer_enter_your_email'] = $this->language->get('text_footer_enter_your_email');
						  $this->data['text_footer_enter_your_telephone'] = $this->language->get('text_footer_enter_your_telephone');
						  $this->data['text_footer_enter_your_message'] = $this->language->get('text_footer_enter_your_message');
						  $this->data['text_footer_send_message'] = $this->language->get('text_footer_send_message');
						  $this->data['text_footer_facebook'] = $this->language->get('text_footer_facebook');
						  $this->data['text_footer_twitter'] = $this->language->get('text_footer_twitter');
						  $this->data['text_footer_rss'] = $this->language->get('text_footer_rss');
						  $this->data['text_footer_delicious'] = $this->language->get('text_footer_delicious');
						  $this->data['text_footer_linkedin'] = $this->language->get('text_footer_linkedin');
						  $this->data['text_footer_flickr'] = $this->language->get('text_footer_flickr');
						  $this->data['text_footer_skype'] = $this->language->get('text_footer_skype');
						  $this->data['text_footer_mail_to'] = $this->language->get('text_footer_mail_to');
						  
						  
			

			
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');

		$this->data['products'] = array();
		
		$data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => 5,
		);
		
		$results = $this->model_catalog_product->getProducts($data);

		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], 1000, 1194);
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
			$this->load->model('tool/image'); 
			$this->load->model('catalog/product');
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
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				'add'        => $addtional_image,
			);
		}
			
		
		$this->language->load('module/fblikebox');
		$this->data['heading_title'] = $this->language->get('heading_title');		
		$this->data['fblikeboxcode'] = $this->config->get('fblikebox_code');		
		$this->data['fblikeboxconwid'] = $this->config->get('fblikebox_content_width');
		$this->data['fblikeboxconhei'] = $this->config->get('fblikebox_content_height');
		$this->data['fblikeboxconcon'] = $this->config->get('fblikebox_content_connections');
		$this->data['fblikeboxcolwid'] = $this->config->get('fblikebox_column_width');
		$this->data['fblikeboxcolhei'] = $this->config->get('fblikebox_column_height');
		$this->data['fblikeboxcolcon'] = $this->config->get('fblikebox_column_connections');
		
		if ($this->data['fblikeboxconwid'] < 100) {
			$this->data['fblikeboxconwid'] = 575;
		}
		
		if ($this->data['fblikeboxconhei'] < 100) {
			$this->data['fblikeboxconhei'] = 260;
		}
		
		if ($this->data['fblikeboxconcon'] < 1) {
			$this->data['fblikeboxconcon'] = 12;
		}
		
		if ($this->data['fblikeboxcolwid'] < 100) {
			$this->data['fblikeboxcolwid'] = 180;
		}
		
		if ($this->data['fblikeboxcolhei'] < 100) {
			$this->data['fblikeboxcolhei'] = 420;
		}
		
		if ($this->data['fblikeboxcolcon'] < 1) {
			$this->data['fblikeboxcolcon'] = 20;
		}
		
		/*quick contact start*/
		$this->language->load('information/contact');

		

		if (($this->request->server['REQUEST_METHOD'] == 'POST') ) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->config->get('config_email'));
			//$mail->setFrom($this->request->post['email']);
			//$mail->setSender($this->request->post['name']);
			//$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['name']), ENT_QUOTES, 'UTF-8'));
			//$mail->setText(strip_tags(html_entity_decode($this->request->post['enquiry'], ENT_QUOTES, 'UTF-8')));
			//$mail->send();

			//$this->redirect($this->url->link('information/contact/success'));
		}
		if (isset($this->error['name'])) {
			$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}

		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}		

		if (isset($this->error['enquiry'])) {
			$this->data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$this->data['error_enquiry'] = '';
		}	
		
		$this->data['button_continue'] = $this->language->get('button_continue');

		$this->data['action'] = $this->url->link('information/contact');
		$this->data['store'] = $this->config->get('config_name');
		$this->data['address'] = nl2br($this->config->get('config_address'));
		$this->data['telephone'] = $this->config->get('config_telephone');
		$this->data['fax'] = $this->config->get('config_fax');

		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} else {
			$this->data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['enquiry'])) {
			$this->data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$this->data['enquiry'] = '';
		}
		/*quick contact end*/
		
		

		$this->data['text_information'] = $this->language->get('text_information');
		$this->data['text_service'] = $this->language->get('text_service');
		$this->data['text_extra'] = $this->language->get('text_extra');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_return'] = $this->language->get('text_return');
		$this->data['text_sitemap'] = $this->language->get('text_sitemap');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_voucher'] = $this->language->get('text_voucher');
		$this->data['text_affiliate'] = $this->language->get('text_affiliate');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
$this->data['address'] = nl2br($this->config->get('config_address'));

		$this->load->model('catalog/information');

		$this->data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$this->data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$this->data['contact'] = $this->url->link('information/contact');
		$this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
		$this->data['sitemap'] = $this->url->link('information/sitemap');
		$this->data['manufacturer'] = $this->url->link('product/manufacturer');
		$this->data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$this->data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$this->data['special'] = $this->url->link('product/special');
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
$this->data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
			$this->data['downloads'] = $this->url->link('account/download', '', 'SSL');
		if ($this->config->get('reward_status')) {
			$this->data['reward'] = $this->url->link('account/reward', '', 'SSL');
		} else {
			$this->data['reward'] = '';
		}
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');		

		$this->data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];	
			} else {
				$ip = ''; 
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];	
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];	
			} else {
				$referer = '';
			}

			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}		

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/footer.tpl';
		} else {
			$this->template = 'default/template/common/footer.tpl';
}
		$this->data['action'] = $this->url->link('common/footer');
		
		$this->getForm();
		}

public function getForm() {
		
		$query = $this->db->query("SELECT * FROM vigo_configuration WHERE  id= '0'");

		$results = $query->row;
		
		$this->data['id']     	= $results['id'];
		$this->data['facebook'] = $results['facebook'];
		$this->data['twitter']  = $results['twitter'];
		$this->data['rss']      = $results['rss'];
		$this->data['delicious']= $results['delicious'];
		$this->data['linkedin'] = $results['linkedin'];
		$this->data['flickr']   = $results['flickr'];
		$this->data['skype']    = $results['skype'];
		$this->data['email']    = $results['email'];
		$this->data['copyright']= $results['copyright'];
		$this->render();
	}
}
?>