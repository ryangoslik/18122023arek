<?php include_once("polaczenie.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="Untitled-1.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pobieranie danych z bd</title>
</head>
<body>
    <?php
    $zapytanie1 = $polaczenie->query("SELECT autorzy.name, ksiazki.nazwa FROM autorzy INNER JOIN ksiazki ON autorzy.IDA = ksiazki.IDA"); //inner join
    $zapytanie2 = $polaczenie->query("SELECT autorzy.name, ksiazki.nazwa FROM autorzy LEFT JOIN ksiazki ON autorzy.IDA = ksiazki.IDA"); //left join
    $zapytanie3 = $polaczenie->query("SELECT autorzy.name, ksiazki.nazwa FROM autorzy RIGHT JOIN ksiazki ON autorzy.IDA = ksiazki.IDA");//right join
    ?>
    <div class="zapytanie1">
        <?php 
        echo ("<h1>INNER JOIN</h1>");
        while(list($autor,$ksiazka)=mysqli_fetch_row($zapytanie1)){
            echo ("$autor - $ksiazka <br>");
        }
        ?>
    </div>
    <div class="zapytanie2"><?php 
    echo ("<h1>Left JOIN</h1>");
    while(list($autor,$ksiazka)=mysqli_fetch_row($zapytanie2)){
            echo ("$autor - $ksiazka <br>");
        }
        ?></div>
    <div class="zapytanie3"><?php 
    echo ("<h1>Right JOIN</h1>");
    while(list($autor,$ksiazka)=mysqli_fetch_row($zapytanie3)){
            echo ("$autor - $ksiazka <br>");
        }
        ?></div>
</body>
</html>
<?php $polaczenie->close();?>