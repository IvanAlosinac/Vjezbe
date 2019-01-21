<?php

$host = "localhost";
$user = "edunova";
$password = "edunova";
$dbname = "edunovapp18";

//set Dsn

$dsn = "mysql:host=" . $host .";dbname=" . $dbname; 

// create PDO instance (=konekcija)
$pdo = new PDO($dsn, $user, $password);

// pdo query 

$stmt = $pdo->query("SELECT * FROM smjer");



while ($row = $stmt->fetch(PDO::FETCH_OBJ)){
    echo $row->naziv . "<br />";
    }


// prepared statements (prepare & execute)

// fetch multiple posts

// positional paramaters
$f = "PHP programer";
$verificiran = false;
$id = 2;
/*$sql = "SELECT * FROM smjer WHERE naziv = ?";
$stmt = $pdo->prepare($sql);
$stmt->executes([$f]);
$posts = $stmt->fetchAll(PDO::FETCH_OBJ);
*/
//var_dump($posts);


//named parameters


/* $sql = "SELECT * FROM smjer WHERE naziv = :naziv && verificiran = :verificiran";
$stmt = $pdo->prepare($sql);
$stmt->execute(["naziv"=> $f, "verificiran" => $verificiran]);
$posts = $stmt->fetchAll(PDO::FETCH_OBJ);

foreach ($posts as $posts){
    echo $posts-> naziv;
 } */

 // FETCH SINGLE POST

 /*  $sql = "SELECT * FROM smjer WHERE sifra = :sifra";
$stmt = $pdo->prepare($sql);
$stmt->execute(["sifra"=> $id]);
$posts = $stmt->fetch(PDO::FETCH_OBJ);

echo $posts->cijena;
 */

 // inserting data

 /* $naziv = "Engleski jezik";
 $trajanje = 120;
 $cijena = 5000;
 $upisnina = 500;
 $verificiran = true;

 $sql = "INSERT into smjer(naziv,trajanje,cijena,upisnina,verificiran) 
          VALUES (:naziv, :trajanje, :cijena, :upisnina, :verificiran)";
$stmt = $pdo->prepare($sql);
$stmt->execute(["naziv" => $naziv, "trajanje" => $trajanje, "cijena" => $cijena, 
                "upisnina" => $upisnina, "verificiran" => $verificiran]);
echo "Dodano!"; */

// search data (using "like")

/* $search = "PHP programer";
$sql = "SELECT FROM smjer WHERE naziv LIKE ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$search]);
$posts = $stmt->fetchALL(PDO::FETCH_OBJ);

foreach ($posts as $posts){
    echo $posts->naziv;

} */

// delete data
$id = 5;
$sql = "DELETE FROM smjer WHERE id = :id";
$stmt = $pdo->prepare($sql);
$stmt->execute(["id"=>$id]);
echo "Obrisano!";

















