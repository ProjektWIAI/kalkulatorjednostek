function wartosci(x){
    if(x == 'AC') {
        document.getElementById('wpisz').value = '';
    }
    else if(x == 'DEL') {
        var value = document.getElementById('wpisz').value;
        document.getElementById('wpisz').value = value.slice(0, -1);
    }
    else{
        document.getElementById('wpisz').value += x;
    }
    oblicz();
}
function oblicz(){
    var wpisana = parseFloat(document.getElementById('wpisz').value);
    var wart1 = parseFloat(document.getElementById('jedn1').value);
    var wart2 = parseFloat(document.getElementById('jedn2').value);
    if (isNaN(wpisana) || isNaN(wart1) || isNaN(wart2)) {
        // Jeśli dane wejściowe nie są liczbami, nie obliczaj wyniku
        document.getElementById('wynik').value = '0';
    } else {
        var wynik = wart1 * wpisana / wart2;
        document.getElementById('wynik').value = wynik.toString();
    }
}function wartosci(x){
    if(x == 'AC') {
        document.getElementById('wpisz').value = '0';
    }
    else if(x == 'DEL') {
        var value = document.getElementById('wpisz').value;
        document.getElementById('wpisz').value = value.slice(0, -1);
        if(document.getElementById('wpisz').value == ''){
            document.getElementById('wpisz').value = '0';
        }
    }
    else{
        if(document.getElementById('wpisz').value == '0'){
            document.getElementById('wpisz').value = x;
        }
        else{
            document.getElementById('wpisz').value += x;
        }
    }
    oblicz();
}
function oblicz(){
    var wpisana = parseFloat(document.getElementById('wpisz').value);
    var wart1 = document.getElementById('jedn1').value;
    var wart2 = document.getElementById('jedn2').value;
    if (isNaN(wpisana)) {
        document.getElementById('wynik').value = '0';
    }
    else {
        if(wart1.substring(0,4) == 'temp'){
            var celcjusz = 0;
            switch(wart1.substring(4,8)) {
                case 'Fara':
                    celcjusz = (wpisana - 32) * 5/9;
                    break;
                case 'Kelw':
                    celcjusz = wpisana - 273.15;
                    break;
                case 'Rank':
                    celcjusz = (wpisana - 491.67) / (9/5);
                    break;
                case 'Réau':
                    celcjusz = 1.25 * wpisana;
                    break;
                default:
                    celcjusz = wpisana;
            }
            var wynik = 0;
            switch(wart2.substring(4,8)) {
                case 'Fara':
                    wynik = (celcjusz * (9/5)) + 32;
                    break;
                case 'Kelw':
                    wynik = celcjusz + 273.15;
                    break;
                case 'Rank':
                    wynik = (celcjusz + 273.15) * 9/5;
                    break;
                case 'Réau':
                    wynik = (celcjusz * 4) / 5;
                    break;
                default:
                    wynik = celcjusz;
            }
        }
        else {
            wart1 = parseFloat(wart1);
            wart2 = parseFloat(wart2);
            var wynik = wart1 * wpisana / wart2;
        }
        
        document.getElementById('wynik').value = wynik.toString();
    }
}
function sprawdz() {
    var value = document.getElementById('wpisz').value;
    var index = value.indexOf(',');
    if (index != -1){
        value = value.replace(',','.')
        document.getElementById('wpisz').value = value;
    }
    oblicz();
}