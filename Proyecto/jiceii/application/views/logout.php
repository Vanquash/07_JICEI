<?php
session_start();
//Destrulle variables "unset"
unset($_SESSION['email']);
//Destrulle las cockis
session_destroy();
header('Location: login.php?info=2');
redirect('welcome/index');
