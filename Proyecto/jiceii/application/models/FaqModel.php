<?php 
    class FaqModel extends CI_Model{
        private $idPregunta;
        private $pregunta;
        private $respuesta;


        function __construct(){
            parent::__construct();
        }

        public function getIdPregunta(){
            return $this->idPregunta;
        }

        public function getPregunta(){
            return $this->pregunta;
        }

        public function getRespuesta(){
            return $this->respuesta;
        }

        public function setPregunta($pregunta){
            $this->pregunta = $pregunta;
        }

        public function setRespuesta($respuesta){
            $this->respuesta = $respuesta;
        }

        public function mostrar(){
            
            $faq = $this->db->get('faq');
            return $faq->result();//retorno de los datos que contiene la variable faq
            
        }

        public function guardar(){
            $data=array(
                'pregunta'=> $this->pregunta,
                'respuesta'=> $this->respuesta
            );
            $this->db->insert('faq', $data); //hace la inserccion en la tabla faq
        }

        public function listarModificar(){
            $this->db->where('idPregunta', $this->idPregunta);//se toma el id que se encuentra en la base de datos
            $faq = $this->db->get('faq'); // hace referencia a la tabla
            return $faq->result();//retorna el resultado de lo que contiene la variable de la tabla faq
        }

        public function actualizarDatos(){
            $data=array(
                'correo'=>$this->correo,
                'mensaje'=>$this->mensaje,
                'status'=>$this->status,
                'revisado'=>$this->revisado
            );
            $this->db->where('idPregunta', $this->idPregunta);//hace referencia al id que se ha tomado
            $this->db->update('faq', $data);//hace referencia al nombre de la tabla y actualiza en la base de datos
           /* $this->db->query("CALL sp_UpFaq('$this->idPregunta','$this->correo',
                            '$this->mensaje','$this->status','$this->revisado')");*/
        }

        public function eliminar(){
            
            $this->db->where('idPregunta', $this->idPregunta);//posicionamiento de registro, el parametro es el campo idPregunta
            $this->db->delete('faq');// hace referencia a la tabla y elimina el registro de la tabla
            /*
            $this->db->query("CALL sp_DelFaq('$this->idPregunta')");
            */ 
        }
    }