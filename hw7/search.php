<?php
    // connect database 
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "data";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    // check connection error 
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {
        // connect success, do nothing
        // echo "Connect success.";
    }

    // $kw = $_GET['kw'];
    $kw = $_POST['kw'];
    $typ = $_POST['typ'];
    if ($typ == 1){
        $sql = "SELECT *
            FROM Music
            WHERE Name_song LIKE '%$kw%' OR Album_name LIKE '%$kw%'";
        $result = $mysqli->query($sql);
    }else {
        $sql = "SELECT *
            FROM Music
            WHERE Name_song LIKE '%$kw%' and Album_name LIKE '%$typ%'";
        $result = $mysqli->query($sql);
    }

    $arr = array();
    if ($result->num_rows > 0){
        // Convert MySQL Result Set to PHP Array of object
        while($row = $result->fetch_object())
        {
            $arr[] = $row;
        }
    } else {
        // echo "Not found.";
    }
    echo json_encode($arr);