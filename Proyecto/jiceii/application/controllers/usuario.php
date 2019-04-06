<?php 
class Usuario extends CI_Controller{
    function __construct()    {
        parent::__construct();
        $this->load->model('UsuarioModel');
    }

    public function index()
    {
        $data['titulo'] = 'Usuario';
        $data['usuario'] = $this->UsuarioModel->mostrar(); //la variable usuario se pasa al foreach de el archivo mostrar
        $this->load->view('templateBack/header', $data);
        $this->load->view('usuarios/mostrar');//hace referencia al archivo que esta dentro de la carpeta usuarios
        $this->load->view('templateBack/footer');
    }

    public function agregar()
    {
        $data['titulo'] = 'Agregar';
        $this->load->view('templateBack/header', $data);
        $this->load->view('usuarios/agregar');
        $this->load->view('templateBack/footer');
    }

    public function guardar()
    {
        $this->form_validation->set_rules('nombreUsuario', 'nombreUsuario', 'required');//validacion del campo, alias del campo y la validacion(en este caso required)
        $this->form_validation->set_rules('puestoUsuario', 'puestoUsuario', 'required');
        $this->form_validation->set_rules('correo', 'correo', 'required');
        $this->form_validation->set_rules('status', 'status', 'required');
        $this->form_validation->set_rules('privilegios', 'privilegios', 'required');
        $this->form_validation->set_rules('password', 'password', 'required');
        $this->form_validation->set_rules('imagen', 'imagen', 'required');
        if ($this->form_validation->run() == true) {
            //try {
            //    $this->db->trans_begin(); 
                $this->UsuarioModel->setNombreUsuario($this->input->POST('nombreUsuario'));//hace referencia al nombre del campo
                $this->UsuarioModel->setPuestoUsuario($this->input->POST('puestoUsuario'));
                $this->UsuarioModel->setCorreo($this->input->POST('correo'));
                $this->UsuarioModel->setStatus($this->input->POST('status'));
                $this->UsuarioModel->setPrivilegios($this->input->POST('privilegios'));
                $this->UsuarioModel->setPassword($this->input->POST('password'));
                $this->UsuarioModel->setImagen($this->input->POST('imagen'));
                $this->UsuarioModel->guardar();
            //    if ($this->db->trans_status() === false) {
            //        $this->db->trans_rollback();
            //    } else {
            //        $this->db->trans_commit();
            //    }
            //    redirect('usuario/index');
            //} catch (PDOExcepcion $e) {
            //    die("+_+ Ocurrio un error +_+" . $e);
            //}
            $this->load->view('usuario/index');
        } else {
            $this->load->view('usuario/agregar');//hace referencia al archivo que esta dentro de la carpeta usuarios
        }

    }

    public function modificar($idUsuario)
    {
        $this->UsuarioModel->setIdUsuario($idUsuario);
        $data['titulo'] = 'Editar';
        $data['usuario'] = $this->UsuarioModel->listarModificar();
        $this->load->view('templateBack/header', $data);
        $this->load->view('usuario/modificar');
        $this->load->view('templateBack/footer');
    }


    public function actualizar()
    {
            //try {
            //    $this->db->trans_begin();

                $this->UsuarioModel->setIdUsuario($this->input->POST('idUsuario'));
                $this->UsuarioModel->setNombreUsuario($this->input->POST('nombreUsuario'));
                $this->UsuarioModel->setPuestoUsuario($this->input->POST('puestoUsuario'));
                $this->UsuarioModel->setCorreo($this->input->POST('correo'));
                $this->UsuarioModel->setStatus($this->input->POST('status'));
                $this->UsuarioModel->setPrivilegios($this->input->POST('privilegios'));
                $this->UsuarioModel->setPassword($this->input->POST('password'));
                $this->UsuarioModel->setImagen($this->input->POST('imagen'));
                $this->UsuarioModel->actualizarDatos();

            //    if ($this->db->trans_status() === FALSE) {
            //        $this->db->trans_rollback();
            //    } else {
            //        $this->db->trans_commit();
            //    }
        $this->load->view('welcome/mostrarUsua');
            //} catch (PDOExcepcion $e) {
            //    die("+_+ Ocurrio un error +_+" . $e);
            //}
    }

    public function eliminar($idUsuario)
    {
        //try {
        //    $this->db->trans_begin();
            $this->UsuarioModel->setIdUsuario($idUsuario);
            $this->UsuarioModel->eliminar();//hace referencial al metodo que se creo en el modelo
            $this->load->view('usuario/index');
        //    if ($this->db->trans_status() === false) {
        //        $this->db->trans_rollback();
        //    } else {
        //        $this->db->trans_commit();
        //    }
        //    redirect('welcome/mostrarUsua');
        //} catch (PDOExcepcion $e) {
        //    die("+_+ Ocurrio un error +_+" . $e);
        //}
    }
}