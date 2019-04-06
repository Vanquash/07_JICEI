<?php 
class Producto extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('ProductoModel');
        $this->load->model('UsuarioModel');
    }

    public function index()
    {
        $data['titulo'] = 'Producto';
        $data['producto'] = $this->ProductoModel->mostrar(); //la variable producto se pasa al foreach de el archivo mostrar
        $this->load->view('templateBack/header', $data);
        $this->load->view('welcome/mostrarProduct');//hace referencia al archivo que esta dentro de la carpeta producto
        $this->load->view('templateBack/footer');
    }

    public function agregar()
    {
        $data['titulo'] = 'Agregar';
        $data['producto'] = $this->ProductoModel->mostrar();
        $data['usuario'] = $this->UsuarioModel->mostrar();
        $this->load->view('templateBack/header', $data);
        $this->load->view('producto/agregar');
        $this->load->view('templateBack/footer');
    }

    public function guardar()
    {

        $this->form_validation->set_rules('nombreProducto', 'nombreProducto', 'required'); //validacion del campo, alias del campo y la validacion(en este caso required)
        $this->form_validation->set_rules('cantidadProducto', 'cantidadProducto', 'required');
        $this->form_validation->set_rules('fecha', 'fecha', 'required');
        $this->form_validation->set_rules('nombreAdministrador', 'nombreAdministrador', 'required');
        if ($this->form_validation->run() == true) {
            try {
                $this->db->trans_begin();
                $this->ProductoModel->setNombreProducto($this->input->POST('nombreProducto')); //hace referencia al nombre del campo
                $this->ProductoModel->setCantidadProducto($this->input->POST('cantidadProducto'));
                $this->ProductoModel->setFecha($this->input->POST('fecha'));
                $this->ProductoModel->setNombreAdministrador($this->input->POST('nombreAdministrador'));
                $this->ProductoModel->guardar();
                if ($this->db->trans_status() === false) {
                    $this->db->trans_rollback();
                } else {
                    $this->db->trans_commit();
                }
                redirect('welcome/mostrarProduct');
            } catch (PDOExcepcion $e) {
                die("+_+ Ocurrio un error +_+" . $e);
            }
        } else {
            $this->load->view('producto/agregar');//hace referencia al archivo que esta dentro de la carpeta producto
        }

    }

    public function modificar($idProducto)
    {
        $this->ProductoModel->setIdProducto($idProducto);
        $data['titulo'] = 'Editar';
        $data['producto'] = $this->ProductoModel->listarModificar();
        $this->load->view('templateBack/header', $data);
        $this->load->view('producto/modificar');
        $this->load->view('templateBack/footer');
    }

    public function actualizar()
    {
        //try {
        // $this->db->trans_begin();
        $this->ProductoModel->setNombreProducto($this->input->POST('nombreProducto'));
        $this->ProductoModel->setCantidadProducto($this->input->POST('cantidadProducto'));
        $this->ProductoModel->setFecha($this->input->POST('fecha'));
        $this->ProductoModel->setNombreAdministrador($this->input->POST('nombreAdministrador'));
        $this->ProductoModel->actualizarDatos();

              //  if ($this->db->trans_status() === FALSE) {
                //    $this->db->trans_rollback();
               // } else {
               //     $this->db->trans_commit();
              //  }
        redirect('welcome/mostrarProduct');
           // } catch (PDOExcepcion $e) {
            //    die("+_+ Ocurrio un error +_+" . $e);
           // }
    }

    public function eliminar($idProducto)
    {
        try {
            $this->db->trans_begin();
            $this->ProductoModel->setIdProducto($idProducto);
            $this->ProductoModel->eliminar();//hace referencial al metodo que se creo en el modelo
            if ($this->db->trans_status() === false) {
                $this->db->trans_rollback();
            } else {
                $this->db->trans_commit();
            }
            redirect('welcome/mostrarProduct');
        } catch (PDOExcepcion $e) {
            die("+_+ Ocurrio un error +_+" . $e);
        }
    }
}