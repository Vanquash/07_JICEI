<?php 
    class ProductoModel extends CI_Model{
        private $idProducto;
        private $nombreProducto;
        private $cantidadProducto;
        private $fecha;
        private $nombreAdministrador;

        function __construct(){
            parent::__construct();
        }

        public function getIdProducto(){
            return $this->idProducto;
        }

        public function getNombreProducto(){
            return $this->nombreProducto;
        } 

        public function getCantidadProducto(){
            return $this->cantidadProducto;
        } 

        public function getFecha(){
            return $this->fecha;
        }

        public function getNombreAdministrador(){
            return $this->nombreAdministrador;
        }

        public function setIdProducto($idProducto){
            $this->idProducto = $idProducto;
        }

        public function setNombreProducto($nombreProducto){
            $this->nombreProducto = $nombreProducto;
        }

        public function setCantidadProducto($cantidadProducto){
            $this->cantidadProducto = $cantidadProducto;
        }

        public function setFecha($fecha){
            $this->fecha = $fecha;
        }

        public function setNombreAdministrador($nombreAdministrador){
            $this->nombreAdministrador = $nombreAdministrador;
        }

        public function mostrar(){
            
            $producto = $this->db->get('producto');
            return $producto->result();//retorno de los datos que contiene la variable producto
            
        }

        public function guardar(){
            $data=array(
                'nombreProducto'=> $this->nombreProducto,
                'cantidadProducto'=> $this->cantidadProducto,
                'fecha'=> $this->fecha,
                'nombreAdministrador'=> $this->nombreAdministrador,
            );
            $this->db->insert('producto', $data); //hace la inserccion en la tabla producto
        }

        public function listarModificar(){
            $this->db->where('idProducto', $this->idProducto);//se toma el id que se encuentra en la base de datos
            $producto = $this->db->get('producto'); // hace referencia a la tabla
            return $producto->result();//retorna el resultado de lo que contiene la variable de la tabla producto
        }

        public function actualizarDatos(){
            $data=array(
                'nombreProducto'=>$this->nombreProducto,
                'cantidadProducto'=>$this->cantidadProducto,
                'fecha'=>$this->fecha,
                'nombreAdministrador'=>$this->nombreAdministrador
            );
            $this->db->where('idProducto', $this->idProducto);//hace referencia al id que se ha tomado
            $this->db->update('producto', $data);//hace referencia al nombre de la tabla y actualiza en la base de datos
           /* $this->db->query("CALL sp_UpProducto('$this->idProducto','$this->nombreProducto',
                            '$this->cantidadProducto','$this->fecha','$this->nombreAdministrador')");*/
        }

        public function eliminar(){
            
            $this->db->where('idProducto', $this->idProducto);//posicionamiento de registro, el parametro es el campo idProducto
            $this->db->delete('producto');// hace referencia a la tabla y elimina el registro de la tabla
            /*
            $this->db->query("CALL sp_DelProducto('$this->idProducto')");
            */ 
        }
    }