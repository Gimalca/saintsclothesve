<?php
class ModelCustomvigoslider extends Model {
    public function addProduct($data) {
		$this->db->query("INSERT INTO vigo_slider SET name='" . $this->db->escape($data['name']). "', desc_1='" . $this->db->escape($data['desc']). "', color='" . $this->db->escape($data['color']). "', link='" . $this->db->escape($data['link']). "', image='" . $this->db->escape($data['image']). "', order_1='" . $this->db->escape($data['order_1']). "', effect='" . $this->db->escape($data['mainhome_slider_effect']). "' ");
		
	}
	
	public function getTotalProducts($data = array()) {
		$sql = "SELECT * FROM vigo_slider";
		
		$query = $this->db->query($sql);

		return $query->row['id'];
	}
	
	public function getProducts() {
		$sql = "SELECT vs.id, vs.name, vs.desc_1, vs.color, vs.link, vs.image, vs.order_1, vs.effect, vc.slider_effect  FROM vigo_slider vs, vigo_configuration vc WHERE vc.slider_effect=vs.effect";
				
		$query = $this->db->query($sql);

		return $query->rows;
	}
	public function getProduct($id) {
		$query = $this->db->query("SELECT * FROM vigo_slider WHERE  id=" . (int)$id );

		return $query->row;
	}
	public function resize($filename, $width, $height, $type = "") {
		if (!file_exists(DIR_IMAGE . $filename) || !is_file(DIR_IMAGE . $filename)) {
			return;
		} 
		
		$info = pathinfo($filename);
		
		$extension = $info['extension'];
		
		$old_image = $filename;
		$new_image = 'cache/' . utf8_substr($filename, 0, utf8_strrpos($filename, '.')) . '-' . $width . 'x' . $height . $type .'.' . $extension;
		
		if (!file_exists(DIR_IMAGE . $new_image) || (filemtime(DIR_IMAGE . $old_image) > filemtime(DIR_IMAGE . $new_image))) {
			$path = '';
			
			$directories = explode('/', dirname(str_replace('../', '', $new_image)));
			
			foreach ($directories as $directory) {
				$path = $path . '/' . $directory;
				
				if (!file_exists(DIR_IMAGE . $path)) {
					@mkdir(DIR_IMAGE . $path, 0777);
				}		
			}

			list($width_orig, $height_orig) = getimagesize(DIR_IMAGE . $old_image);

			if ($width_orig != $width || $height_orig != $height) {
				$image = new Image(DIR_IMAGE . $old_image);
				$image->resize($width, $height, $type);
				$image->save(DIR_IMAGE . $new_image);
			} else {
				copy(DIR_IMAGE . $old_image, DIR_IMAGE . $new_image);
			}
		}
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			return $this->config->get('config_ssl') . 'image/' . $new_image;
		} else {
			return $this->config->get('config_url') . 'image/' . $new_image;
		}	
	}

	
	public function updateslidereffect($data) {
		$this->db->query("UPDATE vigo_configuration SET  slider_effect = '" . $this->db->escape($data['mainhome_slider_effect']) . "' WHERE id = '0' ");
		}
	public function getslidereffect() {
		$query = $this->db->query("SELECT slider_effect FROM vigo_configuration WHERE id= '0'");
		return $query->row;
	}
	
	public function editProduct($id, $data) {
		$this->db->query("UPDATE vigo_slider SET name = '" . $this->db->escape($data['name']) . "', desc_1 = '" . $this->db->escape($data['desc']) . "', color = '" . $this->db->escape($data['color']) . "', link = '" . $this->db->escape($data['link']) . "', image = '" . $this->db->escape($data['image']) . "', order_1 = '" . $this->db->escape($data['order_1']) . "', effect='" . $this->db->escape($data['mainhome_slider_effect']). "' WHERE id = '" . (int)$id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE vigo_slider SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE id = '" . (int)$id . "'");
		}

	}
		
	public function deleteProduct($id) {
		$this->db->query("DELETE FROM vigo_slider WHERE id = '" . (int)$id . "'");
		$this->cache->delete('product');
	}

		
	 
}
?>