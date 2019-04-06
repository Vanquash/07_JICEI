-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2019 a las 04:57:56
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `abarrotesdepacos`
--
CREATE DATABASE IF NOT EXISTS `abarrotesdepacos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abarrotesdepacos`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddCiudad` (IN `nombreCiudad` VARCHAR(45))  BEGIN   
		DECLARE cantidad INT;
        DECLARE nombreSinEspacios VARCHAR(45);

        IF TRIM(nombre) = "" THEN SELECT "Campo vacio";
			SELECT TRIM(nombre) INTO nombreSinEspacios;
            SELECT COUNT(ciudad) INTO cantidad FROM Ciudad WHERE TRIM(ciudad)= nombreSinEspacios;
				IF cantidad > 0 THEN 
					SELECT CONCAT ("La ciudad ya existe") AS "Error...";
				ELSE

				INSERT INTO Ciudad VALUES(null, nombreSinEspacios);
				SELECT CONCAT("La ciudad: ", nombre," ha sido registrada."); 

				END IF;
		END IF;
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulCategoria` ()  BEGIN
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
        
				SELECT * FROM categoria;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulCliente` ()  BEGIN
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
        							
				SELECT * FROM cliente;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulComentario` ()  BEGIN
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
        
				SELECT * FROM comentario;
                
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulInventario` ()  BEGIN
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
        
				SELECT * FROM inventario;
        
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulPedido` ()  BEGIN
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
        
				SELECT * FROM pedido;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulProducto` ()  BEGIN
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
			
					SELECT * FROM producto;
				
				COMMIT;
				
			END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulPromocion` ()  BEGIN
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
        
				SELECT * FROM promocion;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulProveedor` ()  BEGIN
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
        
				SELECT * FROM proveedor;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulRemision` ()  BEGIN
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
				SELECT * FROM remision;
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ConsulUsuario` ()  BEGIN
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
        
				SELECT * FROM usuario;
                
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelCategoria` (IN `idCate` INT)  BEGIN
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
        
			DELETE FROM categoria WHERE idCategoria=idCate;
			SELECT CONCAT("La categoría ha sido Eliminada.");
            
		COMMIT;
            
	END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelCliente` (IN `idClie` INT)  BEGIN
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
        
			DELETE FROM cliente WHERE idCliente=idClie;
			SELECT CONCAT("El cliente ha sido ELMINADO.");
            
		COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelComentario` (IN `idComen` INT)  BEGIN
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
        
			DELETE FROM comentario WHERE idComentario=idComen;
			SELECT CONCAT("El comentario ha sido Eliminado.");
            
		COMMIT;
                        
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelInventario` (IN `idInven` INT)  BEGIN
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
        
			DELETE FROM inventario WHERE idInventario=idInven;
			SELECT CONCAT("El producto fue ELIMINADO del INVENTARIO.");
            
		COMMIT;
        
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelPedido` (IN `idPedid` INT)  BEGIN
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
        
			DELETE FROM pedido WHERE idPedido=idPedid;
			SELECT CONCAT("El pedido ha sido Eliminado.");
            
		COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelProducto` (IN `idProd` INT)  BEGIN
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
        
			DELETE FROM producto WHERE idProducto=idProd;
			SELECT CONCAT("El producto ha sido ELMINADO.");
            
		COMMIT;
            
			END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelPromocion` (IN `idPromo` INT)  BEGIN
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
        
			DELETE FROM promocion WHERE idPromocion=idPromo;
			SELECT CONCAT("La promoción ha sido Eliminada.");
            
		COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelProveedor` (IN `idProv` INT)  BEGIN
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
        
			DELETE FROM proveedor WHERE idProveedor=idProv;
			SELECT CONCAT("El proveedor ha sido Eliminado.");
            
		COMMIT;
                        
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelRemision` (IN `idRemi` INT)  BEGIN
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
        
			DELETE FROM remision WHERE idRemision=idRemi;
			SELECT CONCAT("La remisión ha sido Eliminada.");
            
		COMMIT;
            
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelUsuario` (IN `idUsuari` INT)  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpCategoria` (IN `idCate` INT, IN `nomCate` VARCHAR(45))  BEGIN
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
        
			IF TRIM(nomCate) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE categoria SET nombreCategoria=nomCate WHERE idCategoria=idCate;
				SELECT CONCAT("La categoría ha sido actualizada.");
            END IF;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpCliente` (IN `idClie` INT, IN `nomClie` VARCHAR(45), IN `idCiu` INT, IN `idLocali` INT, IN `calleNumeE` VARCHAR(100), IN `idTelefo` INT, IN `numTele` VARCHAR(10), IN `emailC` VARCHAR(75), IN `rfcClie` VARCHAR(20))  BEGIN
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
        							
			IF TRIM(nomClie) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idCiu) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idLocali) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(calleNumeE) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idTelefo) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(numTele) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(emailC) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(rfcClie) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE cliente SET nombreCliente=nomClie, idCiudad=idCiu, idLocalidad=idLocali, 
						calleNum=calleNumeE, idTelefono=idTelefo, numTel=numTele, email=emailC, 
                        rfcCliente=rfcClie WHERE idCliente=idClie;
				SELECT CONCAT("Ha sido actualizado un Cliente");
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpComentario` (IN `idComen` INT, IN `nomb` VARCHAR(45), IN `correoE` VARCHAR(75), IN `coment` VARCHAR(150), IN `idEsta` INT)  BEGIN
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
        
			IF TRIM(nomb) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(correoE) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(coment) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idEsta) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE comentario SET nombre=nomb, correoEmail=correoE, comentario=coment, idEstatus=idEsta WHERE idComentario=idComen;
				SELECT CONCAT("Ha sido actualizado un comentario");
            END IF;
            END IF;
            END IF;
            END IF;
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpInventario` (IN `idInven` INT, IN `idProdu` INT, IN `idCateg` INT, IN `idProveed` INT, IN `stok` INT)  BEGIN
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
        
			IF TRIM(idProdu) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idCateg) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idProveed) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(stok) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE inventario SET idProducto=idProdu, idCategoria=idCateg, idProveedor=idProveed, stock=stok WHERE idInventario=idInven;
				SELECT CONCAT("Ha sido actualizado el inventario.");
            END IF;
            END IF;
            END IF;
            END IF;
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpPedido` (IN `idPedid` INT, IN `idProd` INT, IN `canti` INT, IN `totalVent` FLOAT(9,2), IN `idClient` INT, IN `idEstat` INT)  BEGIN
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
        
			IF TRIM(idProd) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(canti) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(totalVent) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idClient) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idEstat) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE pedido SET idProducto=idProd, cantidad=canti, totalVenta=totalVent, 
						idCliente=idClient, idEstatus=idEstat WHERE idPedido=idPedid;
				SELECT CONCAT("Ha sido actualizado un PEDIDO");
            END IF;
            END IF;
            END IF;
            END IF;
            END IF;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpProducto` (IN `idProd` INT, IN `nomProd` VARCHAR(45), IN `idCateg` INT, IN `preci` FLOAT(9,2))  BEGIN
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
			
				IF TRIM(nomProd) = " " THEN SELECT 'Campo vacio';
				ELSE
				IF TRIM(idCateg) = " " THEN SELECT 'Campo vacio';
				ELSE
				IF TRIM(preci) = " " THEN SELECT 'Campo vacio';
				ELSE
					UPDATE producto SET nombreProducto=nomProd, idCategoria=idCateg, precio=preci WHERE idProducto=idProd;
					SELECT CONCAT("Ha sido actualizado un producto");
				END IF;
				END IF;
				END IF;
				COMMIT;
				
				COMMIT;
				
			END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpPromocion` (IN `idPromo` INT, IN `nomPromo` VARCHAR(50), IN `descrip` VARCHAR(50), `vence` DATE)  BEGIN
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
        
			IF TRIM(nomPromo) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(descrip) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(vence) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE promocion SET nombrePromocion=nomPromo, descripcion=descrip, vigencia=vence WHERE idPromocion=idPromo;
				SELECT CONCAT("Ha sido actualizada una promoción");
            END IF;
            END IF;
            END IF;
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpProveedor` (IN `idProv` INT, IN `nomProv` VARCHAR(45))  BEGIN
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
        
			IF TRIM(nomProv) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE proveedor SET nombreProveedor=nomProv WHERE idProveedor=idProv;
				SELECT CONCAT("El proveedor ha sido actualizada.");
            END IF;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpRemision` (IN `idRemi` INT, IN `rfcTD` VARCHAR(16), IN `idClint` INT, IN `idProdt` INT, IN `cant` INT, IN `mont` FLOAT(9,2))  BEGIN
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
        
			IF TRIM(rfcTD) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idClint) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(idProdt) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(cant) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(mont) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE remision SET rfcTienda=rfcTD, idCliente=idClint, idProducto=idProdt, 
						cantidad=cant, monto=mont WHERE idRemision=idRemi;
				SELECT CONCAT("Ha sido actualizado una Remisión");
            END IF;
            END IF;
            END IF;
            END IF;
            END IF;
            
            COMMIT;
            
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpUsuario` (IN `idUsuari` INT, IN `nomUser` VARCHAR(10), IN `emailUser` VARCHAR(75), IN `contra` VARCHAR(20))  BEGIN
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
        
			IF TRIM(nomUser) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(emailUser) = " " THEN SELECT 'Campo vacio';
            ELSE
            IF TRIM(contra) = " " THEN SELECT 'Campo vacio';
            ELSE
				UPDATE usuario SET nombreUsuario=nomUser, email=emailUser, contrasena=contra WHERE idUsuario=idUsuari;
				SELECT CONCAT("Ha sido actualizado el usuario.");
            END IF;
            END IF;
            END IF;
            
            COMMIT;
            
		END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'Tutsibotas'),
(2, 'Sopas'),
(3, 'Pan Dulce'),
(4, 'Dulces Amargos'),
(5, 'Refresco'),
(6, 'Cerveza'),
(7, 'Aguas'),
(8, 'Jugos'),
(9, 'Desechables'),
(10, 'Jabones'),
(11, 'Enlatados'),
(12, 'Yogures');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL,
  `nombreCiudad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `nombreCiudad`) VALUES
(1, 'Tarandacuao'),
(2, 'Acambaro'),
(3, 'Tarimoro'),
(4, 'Jerecuaro'),
(5, 'Salvatierra'),
(6, 'Coroneo'),
(7, 'Zinapecuaro'),
(8, 'Paracuaro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(50) NOT NULL,
  `idCiudad` int(11) NOT NULL,
  `idLocalidad` int(11) NOT NULL,
  `calleNum` varchar(100) NOT NULL,
  `idTelefono` int(11) NOT NULL,
  `numTel` varchar(10) NOT NULL,
  `email` varchar(75) NOT NULL,
  `rfcCliente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombreCliente`, `idCiudad`, `idLocalidad`, `calleNum`, `idTelefono`, `numTel`, `email`, `rfcCliente`) VALUES
(1, 'Franklin', 3, 6, 'Calle Villa Dorada # 987', 1, '1726666', 'caredabavazmon55@gmail.com', 'CEAVM230998HK5J'),
(2, 'Sarai Dorantes Castillo', 3, 9, 'Calle Guadalupe Victoria Num. 972', 2, '4435923571', 'saradorantillo@gmail.com', 'SDOCAS010397M4S'),
(3, 'Tsipsiki Gutierrez Borjon', 2, 1, 'Calle Septima Num. 4, Col. E. Velasco Ibarra', 1, '1729945', 'bombongutierrez9621@gmail.com', 'TSGUBO211196M3K'),
(4, 'Anairy Tutufruti', 2, 2, 'Hidalgo #4', 2, '4612578177', 'echo.error@gmail.com', 'KJSSC290283DF5M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correoEmail` varchar(75) NOT NULL,
  `comentario` varchar(150) NOT NULL,
  `idEstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `nombre`, `correoEmail`, `comentario`, `idEstatus`) VALUES
(1, 'Vegeta777', 'askdhg@outlook.com', 'Listo', 2),
(3, 'DBMaster', 'alhsq287@hotmail.com', 'Tercer comentario de Prueba', 2),
(4, 'TatooGrafos', 'tatoo.35@gmail.com', 'Hola Profe Rodo', 1),
(5, 'TOSHIBA', 'pavillion@hp.com', 'Feliz cumpleaños profe', 1),
(6, 'ITI801', 'iti.tics.701@gmail.com', 'Para cuando nos invita a la playa', 1),
(7, 'Goku', 'goku@dragonballz.com', 'Probando comentarios', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `idEstatus` int(11) NOT NULL,
  `estatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`idEstatus`, `estatus`) VALUES
(1, 'Pendiente'),
(2, 'Procesado'),
(3, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `idGaleria` int(11) NOT NULL,
  `nombreImagen` varchar(45) DEFAULT NULL,
  `imagen` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`idGaleria`, `nombreImagen`, `imagen`) VALUES
(1, 'Cerveza Corona', 0x433a78616d70706874646f637370726f796563746f416261696d61676573312e6a7067),
(2, 'Corona Extra', 0x433a78616d70706874646f637370726f796563746f416261696d61676573342e6a7067),
(3, 'Corona Extra Playa', 0x433a78616d70706874646f637370726f796563746f416261696d61676573352e6a7067);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idProducto`, `idCategoria`, `idProveedor`, `stock`) VALUES
(2, 2, 5, 3, 100),
(3, 1, 1, 2, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `idLocalidad` int(11) NOT NULL,
  `nombreLocalidad` varchar(45) NOT NULL,
  `idCiudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`idLocalidad`, `nombreLocalidad`, `idCiudad`) VALUES
(1, 'Nuevo Chupicuaro', 2),
(2, 'Acambaro', 2),
(3, 'Jerecuaro', 4),
(4, 'La concepción', 8),
(5, 'El Terrero', 2),
(6, 'Los Fierros', 8),
(7, 'Inchamacuaro', 2),
(8, 'El Español', 2),
(9, 'La Noria', 3),
(10, 'Encarnación', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `totalVenta` float(9,2) DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  `idEstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idProducto`, `cantidad`, `totalVenta`, `idCliente`, `idEstatus`) VALUES
(1, 2, 2, 22.00, 2, 2),
(3, 3, 10, 150.00, 3, 1),
(6, 3, 23, 253.00, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(45) DEFAULT NULL,
  `idCategoria` int(11) NOT NULL,
  `precio` float(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `idCategoria`, `precio`) VALUES
(1, 'Doritos 3-D', 1, 12.00),
(2, 'Fanta 600ml', 7, 11.00),
(3, 'Mantecadas Nuez', 3, 15.00),
(4, 'MIX MIX', 2, 35.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `idPromocion` int(11) NOT NULL,
  `nombrePromocion` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `vigencia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`idPromocion`, `nombrePromocion`, `descripcion`, `vigencia`) VALUES
(2, 'Nutrilunch', 'Gran venta de lanzamiento, llevate un Nito y una lechita Nito por solo $15', '2015-03-19'),
(3, 'Paquete la jueges', 'En la compra de 3 bolsas de botanas llevate una Pepsi de 2L gratis', '2019-09-05'),
(4, 'Noche Buena', 'En la compra de dos refrescos de la marca Coca~Cola de 600ml paga solo $20', '2019-02-22'),
(5, 'Calaverita', 'Grandes paquetes de cerveza Victoria', '2015-03-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombreProveedor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombreProveedor`) VALUES
(1, 'Gamesa'),
(2, 'Sabritas'),
(3, 'Coca~Cola'),
(4, 'Pepsi'),
(5, 'Corona'),
(6, 'Tecate'),
(7, 'Sonrics'),
(8, 'Clorets'),
(9, 'De la Rosa'),
(10, 'La Costeña'),
(11, 'Don Vasco'),
(13, 'Bimbo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remision`
--

CREATE TABLE `remision` (
  `idRemision` int(11) NOT NULL,
  `rfcTienda` varchar(16) DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `monto` float(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `remision`
--

INSERT INTO `remision` (`idRemision`, `rfcTienda`, `idCliente`, `idProducto`, `cantidad`, `monto`) VALUES
(4, 'ABDPAC280914N5NC', 1, 3, 8, 96.00),
(5, 'ABDPAC280914N5NC', 2, 2, 13, 143.00),
(6, 'ABDPAC280914N5NC', 3, 1, 5, 75.00),
(7, 'ABDPAC280914N5NC', 1, 3, 8, 96.00),
(8, 'ABDPAC280914N5NC', 2, 2, 13, 143.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `idTelefono` int(11) NOT NULL,
  `tipoTel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`idTelefono`, `tipoTel`) VALUES
(1, 'Casa'),
(2, 'Movil'),
(3, 'Oficina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(45) NOT NULL,
  `email` varchar(75) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreUsuario`, `email`, `contrasena`) VALUES
(1, 'Molexsdssf', 'molexdarck98@hotmail.com', '.dsnj43987 '),
(2, 'Drock', 'masterdrock@gmail.com', 'sfrek94372');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistacategoria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistacategoria` (
`idCategoria` int(11)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistacomentarioclient`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistacomentarioclient` (
`idComentario` int(11)
,`nombreCliente` varchar(50)
,`email` varchar(75)
,`comentario` varchar(150)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistainventprodcatprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistainventprodcatprovee` (
`idInventario` int(11)
,`nombreProducto` varchar(45)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
,`stock` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistainventprodcatproveepromo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistainventprodcatproveepromo` (
`idInventario` int(11)
,`nombreProducto` varchar(45)
,`nombrePromocion` varchar(50)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
,`stock` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapedidoproducclient`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapedidoproducclient` (
`idPedido` int(11)
,`nombreProducto` varchar(45)
,`cantidad` int(11)
,`totalVenta` float(9,2)
,`nombreCliente` varchar(50)
,`email` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaproduccateg`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaproduccateg` (
`idProducto` int(11)
,`nombreProducto` varchar(45)
,`nombreCategoria` varchar(45)
,`precio` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaproducprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaproducprovee` (
`idProducto` int(11)
,`nombreProducto` varchar(45)
,`nombreProveedor` varchar(45)
,`precio` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapromousuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapromousuario` (
`idPromocion` int(11)
,`nombrePromocion` varchar(50)
,`descripcion` varchar(150)
,`vigencia` date
,`nombreUsuario` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapromousuariogaleria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapromousuariogaleria` (
`idPromocion` int(11)
,`nombrePromocion` varchar(50)
,`imagen` mediumblob
,`descripcion` varchar(150)
,`vigencia` date
,`nombreUsuario` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaremisionclientprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaremisionclientprovee` (
`idRemision` int(11)
,`rfcTienda` varchar(16)
,`rfcCliente` varchar(20)
,`nombreProducto` varchar(45)
,`cantidad` int(11)
,`monto` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaremisionprodcatepromoclientprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaremisionprodcatepromoclientprovee` (
`idRemision` int(11)
,`rfcTienda` varchar(16)
,`rfcCliente` varchar(20)
,`nombreProducto` varchar(45)
,`nombrePromocion` varchar(50)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
,`cantidad` int(11)
,`monto` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistacategoria`
--
DROP TABLE IF EXISTS `vistacategoria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistacategoria`  AS  select `categoria`.`idCategoria` AS `idCategoria`,`categoria`.`nombreCategoria` AS `nombreCategoria`,`proveedor`.`nombreProveedor` AS `nombreProveedor` from (`categoria` join `proveedor` on((`categoria`.`idCategoria` = `proveedor`.`idProveedor`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistacomentarioclient`
--
DROP TABLE IF EXISTS `vistacomentarioclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistacomentarioclient`  AS  select `comentario`.`idComentario` AS `idComentario`,`cliente`.`nombreCliente` AS `nombreCliente`,`cliente`.`email` AS `email`,`comentario`.`comentario` AS `comentario` from (`comentario` join `cliente` on((`comentario`.`idComentario` = `cliente`.`idCliente`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistainventprodcatprovee`
--
DROP TABLE IF EXISTS `vistainventprodcatprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistainventprodcatprovee`  AS  select `i`.`idInventario` AS `idInventario`,`pr`.`nombreProducto` AS `nombreProducto`,`ct`.`nombreCategoria` AS `nombreCategoria`,`pv`.`nombreProveedor` AS `nombreProveedor`,`i`.`stock` AS `stock` from (((`inventario` `i` join `producto` `pr` on((`i`.`idInventario` = `pr`.`idProducto`))) join `categoria` `ct` on((`i`.`idInventario` = `ct`.`idCategoria`))) join `proveedor` `pv` on((`i`.`idInventario` = `pv`.`idProveedor`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistainventprodcatproveepromo`
--
DROP TABLE IF EXISTS `vistainventprodcatproveepromo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistainventprodcatproveepromo`  AS  select `i`.`idInventario` AS `idInventario`,`pr`.`nombreProducto` AS `nombreProducto`,`pm`.`nombrePromocion` AS `nombrePromocion`,`ct`.`nombreCategoria` AS `nombreCategoria`,`pv`.`nombreProveedor` AS `nombreProveedor`,`i`.`stock` AS `stock` from ((((`inventario` `i` join `producto` `pr` on((`i`.`idInventario` = `pr`.`idProducto`))) join `categoria` `ct` on((`i`.`idInventario` = `ct`.`idCategoria`))) join `proveedor` `pv` on((`i`.`idInventario` = `pv`.`idProveedor`))) join `promocion` `pm` on((`i`.`idInventario` = `pm`.`idPromocion`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapedidoproducclient`
--
DROP TABLE IF EXISTS `vistapedidoproducclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapedidoproducclient`  AS  select `p`.`idPedido` AS `idPedido`,`pr`.`nombreProducto` AS `nombreProducto`,`p`.`cantidad` AS `cantidad`,`p`.`totalVenta` AS `totalVenta`,`c`.`nombreCliente` AS `nombreCliente`,`c`.`email` AS `email` from ((`pedido` `p` join `producto` `pr` on((`p`.`idPedido` = `pr`.`idProducto`))) join `cliente` `c` on((`p`.`idPedido` = `c`.`idCliente`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaproduccateg`
--
DROP TABLE IF EXISTS `vistaproduccateg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaproduccateg`  AS  select `producto`.`idProducto` AS `idProducto`,`producto`.`nombreProducto` AS `nombreProducto`,`categoria`.`nombreCategoria` AS `nombreCategoria`,`producto`.`precio` AS `precio` from (`producto` join `categoria` on((`producto`.`idProducto` = `categoria`.`idCategoria`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaproducprovee`
--
DROP TABLE IF EXISTS `vistaproducprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaproducprovee`  AS  select `producto`.`idProducto` AS `idProducto`,`producto`.`nombreProducto` AS `nombreProducto`,`proveedor`.`nombreProveedor` AS `nombreProveedor`,`producto`.`precio` AS `precio` from (`producto` join `proveedor` on((`producto`.`idProducto` = `proveedor`.`idProveedor`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapromousuario`
--
DROP TABLE IF EXISTS `vistapromousuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapromousuario`  AS  select `promocion`.`idPromocion` AS `idPromocion`,`promocion`.`nombrePromocion` AS `nombrePromocion`,`promocion`.`descripcion` AS `descripcion`,`promocion`.`vigencia` AS `vigencia`,`usuario`.`nombreUsuario` AS `nombreUsuario` from (`promocion` join `usuario` on((`promocion`.`idPromocion` = `usuario`.`idUsuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapromousuariogaleria`
--
DROP TABLE IF EXISTS `vistapromousuariogaleria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapromousuariogaleria`  AS  select `promocion`.`idPromocion` AS `idPromocion`,`promocion`.`nombrePromocion` AS `nombrePromocion`,`galeria`.`imagen` AS `imagen`,`promocion`.`descripcion` AS `descripcion`,`promocion`.`vigencia` AS `vigencia`,`usuario`.`nombreUsuario` AS `nombreUsuario` from ((`promocion` join `galeria` on((`promocion`.`idPromocion` = `galeria`.`idGaleria`))) join `usuario` on((`promocion`.`idPromocion` = `usuario`.`idUsuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaremisionclientprovee`
--
DROP TABLE IF EXISTS `vistaremisionclientprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaremisionclientprovee`  AS  select `rm`.`idRemision` AS `idRemision`,`rm`.`rfcTienda` AS `rfcTienda`,`c`.`rfcCliente` AS `rfcCliente`,`pr`.`nombreProducto` AS `nombreProducto`,`rm`.`cantidad` AS `cantidad`,`rm`.`monto` AS `monto` from ((`remision` `rm` join `cliente` `c` on((`rm`.`idRemision` = `c`.`idCliente`))) join `producto` `pr` on((`rm`.`idRemision` = `pr`.`idProducto`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaremisionprodcatepromoclientprovee`
--
DROP TABLE IF EXISTS `vistaremisionprodcatepromoclientprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaremisionprodcatepromoclientprovee`  AS  select `rms`.`idRemision` AS `idRemision`,`rms`.`rfcTienda` AS `rfcTienda`,`c`.`rfcCliente` AS `rfcCliente`,`pr`.`nombreProducto` AS `nombreProducto`,`pm`.`nombrePromocion` AS `nombrePromocion`,`ct`.`nombreCategoria` AS `nombreCategoria`,`pv`.`nombreProveedor` AS `nombreProveedor`,`rms`.`cantidad` AS `cantidad`,`rms`.`monto` AS `monto` from (((((`remision` `rms` join `producto` `pr` on((`rms`.`idRemision` = `pr`.`idProducto`))) join `categoria` `ct` on((`rms`.`idRemision` = `ct`.`idCategoria`))) join `proveedor` `pv` on((`rms`.`idRemision` = `pv`.`idProveedor`))) join `promocion` `pm` on((`rms`.`idRemision` = `pm`.`idPromocion`))) join `cliente` `c` on((`rms`.`idRemision` = `c`.`idCliente`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `idEstatus` (`idEstatus`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`idEstatus`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`idGaleria`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`idLocalidad`),
  ADD KEY `idCiudad` (`idCiudad`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idEstatus` (`idEstatus`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`idPromocion`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `remision`
--
ALTER TABLE `remision`
  ADD PRIMARY KEY (`idRemision`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`idTelefono`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `idEstatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `idGaleria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `idLocalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `idPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `remision`
--
ALTER TABLE `remision`
  MODIFY `idRemision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idEstatus`) REFERENCES `estatus` (`idEstatus`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`idEstatus`) REFERENCES `estatus` (`idEstatus`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `remision`
--
ALTER TABLE `remision`
  ADD CONSTRAINT `remision_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `remision_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);
--
-- Base de datos: `abarrotesdpacos`
--
CREATE DATABASE IF NOT EXISTS `abarrotesdpacos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abarrotesdpacos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'Botanas'),
(2, 'Pan Dulce'),
(3, 'Sopas'),
(7, 'Dulces'),
(8, 'Desechables');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `rfcCliente` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombreCliente`, `direccion`, `telefono`, `email`, `rfcCliente`) VALUES
(1, 'Carlos Eduardo Abaunza Vazquez Montaño', 'Calle Villa Dorada Num. 234, Col. Centro; Acambaro, Gto', '417-172-9945', 'caredabavazmon55@gmail.com', 'CEAVM230998HK5J'),
(2, 'Sarai Dorantes Castillo', 'Calle Guadalupe Victoria Num. 972, Col. Centro; Morelia, Michoacan', '443-592-3571', 'saradorantillo@gmail.com', 'SDOCAS010397M4S'),
(3, 'Leticia Sandoval Herrera', 'Septima #1 Colonia Centro', '17242424', 'asc@gmail.com', 'LASC210493DF5M'),
(5, 'Liliana Sandoval', 'Rio Banco#55, Colonia Centro', '417-183-6342', 'liliana@liliana.com', 'LLST031295SFD3A'),
(6, 'Leticia', 'Septima #199', '17242424 ', 'asc@gmail.com', 'LASC210493DF5M ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `correoEmail` varchar(75) DEFAULT NULL,
  `comentario` varchar(150) DEFAULT NULL,
  `estatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `nombre`, `correoEmail`, `comentario`, `estatus`) VALUES
(2, 'SoyPro3794', 'kng08456@gmail.com', 'wfefwfew', '2'),
(3, 'DBMaster', 'alhsq287@hotmail.com', 'wefwefeefwwe', '1'),
(6, 'Equipo: Los Abandonados', 'los_abandonados@gmail.com', 'gersz sbrbnynt', '2'),
(8, 'MS Genio', 'lajssah@ksjddhs.com', 'Realizado', '2'),
(9, 'Tatoo', 'tatoo.35@gmail.com', 'Comentario desde el Front', '1'),
(10, 'Master', 'Master@Master.com', 'Master', '1'),
(11, 'Buster', 'buster@gmail.com', 'Black Cat', '1'),
(12, 'Buster', 'buster@gmail.com', 'Buster', '1'),
(13, 'Toshiba', 'pavillion@hp.com', 'HP', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `idGaleria` int(11) NOT NULL,
  `nombreImagen` varchar(45) DEFAULT NULL,
  `imagen` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`idGaleria`, `nombreImagen`, `imagen`) VALUES
(1, 'Cerveza Corona', 0x433a78616d70706874646f637370726f796563746f416261696d61676573312e6a7067),
(2, 'Corona Extra', 0x433a78616d70706874646f637370726f796563746f416261696d61676573342e6a7067),
(3, 'Corona Extra Playa', 0x433a78616d70706874646f637370726f796563746f416261696d61676573352e6a7067);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idInventario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idInventario`, `idProducto`, `idCategoria`, `idProveedor`, `stock`) VALUES
(3, 2, 2, 3, 40),
(5, 3, 2, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `totalVenta` float(9,2) DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  `estatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idProducto`, `cantidad`, `totalVenta`, `idCliente`, `estatus`) VALUES
(1, 2, 2, 34335.00, 1, 0),
(2, 3, 23, 5555.00, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(45) DEFAULT NULL,
  `idCategoria` int(11) NOT NULL,
  `precio` float(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `idCategoria`, `precio`) VALUES
(1, 'Maruchan', 3, 55.00),
(2, 'Bigote Cajeta 1pz.', 2, 10.00),
(3, 'Mantecadas Vainilla 4pz.', 2, 15.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `idPromocion` int(11) NOT NULL,
  `nombrePromocion` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `vigencia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`idPromocion`, `nombrePromocion`, `descripcion`, `vigencia`) VALUES
(1, 'Coca~Cola 600ml 2x$20', 'En la compra de 2 refrescos de Coca Cola 600ml.', '2019-02-28'),
(2, 'Noche Buena', 'Descuentos del 25% en toda la tienda en NAVIDAD', '2018-12-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombreProveedor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombreProveedor`) VALUES
(1, 'Gamesa'),
(2, 'Barcel'),
(3, 'Coca~Cola'),
(10, 'Bimbo'),
(11, 'Sonric\'s');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remision`
--

CREATE TABLE `remision` (
  `idRemision` int(11) NOT NULL,
  `rfcTienda` varchar(20) DEFAULT NULL,
  `idCliente` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `monto` float(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `remision`
--

INSERT INTO `remision` (`idRemision`, `rfcTienda`, `idCliente`, `idProducto`, `cantidad`, `monto`) VALUES
(17, 'HAGS237273SKJD', 3, 2, 15, 500.00),
(18, 'HAGS237273SKJD', 3, 2, 3, 40.00),
(20, 'KSD9487SDHT4F5', 1, 2, 24, 96.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(45) NOT NULL,
  `email` varchar(75) NOT NULL,
  `contrasena` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreUsuario`, `email`, `contrasena`) VALUES
(1, 'Molex', 'molexdarck98@hotmail.com', '55555 '),
(2, 'Drock', 'masterdrock@gmail.com', '54321'),
(5, 'Root', 'admind@admind.com', '123'),
(6, 'JUAN', 'ochoerror@gmail.com', '1111');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistacategoria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistacategoria` (
`idCategoria` int(11)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistacomentarioclient`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistacomentarioclient` (
`idComentario` int(11)
,`nombreCliente` varchar(50)
,`email` varchar(75)
,`comentario` varchar(150)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistainventprodcatprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistainventprodcatprovee` (
`idInventario` int(11)
,`nombreProducto` varchar(45)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
,`stock` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistainventprodcatproveepromo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistainventprodcatproveepromo` (
`idInventario` int(11)
,`nombreProducto` varchar(45)
,`nombrePromocion` varchar(50)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
,`stock` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapedidoproducclient`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapedidoproducclient` (
`idPedido` int(11)
,`nombreProducto` varchar(45)
,`cantidad` int(11)
,`totalVenta` float(9,2)
,`nombreCliente` varchar(50)
,`email` varchar(75)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaproduccateg`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaproduccateg` (
`idProducto` int(11)
,`nombreProducto` varchar(45)
,`nombreCategoria` varchar(45)
,`precio` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaproducprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaproducprovee` (
`idProducto` int(11)
,`nombreProducto` varchar(45)
,`nombreProveedor` varchar(45)
,`precio` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapromousuario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapromousuario` (
`idPromocion` int(11)
,`nombrePromocion` varchar(50)
,`descripcion` varchar(150)
,`vigencia` date
,`nombreUsuario` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistapromousuariogaleria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistapromousuariogaleria` (
`idPromocion` int(11)
,`nombrePromocion` varchar(50)
,`imagen` mediumblob
,`descripcion` varchar(150)
,`vigencia` date
,`nombreUsuario` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaremisionclientprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaremisionclientprovee` (
`idRemision` int(11)
,`rfcTienda` varchar(20)
,`rfcCliente` varchar(20)
,`nombreProducto` varchar(45)
,`cantidad` int(11)
,`monto` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaremisionprodcatepromoclientprovee`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaremisionprodcatepromoclientprovee` (
`idRemision` int(11)
,`rfcTienda` varchar(20)
,`rfcCliente` varchar(20)
,`nombreProducto` varchar(45)
,`nombrePromocion` varchar(50)
,`nombreCategoria` varchar(45)
,`nombreProveedor` varchar(45)
,`cantidad` int(11)
,`monto` float(9,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistacategoria`
--
DROP TABLE IF EXISTS `vistacategoria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistacategoria`  AS  select `categoria`.`idCategoria` AS `idCategoria`,`categoria`.`nombreCategoria` AS `nombreCategoria`,`proveedor`.`nombreProveedor` AS `nombreProveedor` from (`categoria` join `proveedor` on((`categoria`.`idCategoria` = `proveedor`.`idProveedor`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistacomentarioclient`
--
DROP TABLE IF EXISTS `vistacomentarioclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistacomentarioclient`  AS  select `comentario`.`idComentario` AS `idComentario`,`cliente`.`nombreCliente` AS `nombreCliente`,`cliente`.`email` AS `email`,`comentario`.`comentario` AS `comentario` from (`comentario` join `cliente` on((`comentario`.`idComentario` = `cliente`.`idCliente`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistainventprodcatprovee`
--
DROP TABLE IF EXISTS `vistainventprodcatprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistainventprodcatprovee`  AS  select `i`.`idInventario` AS `idInventario`,`pr`.`nombreProducto` AS `nombreProducto`,`ct`.`nombreCategoria` AS `nombreCategoria`,`pv`.`nombreProveedor` AS `nombreProveedor`,`i`.`stock` AS `stock` from (((`inventario` `i` join `producto` `pr` on((`i`.`idInventario` = `pr`.`idProducto`))) join `categoria` `ct` on((`i`.`idInventario` = `ct`.`idCategoria`))) join `proveedor` `pv` on((`i`.`idInventario` = `pv`.`idProveedor`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistainventprodcatproveepromo`
--
DROP TABLE IF EXISTS `vistainventprodcatproveepromo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistainventprodcatproveepromo`  AS  select `i`.`idInventario` AS `idInventario`,`pr`.`nombreProducto` AS `nombreProducto`,`pm`.`nombrePromocion` AS `nombrePromocion`,`ct`.`nombreCategoria` AS `nombreCategoria`,`pv`.`nombreProveedor` AS `nombreProveedor`,`i`.`stock` AS `stock` from ((((`inventario` `i` join `producto` `pr` on((`i`.`idInventario` = `pr`.`idProducto`))) join `categoria` `ct` on((`i`.`idInventario` = `ct`.`idCategoria`))) join `proveedor` `pv` on((`i`.`idInventario` = `pv`.`idProveedor`))) join `promocion` `pm` on((`i`.`idInventario` = `pm`.`idPromocion`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapedidoproducclient`
--
DROP TABLE IF EXISTS `vistapedidoproducclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapedidoproducclient`  AS  select `p`.`idPedido` AS `idPedido`,`pr`.`nombreProducto` AS `nombreProducto`,`p`.`cantidad` AS `cantidad`,`p`.`totalVenta` AS `totalVenta`,`c`.`nombreCliente` AS `nombreCliente`,`c`.`email` AS `email` from ((`pedido` `p` join `producto` `pr` on((`p`.`idPedido` = `pr`.`idProducto`))) join `cliente` `c` on((`p`.`idPedido` = `c`.`idCliente`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaproduccateg`
--
DROP TABLE IF EXISTS `vistaproduccateg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaproduccateg`  AS  select `producto`.`idProducto` AS `idProducto`,`producto`.`nombreProducto` AS `nombreProducto`,`categoria`.`nombreCategoria` AS `nombreCategoria`,`producto`.`precio` AS `precio` from (`producto` join `categoria` on((`producto`.`idProducto` = `categoria`.`idCategoria`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaproducprovee`
--
DROP TABLE IF EXISTS `vistaproducprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaproducprovee`  AS  select `producto`.`idProducto` AS `idProducto`,`producto`.`nombreProducto` AS `nombreProducto`,`proveedor`.`nombreProveedor` AS `nombreProveedor`,`producto`.`precio` AS `precio` from (`producto` join `proveedor` on((`producto`.`idProducto` = `proveedor`.`idProveedor`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapromousuario`
--
DROP TABLE IF EXISTS `vistapromousuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapromousuario`  AS  select `promocion`.`idPromocion` AS `idPromocion`,`promocion`.`nombrePromocion` AS `nombrePromocion`,`promocion`.`descripcion` AS `descripcion`,`promocion`.`vigencia` AS `vigencia`,`usuario`.`nombreUsuario` AS `nombreUsuario` from (`promocion` join `usuario` on((`promocion`.`idPromocion` = `usuario`.`idUsuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistapromousuariogaleria`
--
DROP TABLE IF EXISTS `vistapromousuariogaleria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistapromousuariogaleria`  AS  select `promocion`.`idPromocion` AS `idPromocion`,`promocion`.`nombrePromocion` AS `nombrePromocion`,`galeria`.`imagen` AS `imagen`,`promocion`.`descripcion` AS `descripcion`,`promocion`.`vigencia` AS `vigencia`,`usuario`.`nombreUsuario` AS `nombreUsuario` from ((`promocion` join `galeria` on((`promocion`.`idPromocion` = `galeria`.`idGaleria`))) join `usuario` on((`promocion`.`idPromocion` = `usuario`.`idUsuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaremisionclientprovee`
--
DROP TABLE IF EXISTS `vistaremisionclientprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaremisionclientprovee`  AS  select `rm`.`idRemision` AS `idRemision`,`rm`.`rfcTienda` AS `rfcTienda`,`c`.`rfcCliente` AS `rfcCliente`,`pr`.`nombreProducto` AS `nombreProducto`,`rm`.`cantidad` AS `cantidad`,`rm`.`monto` AS `monto` from ((`remision` `rm` join `cliente` `c` on((`rm`.`idRemision` = `c`.`idCliente`))) join `producto` `pr` on((`rm`.`idRemision` = `pr`.`idProducto`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaremisionprodcatepromoclientprovee`
--
DROP TABLE IF EXISTS `vistaremisionprodcatepromoclientprovee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaremisionprodcatepromoclientprovee`  AS  select `rms`.`idRemision` AS `idRemision`,`rms`.`rfcTienda` AS `rfcTienda`,`c`.`rfcCliente` AS `rfcCliente`,`pr`.`nombreProducto` AS `nombreProducto`,`pm`.`nombrePromocion` AS `nombrePromocion`,`ct`.`nombreCategoria` AS `nombreCategoria`,`pv`.`nombreProveedor` AS `nombreProveedor`,`rms`.`cantidad` AS `cantidad`,`rms`.`monto` AS `monto` from (((((`remision` `rms` join `producto` `pr` on((`rms`.`idRemision` = `pr`.`idProducto`))) join `categoria` `ct` on((`rms`.`idRemision` = `ct`.`idCategoria`))) join `proveedor` `pv` on((`rms`.`idRemision` = `pv`.`idProveedor`))) join `promocion` `pm` on((`rms`.`idRemision` = `pm`.`idPromocion`))) join `cliente` `c` on((`rms`.`idRemision` = `c`.`idCliente`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`idGaleria`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idInventario`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`idPromocion`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `remision`
--
ALTER TABLE `remision`
  ADD PRIMARY KEY (`idRemision`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `idGaleria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idInventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `idPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `remision`
--
ALTER TABLE `remision`
  MODIFY `idRemision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `remision`
--
ALTER TABLE `remision`
  ADD CONSTRAINT `remision_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `remision_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);
--
-- Base de datos: `disp_addcatalogo`
--
CREATE DATABASE IF NOT EXISTS `disp_addcatalogo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `disp_addcatalogo`;
--
-- Base de datos: `jicei`
--
CREATE DATABASE IF NOT EXISTS `jicei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jicei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `idCatalogo` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `precioProducto` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`idCatalogo`, `producto`, `imagen`, `precioProducto`, `descripcion`) VALUES
(8, 'Panel', 'uploads/producto2.jpg', '338', 'Muy buen producto'),
(9, 'Cargador solar SPORT', 'uploads/ter.jpg', '299', 'Funda deportiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL,
  `revisado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `correo`, `mensaje`, `status`, `revisado`) VALUES
(6, 'vane@gmail.com', 'Hola admin', 1, 'Hilda carolina Ortiz Vazquez '),
(7, 'vane@gmail.com', 'holi', 1, 'Hilda carolina Ortiz Vazquez '),
(8, 'molexisdarck98@hotmail.com', 'Excelente producto', 1, 'Gabriel Carrasquedo Jiménez '),
(9, 'chino@gmail.com', 'Falta mejorar el diseño de la funda', 1, 'Rosa Icela Rubio Muñoz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

CREATE TABLE `faq` (
  `idPregunta` int(11) NOT NULL,
  `pregunta` varchar(100) NOT NULL,
  `respuesta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`idPregunta`, `pregunta`, `respuesta`) VALUES
(2, 'Cómo puedo solicitar un producto personalizado', 'Los productos no son personalizados, lo unico que se puede personalizar es la funda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `cantidadProducto` varchar(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `nombreAdministrador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `cantidadProducto`, `fecha`, `nombreAdministrador`) VALUES
(4, 'Panel', '12', '2019-03-29', 'Gabriel Carrasquedo Jiménez '),
(5, 'Cargador solar SPORT', '03', '2019-04-02', 'Joselyn Iraed Piñón');

--
-- Disparadores `producto`
--
DELIMITER $$
CREATE TRIGGER `tg_adpro` AFTER INSERT ON `producto` FOR EACH ROW begin 
	update  catalogo set preciosProducto=new.cantidadProducto where idcatalogo=new.idProducto;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `puestoUsuario` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `privilegios` tinyint(4) NOT NULL DEFAULT '3',
  `password` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreUsuario`, `puestoUsuario`, `correo`, `status`, `privilegios`, `password`, `imagen`) VALUES
(26, 'Gabriel Carrasquedo Jiménez ', '5', 'jiceigabriel@jicei.com', 1, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/head.jpg'),
(27, 'Hilda carolina Ortiz Vazquez ', '1', 'jicei.caro@jicei.com', 1, 1, 'cda70e74e7756c5119107939a47a84bd', 'uploads/10176201_345303778982050_7381472659641835334_n.jpg'),
(28, 'Joselyn Iraed Piñón', '4', 'jicei.joselyn@jicei.com', 1, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/10435097_309692545876507_1866914855212481295_n.jpg'),
(29, 'Idalmi Valdez Gonzales', '3', 'jiceiidalmi@jicei.com', 1, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/12065935_499893586856401_1361865878472576568_n.jpg'),
(30, 'Rosa Icela Rubio Muñoz', '2', 'jiceirosa@jicei.com', 0, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/10556391_310181132494315_4209954833919308213_n.jpg'),
(31, 'Master Drock', '1', 'admistrador@jicei.com', 1, 2, 'admin1234567', 'uploads/11050675_431308753714885_3914618048205227332_n.jpg');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `usuario_BEFORE_INSERT` BEFORE INSERT ON `usuario` FOR EACH ROW BEGIN
	SET NEW.status=1;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`idCatalogo`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idPregunta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `idCatalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `faq`
--
ALTER TABLE `faq`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"angular\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('abarrotesdpacos', 1, 'Relaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"jicei\",\"table\":\"catalogo\"},{\"db\":\"proyectojicei\",\"table\":\"catalogo\"},{\"db\":\"proyectojicei\",\"table\":\"faq\"},{\"db\":\"proyectojicei\",\"table\":\"comentario\"},{\"db\":\"proyectojicei\",\"table\":\"usuario\"},{\"db\":\"proyectojicei\",\"table\":\"producto\"},{\"db\":\"jicei\",\"table\":\"usuario\"},{\"db\":\"proyectointegrador\",\"table\":\"catalogo\"},{\"db\":\"abarrotesdepacos\",\"table\":\"usuario\"},{\"db\":\"jicei\",\"table\":\"comentario\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('abarrotesdpacos', 'categoria', 1, 443, 213),
('abarrotesdpacos', 'cliente', 1, 1114, 177),
('abarrotesdpacos', 'inventario', 1, 77, 165),
('abarrotesdpacos', 'pedido', 1, 757, 256),
('abarrotesdpacos', 'producto', 1, 448, 107),
('abarrotesdpacos', 'proveedor', 1, 448, 290),
('abarrotesdpacos', 'remision', 1, 807, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'abarrotesdpacos', 'cliente', '{\"sorted_col\":\"`cliente`.`idCliente` ASC\"}', '2019-03-01 09:36:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-04-05 23:09:16', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `proyectojicei`
--
CREATE DATABASE IF NOT EXISTS `proyectojicei` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyectojicei`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddCatalogo` (IN `idCatalogo` INT, IN `producto` VARCHAR(100), IN `imagen` VARCHAR(100), IN `precioProducto` VARCHAR(50), IN `descripcion` VARCHAR(1000))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddComentario` (IN `idComentario` INT, IN `correo` VARCHAR(100), IN `mensaje` VARCHAR(1000), IN `status` INT, IN `revisado` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddFaq` (IN `idPregunta` INT, IN `pregunta` VARCHAR(100), IN `respuesta` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddProducto` (IN `idProducto` INT, IN `nombreProducto` VARCHAR(100), IN `cantidadProducto` VARCHAR(50), IN `fecha` VARCHAR(50), IN `nombreAdministrador` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddUsuario` (IN `idUsuario` INT, IN `nombreUsuario` VARCHAR(100), IN `puestoUsuario` VARCHAR(50), IN `correo` VARCHAR(100), IN `status` INT, IN `privilegios` TINYINT(4), IN `password` VARCHAR(50), IN `imagen` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarCatalogo` ()  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarComentario` ()  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarFaqs` ()  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarProducto` ()  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarUsuario` ()  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelCatalogo` (IN `idCatal` INT)  BEGIN
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
			SELECT ("El producto fue ELIMINADO del Catalogo.");
            
		COMMIT;
            
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelComentario` (IN `idComent` INT)  BEGIN
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
			SELECT ("El comentario fue ELIMINADO.");
            
		COMMIT;
            
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelFaq` (IN `idPregunt` INT)  BEGIN
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
			SELECT ("La pregunta fue ELIMINADA.");
            
		COMMIT;
            
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelProducto` (IN `idProduc` INT)  BEGIN
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
			SELECT ("El producto fue ELIMINADO.");
            
		COMMIT;
            
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DelUsuario` (IN `idUsuari` INT)  BEGIN
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
			SELECT ("El usuario fue ELIMINADO.");
            
		COMMIT;
            
    COMMIT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpCatalogo` (IN `idCatalogoUp` INT, IN `productoUp` VARCHAR(100), IN `imagenUp` VARCHAR(100), IN `precioProductoUp` VARCHAR(50), IN `descripcionUp` VARCHAR(1000))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpComentario` (IN `idComentarioUp` INT, IN `correoUp` VARCHAR(100), IN `mensajeUp` VARCHAR(1000), IN `statusUp` INT, IN `revisadoUp` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpFaq` (IN `idPreguntaUp` INT, IN `preguntaUp` VARCHAR(100), IN `respuestaUp` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpProducto` (IN `idProductoUp` INT, IN `nombreProductoUp` VARCHAR(100), IN `cantidadProductoUp` VARCHAR(50), IN `fechaUp` VARCHAR(50), IN `nombreAdministradorUp` VARCHAR(100))  BEGIN
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpUsuario` (IN `idUsuarioUp` INT, IN `nombreUsuarioUp` VARCHAR(100), IN `puestoUsuarioUp` VARCHAR(50), IN `correoUp` VARCHAR(100), IN `statusUp` INT, IN `privilegiosUp` TINYINT(4), IN `passwordUp` VARCHAR(100), IN `imagenUp` VARCHAR(100))  BEGIN
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `idCatalogo` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `precioProducto` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`idCatalogo`, `producto`, `imagen`, `precioProducto`, `descripcion`) VALUES
(9, ' Cargador solar SPORT', ' uploads/operadores.jpg', '900', ' Funda deportiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL,
  `revisado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `correo`, `mensaje`, `status`, `revisado`) VALUES
(6, 'vane@gmail.com', 'Hola admin', 1, 'Hilda carolina Ortiz Vazquez '),
(8, 'molexisdarck98@hotmail.com', 'Excelente producto', 1, 'Gabriel Carrasquedo Jiménez ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

CREATE TABLE `faq` (
  `idPregunta` int(11) NOT NULL,
  `pregunta` varchar(100) NOT NULL,
  `respuesta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`idPregunta`, `pregunta`, `respuesta`) VALUES
(3, 'Puedo solicitar un producto personalizado', 'Los productos no son personalizados, lo unico que se puede personalizar es la funda'),
(4, ' Como puedo solicitar un producto', ' Se solicita dejando un comentario con la cantidad de productos requeridos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `cantidadProducto` varchar(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `nombreAdministrador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `cantidadProducto`, `fecha`, `nombreAdministrador`) VALUES
(6, 'Funda en forma de e', '30', '2019-04-01', 'Hilda carolina Ortiz Vazquez ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `puestoUsuario` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `privilegios` tinyint(4) NOT NULL DEFAULT '3',
  `password` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreUsuario`, `puestoUsuario`, `correo`, `status`, `privilegios`, `password`, `imagen`) VALUES
(27, 'Hilda carolina Ortiz Vazquez ', '1', 'jicei.caro@jicei.com', 1, 1, 'cda70e74e7756c5119107939a47a84bd', 'uploads/10176201_345303778982050_7381472659641835334_n.jpg'),
(28, 'Joselyn Iraed Piñón', '4', 'jicei.joselyn@jicei.com', 1, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/10435097_309692545876507_1866914855212481295_n.jpg'),
(29, 'Idalmi Valdez Gonzales', '3', 'jiceiidalmi@jicei.com', 1, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/12065935_499893586856401_1361865878472576568_n.jpg'),
(30, 'Rosa Icela Rubio Muñoz', '2', 'jiceirosa@jicei.com', 0, 2, 'cda70e74e7756c5119107939a47a84bd', 'uploads/10556391_310181132494315_4209954833919308213_n.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`idCatalogo`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`idPregunta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `idCatalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `faq`
--
ALTER TABLE `faq`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
