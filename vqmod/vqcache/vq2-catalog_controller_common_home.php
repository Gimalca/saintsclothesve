<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

$this->data['text_home_latest'] = $this->language->get('text_home_latest');
						  $this->data['text_home_feature'] = $this->language->get('text_home_feature');
						  $this->data['text_home_special'] = $this->language->get('text_home_special');
						  $this->data['text_home_about_vigo_shop'] = $this->language->get('text_home_about_vigo_shop');
						  $this->data['text_home_our_history'] = $this->language->get('text_home_our_history');
						  $this->data['text_home_read_more'] = $this->language->get('text_home_read_more');
						  $this->data['text_home_our_team'] = $this->language->get('text_home_our_team');
						  $this->data['text_from_the_staff'] = $this->language->get('text_from_the_staff');
						  $this->data['text_read_more'] = $this->language->get('text_read_more');
						  $this->data['text_home_newslatter'] = $this->language->get('text_home_newslatter');
						  $this->data['text_home_sign_up_desc'] = $this->language->get('text_home_sign_up_desc');
						  $this->data['text_home_sign_up'] = $this->language->get('text_home_sign_up');
						  $this->data['text_home_enter_your_email_address'] = $this->language->get('text_home_enter_your_email_address');
				
		$sql = "SELECT slider_effect FROM vigo_configuration";
		$query = $this->db->query($sql);
		$slidereffects = $query->row;
		$this->data['slidereffect'] = $slidereffects['slider_effect'];
						  
			
			
		$this->data['heading_title'] = $this->config->get('config_title');
$this->getForm();}
		
public function getForm() {
		
	
		$this->load->model('tool/image');
		$sql = "SELECT vb.id, vb.name, vb.color, vb.link, vb.image, vb.order_1, vb.slider, vc.slider_effect FROM vigo_banner vb, vigo_configuration vc WHERE vc.slider_effect = vb.slider ORDER BY order_1";
		$query = $this->db->query($sql);
		$results = $query->rows;
		$total_banner = count($results);
		
		foreach ($results as $result) {
			
			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				
				$image = $this->model_tool_image->resize($result['image'], 370, 400);
				$image1 = $this->model_tool_image->resize($result['image'], 370, 185);
				$image_banner_2 = $this->model_tool_image->resize($result['image'], 370, 200);
				$image_banner_4_1 = $this->model_tool_image->resize($result['image'], 370, 400);
				$image_banner_4_2 = $this->model_tool_image->resize($result['image'], 370, 185);
				$image_banner_4_3 = $this->model_tool_image->resize($result['image'], 370, 200);
				$image_banner_4_4 = $this->model_tool_image->resize($result['image'], 770, 200);
			} else {
				
				$image = $this->model_tool_image->resize('no_image.jpg', 370, 400);
				$image1 = $this->model_tool_image->resize('no_image.jpg', 370, 185);
				$image_banner_2 = $this->model_tool_image->resize('no_image.jpg', 370, 200);
				$image_banner_4_1 = $this->model_tool_image->resize('no_image.jpg', 370, 400);
				$image_banner_4_2 = $this->model_tool_image->resize('no_image.jpg', 370, 185);
				$image_banner_4_3 = $this->model_tool_image->resize($result['image'], 370, 200);
				$image_banner_4_4 = $this->model_tool_image->resize($result['image'], 770, 200);
			}
			$this->data['products'][] = array(
				'id'        => $result['id'],
				'name'      => $result['name'],
				'color'     => $result['color'],
				'link'      => $result['link'],
				'image'     => $image,
				'image1'     => $image1,
				'image_banner_2' => $image_banner_2,
				'image_banner_4_1' => $image_banner_4_1,
				'image_banner_4_2' => $image_banner_4_2,
				'image_banner_4_3' => $image_banner_4_3,
				'image_banner_4_4' => $image_banner_4_4,
				'order_1'      => $result['order_1'],
			);
		}
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
'common/column_center',
			
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>