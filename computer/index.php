<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <title>Kalkulator Jednostek</title>
    <link rel="shortcut icon" href="icon.png">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="main">
        <div id='tlo1'>
        </div>
        <div id="calc">
            <form action="kalkulator.php" method="post">
                <?php
                    $link = mysqli_connect('localhost','root','','kalkulator');        
                    $res = mysqli_query($link,'SELECT * FROM zdjecia;');
                    while( $row = mysqli_fetch_assoc($res) ) {
                        echo "
                        <button type='submit' value=$row[tabela] name='button' class='wybor'>
                            <img src=$row[zdjecie] alt=$row[tabela]><br>
                            <h5>".ucfirst($row['tabela'])."</h5>
                        </button>";
                    }
                    mysqli_close($link);
                ?>
                
            </form>
        </div>
        <div id='tlo2'>
        </div>
    </div>
</body>
</html>