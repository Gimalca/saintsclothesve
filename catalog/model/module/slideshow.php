<?php
//$slidereffect = $_GET['slider'];
class ModelModuleSlideshow extends Model {
	public function getProducts() {
		//$slidereffect = $_GET['slider'];
		//$sql = "SELECT * FROM vigo_slider ORDER BY order_1";
		$sql = "SELECT vs.id, vs.name, vs.desc_1, vs.color, vs.link, vs.image, vs.order_1, vs.effect, vc.slider_effect  FROM vigo_slider vs, vigo_configuration vc WHERE vc.slider_effect =vs.effect ORDER BY order_1";
				
		$query = $this->db->query($sql);

		return $query->rows;
	}
}
?>
<!--vc.slider_effect-->