<?php
class ModelCustomvigoconfiguration extends Model {
	public function editProduct($data) {
		$this->db->query("UPDATE vigo_configuration SET facebook = '" . $this->db->escape($data['facebook']) . "', twitter = '" . $this->db->escape($data['twitter']) . "', rss = '" . $this->db->escape($data['rss']) . "', delicious = '" . $this->db->escape($data['delicious']) . "', linkedin = '" . $this->db->escape($data['linkedin']) . "', flickr = '" . $this->db->escape($data['flickr']) . "', skype = '" . $this->db->escape($data['skype']) . "', email = '" . $this->db->escape($data['email']) . "', copyright = '" . $this->db->escape($data['copyright']) . "', product_listing_effect='" . $this->db->escape($data['product_listing_effect']). "', megamenu='" . $this->db->escape($data['Megamenu']). "', category_image='" . $this->db->escape($data['category_image']). "', custom_category='" . $this->db->escape($data['custom_category']). "', footer_background_type='" . $this->db->escape($data['footer_background_type']). "', footer_background='" . $this->db->escape($data['footer_background']). "' WHERE id = '0' ");
		
	}
	
	
	public function getProductsocial() {
		$query = $this->db->query("SELECT * FROM vigo_configuration WHERE id= '0'");

		return $query->row;
	}
	
	
}
?>