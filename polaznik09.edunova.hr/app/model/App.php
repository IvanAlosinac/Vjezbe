<?php
final class App{

    static function start()
    {
        $pathInfo = Request::pathInfo();
        $pathInfo = trim($pathInfo, "/");

        $pathParts = explode("/", $pathInfo);




        if(!isset($pathParts[0]) || empty($pathParts[0])){
            $controller = "Index";
        }else{
            if($pathParts[0]==="kontakt"){
                $controller = "Kontakt";
            }elseif($pathParts[0]==="onama"){
                $controller = "Onama";
            }else{
            $controller=ucfirst(strtolower($pathParts[0]));
            }
        
        }

        
        $controller .= "Controller";

        if(!isset($parthParts[1]) || empty($pathParts[1])){
            $action = "index";
        }else{
            $action = strtolower($pathParts[1]);
        }

        if(class_exists($controller) && method_exists($controller, $action)){
            $instanca = new $controller();
            $instanca->$action();
        }else{
            header("HTTP/1.0 404 Not Found");
        }


    }

    static function config($key)
    {
        $config = include BP . "app/config.php";
        return $config[$key];
    }



}