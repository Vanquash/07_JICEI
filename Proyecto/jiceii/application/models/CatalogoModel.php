<?php 
    class CatalogoModel extends CI_Model{
        private $idCatalogo;
        private $producto;
        private $imagen;
        private $precioProducto;
        private $descripcion;

        function __construct(){
            parent::__construct();
        }

        public function getIdCatalogo(){
            return $this->idCatalogo;
        }

        public function getProducto(){
            return $this->producto;
        }

        public function getImagen(){
            return $this->imagen;
        }

        public function getPrecioProducto(){
            return $this->precioProducto;
        }

        public function getDescripcion(){
            return $this->descripcion;
        }

        public function setIdCatalogo($idCatalogo){
            $this->idCatalogo = $idCatalogo;
        }

        public function setProducto($producto){
            $this->producto = $producto;
        }

        public function setImagen($imagen){
            $this->imagen = $imagen;
        }

        public function setPrecioProducto($precioProducto){
            $this->precioProducto = $precioProducto;
        }

        public function setDescripcion($descripcion){
            $this->descripcion = $descripcion;
        }

        public function mostrar(){
            $catalogo = $this->db->get('catalogo');
            return $catalogo->result();//retorno de los datos que contiene la variable catalogo
            
        }

        public function guardar(){
            $data=array(
                'producto'=> $this->producto,
                'imagen'=> $this->imagen,
                'precioProducto'=> $this->precioProducto,
                'descripcion'=> $this->descripcion
            );
            $this->db->insert('catalogo', $data); //hace la inserccion en la tabla catalogo
        }

        public function listarModificar(){
            $this->db->where('idCatalogo', $this->idCatalogo);//se toma el id que se encuentra en la base de datos
            $catalogo = $this->db->get('catalogo'); // hace referencia a la tabla
            return $catalogo->result();//retorna el resultado de lo que contiene la variable de la tabla catalogo
        }

        public function actualizarDatos(){
            $data=array(
                'producto'=>$this->producto,
                'imagen'=>$this->imagen,
                'precioProducto'=>$this->precioProducto,
                'descripcion'=>$this->descripcion
            );
            
            $this->db->where('idCatalogo', $this->idCatalogo);//hace referencia al id que se ha tomado
            $this->db->update('catalogo', $data);//hace referencia al nombre de la tabla y actualiza en la base de datos
           /* $this->db->query("CALL sp_UpComentario('$this->idCatalogo','$this->producto',
                            '$this->imagen','$this->precioProducto','$this->descripcion')");*/
        }

        public function eliminar(){
            
            $this->db->where('idCatalogo', $this->idCatalogo);//posicionamiento de registro, el parametro es el campo idCatalogo
            $this->db->delete('catalogo');// hace referencia a la tabla y elimina el registro de la tabla
            /*
            $this->db->query("CALL sp_DelCatalogo('$this->idCatalogo')");
            */ 
        }
    }