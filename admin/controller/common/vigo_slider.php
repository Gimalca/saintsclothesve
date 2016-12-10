<?

class Controllercommonvigoslider extends Controller{ 
    public function index(){
                // VARS
                $template="custom/vigo_slider.tpl"; // .tpl location and file
        //$this->load->model('custom/hello');
        $this->template = ''.$template.'';
        $this->children = array(
            'common/header',
            'common/footer'
        );      
        $this->response->setOutput($this->render());
    }
}
?>