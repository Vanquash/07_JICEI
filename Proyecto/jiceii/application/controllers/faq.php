<?php 
class Faq extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('FaqModel');
    }

    public function index()
    {
        $data['titulo'] = 'FaQ';
        $data['faq'] = $this->FaqModel->mostrar(); //la variable faq se pasa al foreach de el archivo mostrar
        $this->load->view('templateBack/header', $data);
        $this->load->view('faq/mostrar');//hace referencia al archivo que esta dentro de la carpeta Faq
        $this->load->view('templateBack/footer');
    }

    public function agregar()
    {
        $data['titulo'] = 'Agregar';
        $this->load->view('templateBack/header', $data);
        $this->load->view('faq/agregar');
        $this->load->view('templateBack/footer');
    }

    public function guardar()
    {

        $this->form_validation->set_rules('correo', 'correo', 'required');//validacion del campo, alias del campo y la validacion(en este caso required)
        $this->form_validation->set_rules('mensaje', 'mensaje', 'required');
        $this->form_validation->set_rules('status', 'status', 'required');
        $this->form_validation->set_rules('revisado', 'revisado', 'required');
        if ($this->form_validation->run() == true) {
            try {
                $this->db->trans_begin();
                $this->FaqModel->setCorreo($this->input->POST('correo', 'correo', 'required'));//validacion del campo, alias del campo y la validacion(en este caso required)
                $this->FaqModel->setMensaje($this->input->POST('mensaje', 'mensaje', 'required'));
                $this->FaqModel->setStatus($this->input->POST('status', 'status', 'required'));
                $this->FaqModel->setRevisado($this->input->POST('revisado', 'revisado', 'required'));
                $this->FaqModel->guardar();
                if ($this->db->trans_status() === false) {
                    $this->db->trans_rollback();
                } else {
                    $this->db->trans_commit();
                }
                redirect('welcome/mostrarFaqs');
            } catch (PDOExcepcion $e) {
                die("+_+ Ocurrio un error +_+" . $e);
            }
        } else {
            $this->load->view('faq/agregar');//hace referencia al archivo que esta dentro de la carpeta Faq
        }

    }

    public function modificar($idPregunta)
    {
        $this->CategoriaModel->setIdPregunta($idPregunta);
        $data['titulo'] = 'Editar';
        $data['categoria'] = $this->CategoriaModel->listarModificar();
        $this->load->view('templateBack/header', $data);
        $this->load->view('categoria/modificar');
        $this->load->view('templateBack/footer');
    }

    public function actualizar()
    {
            //try {
               // $this->db->trans_begin();

        $this->FaqModel->setNombreCategoria($this->input->POST('nombreCategoria'));
        $this->FaqModel->actualizarDatos();

              //  if ($this->db->trans_status() === FALSE) {
                //    $this->db->trans_rollback();
               // } else {
               //     $this->db->trans_commit();
              //  }
        redirect('welcome/mostrarFaqs');
           // } catch (PDOExcepcion $e) {
            //    die("+_+ Ocurrio un error +_+" . $e);
           // }
    }

    public function eliminar($idPregunta)
    {
        try {
            $this->db->trans_begin();
            $this->FaqModel->setIdPregunta($idPregunta);
            $this->FaqModel->eliminar();//hace referencial al metodo que se creo en el modelo
            if ($this->db->trans_status() === false) {
                $this->db->trans_rollback();
            } else {
                $this->db->trans_commit();
            }
            redirect('welcome/mostrarFaqs');
        } catch (PDOExcepcion $e) {
            die("+_+ Ocurrio un error +_+" . $e);
        }
    }
}