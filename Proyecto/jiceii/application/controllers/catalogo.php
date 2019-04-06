<?php 
class Catalogo extends CI_Controller
{

    function __construct()    
    {
        parent::__construct();
        $this->load->model('CatalogoModel');
    }

    public function index()
    {
        $data['titulo'] = 'Catalogo';
        $data['catalogo'] = $this->CatalogoModel->mostrar(); //la variable catalogo se pasa al foreach de el archivo mostrar
        $this->load->view('templateBack/header', $data);
        $this->load->view( 'welcome/mostrarCatal');
        $this->load->view('templateBack/footer');
    }

    public function agregar()
    {
        $data['titulo'] = 'Agregar';
        $this->load->view('templateBack/header', $data);
        $this->load->view('catalogo/agregar');
        $this->load->view('templateBack/footer');
    }

    public function guardar()
    {

        $this->form_validation->set_rules('producto', 'producto', 'required');//validacion del campo, alias del campo y la validacion(en este caso required)
        $this->form_validation->set_rules('imagen', 'imagen', 'required');
        $this->form_validation->set_rules('precioProducto', 'precioProducto', 'required');
        $this->form_validation->set_rules('descripcion', 'descripcion', 'required');
        if ($this->form_validation->run() == true) {
            try {
                $this->db->trans_begin();
                $this->CatalogoModel->setProducto($this->input->POST('producto'));//hace referencia al nombre del campo
                $this->CatalogoModel->setImagen($this->input->POST('imagen'));
                $this->CatalogoModel->setPrecioProducto($this->input->POST('precioProducto'));
                $this->CatalogoModel->setDescripcion($this->input->POST('descripcion'));
                $this->CatalogoModel->guardar();
                if ($this->db->trans_status() === false) {
                    $this->db->trans_rollback();
                } else {
                    $this->db->trans_commit();
                }
                redirect('welcome/mostrarCatal');
            } catch (PDOExcepcion $e) {
                die("+_+ Ocurrio un error +_+" . $e);
            }
        } else {
            $this->load->view('catalogo/agregar');//hace referencia al archivo que esta dentro de la carpeta catalogo
        }

    }

    public function modificar($idCatalogo)
    {
        $this->CatalogoModel->setIdCatalogo($idCatalogo);
        $data['titulo'] = 'Editar';
        $data['catalogo'] = $this->CatalogoModel->listarModificar();
        $this->load->view('templateBack/header', $data);
        $this->load->view('catalogo/modificar');
        $this->load->view('templateBack/footer');
    }

    public function actualizar()
    {
            //try {
               // $this->db->trans_begin();
                    $this->CatalogoModel->setProducto($this->input->POST('producto'));//hace referencia al nombre del campo
                    $this->CatalogoModel->setImagen($this->input->POST('imagen'));
                    $this->CatalogoModel->setPrecioProducto($this->input->POST('precioProducto'));
                    $this->CatalogoModel->setDescripcion($this->input->POST('descripcion'));
                    $this->CatalogoModel->actualizarDatos();
        //  if ($this->db->trans_status() === FALSE) {
        //    $this->db->trans_rollback();
        // } else {
        //     $this->db->trans_commit();
        //  }
        //redirect('catalogo/index');
        // } catch (PDOExcepcion $e) {
        //    die("+_+ Ocurrio un error +_+" . $e);
        // }
        $this->load->view('welcome/mostrarCatal');
    }

    public function eliminar($idCatalogo)
    {
        try {
            $this->db->trans_begin();
            $this->CatalogoModel->setIdCatalogo( $idCatalogo);
            $this->CatalogoModel->eliminar(); //hace referencial al metodo que se creo en el modelo
            if ($this->db->trans_status() === false) {
                $this->db->trans_rollback();
            } else {
                $this->db->trans_commit();
            }
            redirect('welcome/mostrarCatal');
        } catch (PDOExcepcion $e) {
            die("+_+ Ocurrio un error +_+" . $e);
        }
    }
}