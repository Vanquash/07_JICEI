<?php 
    class UsuarioModel extends CI_Model{
        private $idUsuario;
        private $nombreUsuario;
        private $puestoUsuario;
        private $correo;
        private $status;
        private $privilegios;
        private $password;
        private $imagen;
        
        public function getIdUsuario(){
            return $this->idUsuario;
        }

        public function getNombreUsuario(){
            return $this->nombreUsuario;
        }

        public function getPuestoUsuario(){
            return $this->puestoUsuario;
        }

        public function getCorreo(){
            return $this->correo;
        }

        public function getStatus(){
            return $this->status;
        }

        public function getPrivilegios(){
            return $this->privilegios;
        }

        public function getPassword(){
            return $this->password;
        }

        public function getImagen(){
            return $this->imagen;
        }

        public function setNombreUsuario($nombreUsuario){
            $this->nombreUsuario = $nombreUsuario;
        }

        public function setPuestoUsuario($puestoUsuario){
            $this->puestoUsuario = $puestoUsuario;
        }

        public function setCorreo($correo){
            $this->correo = $correo;
        }

        public function setStatus($status){
            $this->status = $status;
        }

        public function setPrivilegios($privilegios){
            $this->privilegios = $privilegios;
        }

        public function setPassword($password){
            $this->password = $password;
        }

        public function setImagen($imagen){
            $this->imagen = $imagen;
        }

        public function mostrar()
        {
            $usuario = $this->db->get('usuario');
            return $usuario->result();
        }

        public function guardar()
        {
            $data = array(
                'nombreUsuario' => $this->nombreUsuario,
                'puestoUsuario' => $this->puestoUsuario,
                'correo' => $this->correo,
                'status' => $this->status,
                'privilegios' => $this->privilegios,
                'password' => $this->password,
                'imagen' => $this->imagen
            );
            $this->db->insert('usuario', $data);
            /*$this->db->query("CALL sp_AddUsuario('$this->idUsuario','$this->nombreUsuario','$this->correo','$this->password')");*/
        }

        public function listarModificar()
        {
            $this->db->where('idUsuario', $this->idUsuario);//se toma el id que se encuentra en la base de datos
            $usuario = $this->db->get('usuario'); // hace referencia a la tabla
            return $usuario->result();//retorna el resultado de lo que contiene la tabla 
        }

        public function actualizarDatos()
        {
                $data=array(
                    'nombreUsuario' => $this->nombreUsuario,
                    'puestoUsuario' => $this->puestoUsuario,
                    'correo' => $this->correo,
                    'status' => $this->status,
                    'privilegios' => $this->privilegios,
                    'password' => $this->password,
                    'imagen' => $this->imagen
                );
                
                $this->db->where('idUsuario', $this->idUsuario);//hace referencia al id que se ha tomado
                $this->db->update('usuario', $data);//hace referencia al nombre de la tabla y actualiza en la base de datos
            /*$this->db->query("CALL sp_UpUsuario('$this->idUsuario','$this->nombreUsuario','$this->correo','$this->password')");*/
        }

        public function eliminar()
        {
                $this->db->where('idUsuario', $this->idUsuario);//posicionamiento de registro, el parametro es el campo idUsuario
                $this->db->delete('usuario');// hace referencia a la tabla y elimina el registro de la tabla
            /*$this->db->query("CALL sp_DelUsuario('$this->idUsuario')");*/
        }

        public function login($correo, $password)
        {

            $this->db->where('correo', $correo);
            $this->db->where('password', $password);
            $q = $this->db->get('usuario');
            if ($q->num_rows() > 0) {
                return true;
            } else {
                return false;
            }
        }
    }