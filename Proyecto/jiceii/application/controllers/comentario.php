<?php 
class Comentario extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('ComentarioModel');
    }

    public function index()
    {
        $data['titulo'] = 'Comentario';
        $data['comentario'] = $this->ComentarioModel->mostrar(); //la variable comentario se pasa al foreach de el archivo mostrar
        $this->load->view('templateBack/header', $data);
        $this->load->view( 'welcome/mostrarComent');//hace referencia al archivo que esta dentro de la carpeta comentario
        $this->load->view('templateBack/footer');
    }

    public function agregar()
    {
        $this->load->view('comenta');
    }

    public function guardar()
    {
        $this->form_validation->set_rules('correo', 'correo', 'required'); //validacion del campo, alias del campo y la validacion(en este caso required)
        $this->form_validation->set_rules('mensaje', 'mensaje', 'required');
        $this->form_validation->set_rules( 'status', 'status', 'required');
        if ($this->form_validation->run() == true) {
            try {
                $this->db->trans_begin();
                $this->ComentarioModel->setCorreo($this->input->POST('correo')); //hace referencia al nombre del campo
                $this->ComentarioModel->setMensaje($this->input->POST('mensaje'));
                $this->ComentarioModel->setStatus($this->input->POST('status'));
                $this->ComentarioModel->guardar();
                if ($this->db->trans_status() === false) {
                    $this->db->trans_rollback();
                } else {
                    $this->db->trans_commit();
                }
                redirect('welcome/comenta');
            } catch (PDOExcepcion $e) {
                die("+_+ Ocurrio un error +_+" . $e);
            }
        } else {
            $this->load->view('welcome/comenta');//hace referencia al archivo que esta dentro de la carpeta comentario
        }
    }

    public function modificar( $idComentario)
    {
        $this->ComentarioModel->setIdComentario( $idComentario);
        $data['titulo'] = 'Editar';
        $data['comentario'] = $this->ComentarioModel->listarModificar();
        $this->load->view('templateBack/header', $data);
        $this->load->view('comentario/modificar');
        $this->load->view('templateBack/footer');
    }

    public function actualizar()
    {
        //try {
        // $this->db->trans_begin();

        $this->ComentarioModel->setCorreo($this->input->POST('correo'));
        $this->ComentarioModel->setMensaje($this->input->POST('mensaje'));
        $this->ComentarioModel->setStatus($this->input->POST('status'));
        $this->ComentarioModel->setRevisado($this->input->POST('revisado'));
        $this->ComentarioModel->actualizarDatos();

              //  if ($this->db->trans_status() === FALSE) {
                //    $this->db->trans_rollback();
               // } else {
               //     $this->db->trans_commit();
              //  }
        $this->load->view('welcome/mostrarComent');
           // } catch (PDOExcepcion $e) {
            //    die("+_+ Ocurrio un error +_+" . $e);
           // }
    }

    public function eliminar($idComentario)
    {
        try {
            $this->db->trans_begin();
            $this->ComentarioModel->setIdComentario($idComentario);
            $this->ComentarioModel->eliminar();//hace referencial al metodo que se creo en el modelo
            if ($this->db->trans_status() === false) {
                $this->db->trans_rollback();
            } else {
                $this->db->trans_commit();
            }
            redirect('welcome/mostrarComent');
        } catch (PDOExcepcion $e) {
            die("+_+ Ocurrio un error +_+" . $e);
        }
    }
}