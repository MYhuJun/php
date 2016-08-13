<?php
 require './host.class.php';
 $pathurl = $_SERVER['PATH_INFO'];
 $path    = explode("/",ltrim($pathurl,"/"));
 require $path[0].'.class.php';
 $db = new $path[0];
 $db ->$path[1]();
?>