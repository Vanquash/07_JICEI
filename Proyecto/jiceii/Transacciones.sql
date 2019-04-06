DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddCatalogo`(IN idCatalogo INT, IN producto VARCHAR(100), IN imagen varchar(100), 
	IN precioProducto VARCHAR(50), IN descripcion VARCHAR(1000))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING 
		BEGIN 
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	START TRANSACTION;
    
    	IF TRIM(idCatalogo) = " " THEN SELECT 'Campo vacio';
		ELSE
    	IF TRIM(producto) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(imagen) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(precioProducto) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(descripcion) = " " THEN SELECT 'Campo vacio';
        ELSE
			INSERT INTO catalogo VALUES (idCatalogo, producto, imagen, precioProducto, descripcion);
			SELECT CONCAT("Se ha agregado un registro nuevo");
        END IF;
        END IF;
        END IF;
        END IF;
        END IF;
        
    COMMIT;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddComentario`(IN idComentario INT, IN correo VARCHAR(100), IN mensaje VARCHAR(1000), 
	IN status INT, IN revisado VARCHAR(100)
)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING 
		BEGIN 
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	START TRANSACTION;
    
    	IF TRIM(idComentario) = " " THEN SELECT 'Campo vacio';
		ELSE
    	IF TRIM(correo) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(mensaje) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(status) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(revisado) = " " THEN SELECT 'Campo vacio';
        ELSE
			INSERT INTO comentario VALUES (idComentario, correo, mensaje, status, revisado);
			SELECT CONCAT("Se ha agregado un registro nuevo");
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
    COMMIT;
END$$
DELIMITER ;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddFaq`(IN idPregunta INT, IN pregunta VARCHAR(100), IN respuesta VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING 
		BEGIN 
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	START TRANSACTION;
    
    	IF TRIM(idPregunta) = " " THEN SELECT 'Campo vacio';
		ELSE
    	IF TRIM(pregunta) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(respuesta) = " " THEN SELECT 'Campo vacio';
        ELSE
			INSERT INTO faq VALUES (idPregunta, pregunta, respuesta);
			SELECT CONCAT("Se ha agregado un registro nuevo");
		END IF;
		END IF;
		END IF;
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddProducto`(IN idProducto INT, IN nombreProducto VARCHAR(100), IN cantidadProducto VARCHAR(50), 
	IN fecha VARCHAR(50), IN nombreAdministrador VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING 
		BEGIN 
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	START TRANSACTION;
    
    	IF TRIM(idProducto) = " " THEN SELECT 'Campo vacio';
		ELSE
    	IF TRIM(nombreProducto) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(cantidadProducto) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(fecha) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(nombreAdministrador) = " " THEN SELECT 'Campo vacio';
        ELSE
			INSERT INTO producto VALUES (idProducto, nombreProducto, cantidadProducto, fecha, nombreAdministrador);
			SELECT CONCAT("Se ha agregado un registro nuevo");
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddUsuario`(IN idUsuario INT, IN nombreUsuario VARCHAR(100), IN puestoUsuario VARCHAR(50), 
	IN correo VARCHAR(100), IN status INT, IN privilegios TINYINT(4), IN password VARCHAR(50), IN imagen VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING 
		BEGIN 
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	START TRANSACTION;
    
    	IF TRIM(idUsuario) = " " THEN SELECT 'Campo vacio';
		ELSE
    	IF TRIM(nombreUsuario) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(puestoUsuario) = " " THEN SELECT 'Campo vacio';
        ELSE 
		IF TRIM(correo) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(statusUp) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(privilegios) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(password) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(imagen) = " " THEN SELECT 'Campo vacio';
		ELSE
			INSERT INTO usuario VALUES (idUsuario, nombreUsuario, puestoUsuario, correo,
				status, privilegios, password, imagen);
			SELECT CONCAT("Se ha agregado un registro nuevo");
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelCatalogo`(IN idCatal INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			DELETE FROM catalogo WHERE idCatalogo=idCatal;
			SELECT CONCAT("El producto fue ELIMINADO del Catalogo.");
            
		COMMIT;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelComentario`(IN idComent INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			DELETE FROM comentario WHERE idComentario=idComent;
			SELECT CONCAT("El comentario fue ELIMINADO.");
            
		COMMIT;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelFaq`(IN idPregunt INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			DELETE FROM faq WHERE idPregunta=idPregunt;
			SELECT CONCAT("La pregunta fue ELIMINADA.");
            
		COMMIT;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelProducto`(IN idProduc INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			DELETE FROM producto WHERE idProducto=idProduc;
			SELECT CONCAT("El producto fue ELIMINADO.");
            
		COMMIT;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelUsuario`(IN idUsuari INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			DELETE FROM usuario WHERE idUsuario=idUsuari;
			SELECT CONCAT("El usuario fue ELIMINADO.");
            
		COMMIT;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpCatalogo`(IN idCatalogoUp INT, IN productoUp VARCHAR(100), IN imagenUp varchar(100),
	IN precioProductoUp VARCHAR(50), IN descripcionUp VARCHAR(1000))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING
		BEGIN
			SHOW WARNINGS LIMIT 1;
			RESIGNAL;
			ROLLBACK;
		END;
            
	START TRANSACTION;
    
		IF TRIM(productoUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(imagenUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(precioProductoUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(descripcionUp) = " " THEN SELECT 'Campo vacio';
        ELSE
			UPDATE catalogo SET producto=productoUp, imagen=imagenUp, precioProducto=precioProductoUp, 
				descripcion=descripcionUp WHERE idCatalogo=idCatalogoUp;
			SELECT CONCAT("Ha sido actualizado el Catalogo");
        END IF;
        END IF;
        END IF;
        END IF;
        
	COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpComentario`(IN idComentarioUp INT, IN correoUp VARCHAR(100), IN mensajeUp VARCHAR(1000),
	IN statusUp INT, IN revisadoUp VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING
		BEGIN
			SHOW WARNINGS LIMIT 1;
			RESIGNAL;
			ROLLBACK;
		END;
            
	START TRANSACTION;
    
        IF TRIM(correoUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(mensajeUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(statusUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(revisadoUp) = " " THEN SELECT 'Campo vacio';
        ELSE
			UPDATE remision SET correo=correoUp, mensaje=mensajeUp, 
				status=statusUp, revisado=revisadoUp WHERE idComentario=idComentarioUp;
			SELECT CONCAT("Ha sido actualizado un Comentario");
        END IF;
        END IF;
        END IF;
        END IF;
        
	COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpFaq`(IN idPreguntaUp INT, IN preguntaUp VARCHAR(100), IN respuestaUp VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING
		BEGIN
			SHOW WARNINGS LIMIT 1;
			RESIGNAL;
			ROLLBACK;
		END;
            
	START TRANSACTION;
    
        IF TRIM(preguntaUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(respuestaUp) = " " THEN SELECT 'Campo vacio';
        ELSE
			UPDATE faq SET preguntaUp=pregunta, respuesta=respuestaUp WHERE idPregunta=idPreguntaUp;
			SELECT CONCAT("Ha sido actualizado una Pregunta");
        END IF;
        END IF;
        
	COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpProducto`(IN idProductoUp INT, IN nombreProductoUp VARCHAR(100),
	IN cantidadProductoUp VARCHAR(50), IN fechaUp VARCHAR(50), IN nombreAdministradorUp VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING
		BEGIN
			SHOW WARNINGS LIMIT 1;
			RESIGNAL;
			ROLLBACK;
		END;
            
	START TRANSACTION;
    
        IF TRIM(nombreProductoUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(cantidadProductoUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(fechaUp) = " " THEN SELECT 'Campo vacio';
        ELSE
        IF TRIM(nombreAdministradorUp) = " " THEN SELECT 'Campo vacio';
        ELSE
			UPDATE producto SET nombreProducto=nombreProductoUp, cantidadProducto=cantidadProductoUp, fecha=fechaUp, 
				nombreAdministrador=nombreAdministradorUp WHERE idProducto=idProductoUp;
			SELECT CONCAT("Ha sido actualizado un Producto");
        END IF;
        END IF;
        END IF;
        END IF;
        
	COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpUsuario`(IN idUsuarioUp INT, IN nombreUsuarioUp VARCHAR(100), IN puestoUsuarioUp VARCHAR(50),
	IN correoUp VARCHAR(100), IN statusUp INT, IN privilegiosUp TINYINT(4), IN passwordUp VARCHAR(100), IN imagenUp VARCHAR(100))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	DECLARE EXIT HANDLER FOR SQLWARNING 
		BEGIN 
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
        
	START TRANSACTION;
    
    	IF TRIM(nombreUsuarioUp) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(puestoUsuarioUp) = " " THEN SELECT 'Campo vacio';
        ELSE 
		IF TRIM(correoUp) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(statusUp) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(privilegiosUp) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(passwordUp) = " " THEN SELECT 'Campo vacio';
		ELSE 
		IF TRIM(imagenUp) = " " THEN SELECT 'Campo vacio';
		ELSE
			UPDATE usuario SET nombreUsuario=nombreUsuarioUp, puestoUsuario=puestoUsuarioUp, correo=correoUp,
				status=statusUp, privilegios=privilegiosUp, password=passwordUp, imagen=imagenUp WHERE idUsuario=idUsuarioUp;
			SELECT CONCAT("Se ha actualizado un Usuario");
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarCatalogo`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			SELECT idCatalogo, producto, imagen, precioProducto, descripcion FROM catalogo;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarComentario`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			SELECT idComentario, correo, mensaje, status, revisado FROM comentario;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarFaqs`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;

			SELECT idPregunta, pregunta, respuesta FROM faq;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarProducto`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        

			SELECT idProducto, nombreProducto, cantidadProducto, fecha, nombreAdministrador FROM producto;
            
    COMMIT;
END$$
DELIMITER ;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarUsuario`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS LIMIT 1;
            RESIGNAL;
            ROLLBACK;
		END;
            
		DECLARE EXIT HANDLER FOR SQLWARNING
			BEGIN
				SHOW WARNINGS LIMIT 1;
				RESIGNAL;
				ROLLBACK;
			END;
                
		START TRANSACTION;
        
			SELECT idUsuario, nombreUsuario, puestoUsuario, correo, status, privilegios, password, imagen FROM usuario;
            
    COMMIT;
END$$
DELIMITER ;
