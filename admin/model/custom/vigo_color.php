<?php
class ModelCustomvigocolor extends Model {
	public function editProduct($data) {
		$this->db->query("UPDATE vigo_color SET text_color = '" . $this->db->escape($data['text_color']) . "', 	link_color = '" . $this->db->escape($data['link_color']) . "', link_hover_color = '" . $this->db->escape($data['link_hover_color']) . "', button_background_color = '" . $this->db->escape($data['button_background_color']) . "', button_border_color = '" . $this->db->escape($data['button_border_color']) . "', button_text_color = '" . $this->db->escape($data['button_text_color']) . "', button_hover_background_color = '" . $this->db->escape($data['button_hover_background_color']) . "', button_hover_border_color = '" . $this->db->escape($data['button_hover_border_color']) . "', button_hover_text_color = '" . $this->db->escape($data['button_hover_text_color']) . "', label_new_background_color = '" . $this->db->escape($data['label_new_background_color']) . "', label_new_border_color = '" . $this->db->escape($data['label_new_border_color']) . "', label_new_text_color = '" . $this->db->escape($data['label_new_text_color']) . "', label_sale_background_color = '" . $this->db->escape($data['label_sale_background_color']) . "', 		label_sale_border_color = '" . $this->db->escape($data['label_sale_border_color']) . "', label_sale_text_color = '" . $this->db->escape($data['label_sale_text_color']) . "' WHERE id = '0' ");
	}
	
	
	public function getProductsocial() {
		$query = $this->db->query("SELECT * FROM vigo_color WHERE id= '0'");
		return $query->row;
	}
}
?>