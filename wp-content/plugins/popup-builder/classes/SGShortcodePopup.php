<?php
require_once(dirname(__FILE__).'/SGPopup.php');
class SGShortcodePopup extends SGPopup {
	private $shortcode;

	public function setShortcode($shortcode) {
		$this->shortcode = $shortcode;
	}
	public function getShortcode() {
		return $this->shortcode;
	}
	public static function create($data, $obj = null) {
		$obj = new self();

		$obj->setShortcode($data['shortcode']);

		parent::create($data, $obj);
	}
	public function save($data = array()) {

		$editMode = $this->getId()?true:false;

		$res = parent::save($data);

		if ($res===false) return false;
		global $wpdb;
		if ($editMode) {

			$sqlUp = $wpdb->prepare("UPDATE ". $wpdb->prefix ."sg_shortCode_popup SET url=%s WHERE id=%d",$this->getShortcode(),$this->getId());
			$res = $wpdb->query($sqlUp);
		}
		else {
			$sql = $wpdb->prepare( "INSERT INTO ". $wpdb->prefix ."sg_shortCode_popup (id, url) VALUES (%d,%s)",$this->getId(),$this->getShortcode());
			$res = $wpdb->query($sql);
		}
		return $res;
	}
	protected function setCustomOptions($id) {
		global $wpdb;

		$st = $wpdb->prepare("SELECT * FROM ". $wpdb->prefix ."sg_shortCode_popup WHERE id = %d",$id);
		$arr = $wpdb->get_row($st,ARRAY_A);

		$this->setShortcode($arr['url']);
	}
	protected function getExtraRenderOptions() {
		$content = do_shortcode($this->getShortcode());
		
		/*Add this part of code right into the page to escape conflicts with shortcodes init functionlity*/
		$currentPopupContent = "<div id=\"sg-popup-content-".$this->getId()."\" style=\"display: none;\">&nbsp;<div id=\"sgpb-all-content-".$this->getId()."\">".$content."</div></div>";
		/*For line brake error*/
		$currentPopupContent =  trim(preg_replace('/\s+/', ' ', $currentPopupContent));
		$currentPopupContent = preg_replace('/<\/script>/', '<\/script>', addslashes($currentPopupContent));
		/*Append to body for shortcode break to new line*/
		echo "<script type=\"text/javascript\">
			jQuery(document).ready(function() {
				jQuery('body').append(jQuery('".$currentPopupContent."'));
			});
		</script>";

		return  array('shortcode'=> ' ');
	}

	public  function render() {
		return parent::render();
	}
}