<?php
if(isset($_GET['page']) && !empty($_GET['page'])){

    $page_courante = (int) strip_tags($_GET['page']);
 

}else{ $page_courante=1;}

require_once('connect.php');


$sql = 'SELECT COUNT(*) AS nb_produits FROM `produits`;';
$query = $db->prepare($sql);

$query->execute();

$result = $query->fetch();

$nbproduits = (int) $result['nb_produits'];

$parPage = 10;

$pages = ceil($nbproduits / $parPage);
$premier = ($page_courante * $parPage) - $parPage;

$sql = 'SELECT * FROM `produits` ORDER BY `pro_id` DESC LIMIT :premier, :parpage;';
$query=$db->prepare($sql);
$query->bindValue(':premier', $premier, PDO::PARAM_INT);
$query->bindValue(':parpage', $parPage, PDO::PARAM_INT);
$query->execute();

$produits =$query->fetchAll(PDO::FETCH_ASSOC);


require_once('close.php');


?>




<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <main class="container">
        <div class="row">
            <section class='col-12'>
            <h1>liste produits</h1>
            <table class="table table-striped">
                <thead>
                    <th>ID</th> 
                    <th>Libellé</th>
                    <th>Prix</th>
                </thead>
                <tbody>
                <?php foreach($produits as $produit){
                    ?>

                    <tr>
                       <td><?= $produit['pro_id']?></td>
                       <td><?= $produit['pro_libelle']?></td>
                       <td><?= $produit['pro_prix']?></td>
                    </tr>
               
                    <?php
                }   ?>
                </tbody>
 
            </table>
            <nav  >
                <ul class="pagination justify-content-end ">
                     <!-- Lien vers la page précédente (désactivé si on se trouve sur la 1ère page) -->
                     <li class="page-item <?= ($page_courante == 1) ? "disabled" : "" ?>">
                     <a href="./?page=<?= $page_courante - 1 ?>" class="page-link">Précédente</a>
                    </li>
                       <?php for($page = 1; $page <= $pages; $page++): ?>
                       <!-- Lien vers chacune des pages (activé si on se trouve sur la page correspondante) -->
                     <li class=" page-item <?= ($page_courante == $page) ? "active" : "" ?>">
                    <a href="./?page=<?= $page ?>" class="page-link"><?= $page ?></a>
                      </li>
                    <?php endfor ?>
            <!-- Lien vers la page suivante (désactivé si on se trouve sur la dernière page) -->
            <li class="page-item <?= ($page_courante == $pages) ? "disabled" : "" ?>">
            <a href="./?page=<?= $page_courante + 1 ?>" class="page-link">Suivante</a>
        </li>
    </ul>
</nav>

            </section>
        </div>
    </main>
    
</body>
</html>