<?php 
    class ComentarioModel extends CI_Model{
        private $idComentario; 
        private $correo; 
        private $mensaje;
        private $status;
        private $revisado;

        function __construct(){
            parent::__construct();
        }

        public function getIdComentario(){
            return $this->idComentario;
        }

        public function getCorreo(){
            return $this->correo;
        }

        public function getMensaje(){
            return $this->mensaje;
        }

        public function getStatus(){
            return $this->status;
        }

        public function getRevisado(){
            return $this->revisado;
        }

        public function setIdComentario($idComentario){
            $this->idComentario = $idComentario;
        }

        public function setCorreo($correo){
            $this->correo = $correo;
        }

        public function setMensaje($mensaje){
            $this->mensaje = $mensaje;
        }

        public function setStatus($status){
            $this->status = $status;
        }

        public function setRevisado($revisado){
            $this->revisado = $revisado;
        }

        public function mostrar(){
            
            $comentario = $this->db->get('comentario');
            return $comentario->result();//retorno de los datos que contiene la variable comentario
            
        }

        public function mostrarComent(){
            $this->db->where('idComentario', $this->idComentario);
            $comentario = $this->db->get('comentario');
            return $comentario->result();
        }

        public function guardar(){
            $data=array(
                'correo'=> $this->correo,
                'mensaje'=> $this->mensaje,
                '0'=> $this->status
            );
            $this->db->insert('comentario', $data); //hace la inserccion en la tabla comentario
        }

        public function listarModificar(){
            $this->db->where('idComentario', $this->idComentario);//se toma el id que se encuentra en la base de datos
            $comentario = $this->db->get('comentario'); // hace referencia a la tabla
            return $comentario->result();//retorna el resultado de lo que contiene la variable de la tabla 
        }

        public function actualizarDatos(){
            $data=array(
                'correo'=>$this->correo,
                'mensaje'=>$this->mensaje,
                'status'=>$this->status,
                'revisado'=>$this->revisado
            );
            $this->db->where('idComentario', $this->idComentario);//hace referencia al id que se ha tomado
            $this->db->update('comentario', $data);//hace referencia al nombre de la tabla y actualiza en la base de datos
           /* $this->db->query("CALL sp_UpComentario('$this->idComentario','$this->correo',
                            '$this->mensaje','$this->status','$this->revisado')");*/
        }

        public function eliminar(){
            
            $this->db->where('idComentario', $this->idComentario);//posicionamiento de registro, el parametro es el campo idComentario
            $this->db->delete('comentario');// hace referencia a la tabla y elimina el registro de la tabla
            /*
            $this->db->query("CALL sp_DelComentario('$this->idComentario')");
            */ 
        }
    }