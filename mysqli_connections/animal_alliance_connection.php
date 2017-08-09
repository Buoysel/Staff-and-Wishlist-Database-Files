<?php 
    DEFINE('DB_USER', 'AAUser');
    DEFINE('DB_PASSWORD', 'AAPass');
    DEFINE('DB_HOST', 'localhost');
    DEFINE('DB_NAME', 'animal_alliance');

    $dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die('Could not connect to the animal_alliance database' . mysqli_connect_error());
?>