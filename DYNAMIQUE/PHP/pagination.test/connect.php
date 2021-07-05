
<?php
try{
 
 // Connexion à la base
 $db = new PDO('mysql:host=localhost; dbname=jarditou', 'root', '');
 $db->exec('SET NAMES "UTF8"');

}
catch(PDOException $e){

 //Gestion des exceptions
 echo 'Erreur :' .$e->getMessage();
 die();
}
?>