<?php

session_start();
$host = 'localhost';
$dbname = 'miniProjet';
$username = 'jihen';
$password = 'jihen';

if(isset($_POST['insert'])){

  try {
  // se connecter à mysql
  $pdo = new PDO("mysql:host=$host;dbname=$dbname","$username","$password");
  } catch (PDOException $exc) {
    echo $exc->getMessage();
    exit();
  }

  // récupérer les valeurs 
  $nameuser = $_POST['nameuser'];
  $prenomuser = $_POST['prenomuser'];
  $emailuser = $_POST['emailuser'];
  $passworduser = $_POST['passworduser'];

  // Requête mysql pour insérer des données
  //$sql = "INSERT INTO `user`(` iduser`, `nameuser`, `prenomuser`, `emailuser`, `passworduser`, `dateaccess`, `role`,`etatuser `) VALUES (:firstname,:prenomuser,:emailuser,:passworduser)";
  $res = $pdo->prepare("insert into reservation values(null, ?,?,?,?,'','client', 1");
  $req->bindParam(1, $names);
  $req->bindParam(2, $prenomuser);
  $req->bindParam(3, $emailuser);
  $req->bindParam(4, $password);
  $exec = $req->execute();
  //$exec = $res->execute(array(":firstname"=>$firstname,":lastname"=>$lastname));
  // vérifier si la requête d'insertion a réussi
  if($exec){
    echo 'Données insérées';
  }else{
    echo "Échec de l'opération d'insertion";
  }
}
?>