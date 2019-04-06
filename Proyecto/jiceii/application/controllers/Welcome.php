<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('CatalogoModel');
		$this->load->model('ComentarioModel');
		$this->load->model('FaqModel');
		$this->load->model('ProductoModel');
		$this->load->model('UsuarioModel');
	}


	public function index()//Pagina 1 de Index
	{
		$data['titulo'] = 'JICEI';
		$this->load->view('pag1', $data);
	}

	public function catalo()//Pagina 2 de Catalogo
	{
		$data['titulo'] = 'Catalogo';
		$this->load->view('catalogo', $data);
	}

	public function comenta()//Pagina 3 de Comentarios
	{
		$data['titulo'] = 'Comentarios';
		$data['comentario'] = $this->ComentarioModel-> mostrarComent();
		$this->load->view('comentario', $data);
		$this->load->view('template/header', $data);
		$this->load->view('template/footer');
	}

	public function filosof()//Pagina 4 de Filosofia
	{
		$data['titulo'] = 'Conocenos';
		$this->load->view('conocer', $data);
	}

	public function benefi()//Pagina 5 de Beneficios
	{
		$data['titulo'] = 'Beneficios';
		$this->load->view('beneficios', $data);
	}

	public function datosCurio()//Pagina 6 de Datos Curiosos
	{
		$data['titulo'] = 'Datos Curiosos';
		$this->load->view('datocurioso', $data);
	}

	public function faq()//Pagina 7 de Preguntas Frecuentes
	{
		$data['titulo'] = 'FaQ';
		$this->load->view('faq', $data);
	}

	public function logi()
	{
		$data['titulo'] = 'Login';
		if (isset($_POST['password'])) {
			$this->load->model('UsuarioModel');
			//$data['usuario']=$this->UsuarioModel->login();
			if ($this->UsuarioModel->login($_POST['correo'], $_POST['password'])) {
				$this->load->view('welcome/mostrarUsua');
			} else {
				$this->load->view('logIn', $data);

			}
		}
	}

	public function mostrar()
	{
		$this->load->view('mostrar');
	}

	//////////////////	BACK-END	//////////////////

	public function mostrarCatal()
	{
		$data['titulo'] = 'Catalogo';
		$data['catalogo'] = $this->CatalogoModel->mostrar();
		$this->load->view('templateBack/header', $data);
		$this->load->view('catalogo/mostrar', $data);
		$this->load->view('templateBack/footer');
	}

	public function mostrarComent()
	{
		$data['titulo'] = 'Comentario';
		$data['comentario'] = $this->ComentarioModel->mostrar();
		$this->load->view('templateBack/header', $data);
		$this->load->view('comentario/mostrar', $data);
		$this->load->view('templateBack/footer');
	}

	public function mostrarFaqs()
	{
		$data['titulo'] = 'FaQs';
		$data['faq'] = $this->FaqModel->mostrar();
		$this->load->view('templateBack/header', $data);
		$this->load->view('faq/mostrar', $data);
		$this->load->view('templateBack/footer');
	}

	public function mostrarProduct()
	{
		$data['titulo'] = 'Producto';
		$data['producto'] = $this->ProductoModel->mostrar();
		$this->load->view('templateBack/header', $data);
		$this->load->view('producto/mostrar', $data);
		$this->load->view('templateBack/footer');
	}

	public function mostrarUsua()
	{
		$data['titulo'] = 'Usuario';
		$data['usuario'] = $this->UsuarioModel->mostrar();
		$this->load->view('templateBack/header', $data);
		$this->load->view('usuarios/mostrar', $data);
		$this->load->view('templateBack/footer');
	}

}
