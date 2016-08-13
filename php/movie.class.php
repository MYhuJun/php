<?php
    class movie extends hostClass
    {
       public function get(){
            $callback = $_GET['callback']; 
            $page = $_GET['page'];
            $page_state = $_GET['page']*10-10;
            $sql = "select `id`,`title`,`lang`,`manuscript`,`translate`,`collate2`,`time`,`newtime` from t_movie  order by newtime desc limit ".$page_state.",10";
            $rs  = $this -> get_all($sql);
            echo $callback.'('.json_encode($rs).')'; 
       }

       public function deletemovie(){
          $callback = $_GET['callback'];
          $condition = "id=".$_GET['pid'];
          $rs  = $this -> delete('t_movie',$condition);
          if($rs){
            echo $callback.'('.json_encode(array('info' =>'删除成功' ,'number'=>400 )).')';
          }else{
             echo $callback.'('.json_encode(array('info' =>'删除失败' ,'number'=>404 )).')';
          }
       }

       public function updatemovie(){
          $callback = $_GET['callback'];
          $condition = "id=".$_GET['pid'];
          array_shift($_GET);//去数组里PID
          array_pop($_GET);//去数组里callback
          $rs = $this ->update('t_movie',$_GET,$condition);
           if($rs){
            echo $callback.'('.json_encode(array('info' =>'修改成功' ,'number'=>2000 )).')';
          }else{
            echo $callback.'('.json_encode(array('info' =>'修改失败' ,'number'=>2034 )).')';
          }
       }

       public function inset(){
         $callback = $_GET['callback'];
         array_pop($_GET);//去数组里callback
         date_default_timezone_set('PRC');//+8时区
         $time    = date("Y-m-d H:i:s",time());
         $newtime = array('newtime' =>$time);//定义newtime
         $newarr  = array_merge($_GET, $newtime);//合并为新的数组
         $rs = $this ->insert('t_movie',$newarr);
           if($rs){
            echo $callback.'('.json_encode(array('info' =>'写入成功' ,'number'=>2222 )).')';
          }else{
            echo $callback.'('.json_encode(array('info' =>'写入失败' ,'number'=>2002 )).')';
          }
       }
    }
?>