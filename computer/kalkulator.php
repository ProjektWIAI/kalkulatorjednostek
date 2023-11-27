<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <title>Kalkulator Jednostek</title>
    <link rel="shortcut icon" href="icon.png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="script.js"></script>
</head>
<body>
    <div id="main">
        <div id='tlo1'>
        </div>
        <div id="calc">
            <select name="jedn1" id="jedn1" onchange="oblicz()">
                <?php
                    $tabela = $_POST['button'];
                    $link = mysqli_connect('localhost','root','','kalkulator');        
                    $res = mysqli_query($link,"SELECT * FROM $tabela;");
                    if($tabela == 'temperatura'){
                        while( $row = mysqli_fetch_assoc($res) ) {
                            echo "<option value='temp{$row['jednostka']}'>{$row['jednostka']}&nbsp&nbsp{$row['symbol']}</option>";
                        }
                    }
                    else {
                        while( $row = mysqli_fetch_assoc($res) ) {
                            echo "<option value='{$row['wartosc']}'>{$row['jednostka']}&nbsp&nbsp{$row['symbol']}</option>";
                        }
                    }
                    
                ?>
            </select>
            <input type="text" name="wpisz" id="wpisz" onkeyup="sprawdz()" value='' autofocus><br>
            <select name="jedn2" id="jedn2" onchange="oblicz()">
                <?php       
                    $res = mysqli_query($link,"SELECT * FROM $tabela;");
                    if($tabela == 'temperatura'){
                        while( $row = mysqli_fetch_assoc($res) ) {
                            echo "<option value='temp{$row['jednostka']}'>{$row['jednostka']}&nbsp&nbsp{$row['symbol']}</option>";
                        }
                    }
                    else {
                        while( $row = mysqli_fetch_assoc($res) ) {
                            echo "<option value='{$row['wartosc']}'>{$row['jednostka']}&nbsp&nbsp{$row['symbol']}</option>";
                        }
                    }
                    mysqli_close($link);
                ?>
            </select>
            <input type="text" name="wynik" id="wynik" value="0" disabled><br>
            <button type="button" id="przycisk_duzy_del" onclick="wartosci('DEL')">
                <img src="delete.png" alt="delete" id="delete" style="width: 125%;">
            </button>
            <button type="button" id="przycisk_maly" onclick="wartosci('9')">9</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('8')">8</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('7')">7</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('6')">6</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('5')">5</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('4')">4</button>
            <button type="button" id="przycisk_duzy_ac" onclick="wartosci('AC')">AC</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('3')">3</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('2')">2</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('1')">1</button>
            <button type="button" id="przycisk_maly" onclick="wartosci('0')">0</button>
            <button type="button" id="przycisk_maly_prz" onclick="wartosci('.')">,</button>
            <a href="index.php"><button type="button" id="przycisk_maly_icon"><i class="material-icons w3-jumbo">home</i></button></a>
        </div>
        <div id='tlo2'>
        </div>
    </div>
</body>
</html>