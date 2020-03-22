<?php
    /*$data =new stdClass();
    $data1 =new stdClass();
    $data2 =new stdClass();

    $data1-> name = 'dat';
    $data1-> id = 1;
    $data2-> name = 'loc';
    $data2-> id = 2;
    $data = array($data1,$data2);
    $data_json = json_encode($data);
    echo $_POST['name'];
    $data1 = array( 'name'=>'dat','id' => 1);
    $data2 = array( 'name'=>'loc','id' => 2);
    $data = array('data1'=> $data1,'data2'=> $data2);
    $data_json = json_encode($data);
    echo $data_json;
    $dataInput = file_get_contents('php://input');
    $decode = json_decode($dataInput,true);
    //echo var_dump($decode);
    $encode = json_encode($decode);
    echo $encode;
    */
    $movie_1="movie_1";
    $movie_2="movie_2";
    $movie_3="movie_3";
    $movie_4="movie_4";
    $movie_5="movie_5";
    $id1=1;
    $id2=2;
    $data=array();
    $name1='date';
    ${'data'.$id1} = array( 'name'=>'dat','id' => 1);
    $data2 = array( 'name'=>'loc','id' => 2);
    $data['movie_'.$id1] = array( 'name'=>'dat','id' => 5);
    $data['movie_'.$id2] = array( 'name'=>'loc','id' => 2);
    $data_final["HanhDong"]= $data;
    $data_json = json_encode($data_final);
    echo $data_json;
    echo $data['movie_1']["name"]
?>