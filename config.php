<?php

$mysql = new mysqli('localhost', 'editor', '123456','site');

if ($mysql == FALSE){
    echo "Erro na conexão";
}
