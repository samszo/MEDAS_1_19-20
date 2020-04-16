<?php
$lienMySQL = new PDO('mysql:host=localhost;dbname=biblio', 'testCours',''); 
$requete='SELECT * FROM auteurs WHERE id_auteur = '.$_GET['id'];
$resultat=$lienMySQL->query($requete); 
foreach($resultat as $auteur){
    //print_r($auteur); 
    echo $auteur['prenom'].' '.$auteur['nom'].'<br>';
}
?>