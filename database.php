<?php

    $servername = "127.0.0.1";
    $username = "root";
    $dbname = "blog2";
    

    try {
        $connection = new PDO("mysql:host=$servername;dbname=$dbname", $username);
        $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected to $dbname at $servername successfully.";
    }
    catch(PDOException $e)
    {
        echo 'ovo je PDO greska';
        echo $e->getMessage();
    }

   


    function fetchData($connection, $sql, $fetchAll = false) {
        $statement = $connection->prepare($sql);
        $statement->execute();
        
        $statement->setFetchMode(PDO::FETCH_ASSOC);
        if($fetchAll) {
            return $statement->fetchAll();
        } 
        
        return $statement->fetch();
    }
    
?>