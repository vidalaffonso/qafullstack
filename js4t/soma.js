//document Object Model

//Netscape Navigator 2 e IE 3.0 (1996)

//JavaScript
//Microsoft Jscript => Vbscript

//Ecmascript 

// html => Pagina

// h1 = Cabeçalhos/Titulos
// P = paragrafos
// Ul = Agrupadores de Listas 
// li = os intens de listas do elemento Ul
// a = links
// form = formularios
// input do tipo texto = campos de texto
// input do tipo check = checkbox
// input do tipo radio = botões da radio
// texteare = paragrafos
// button = botôes
// spans = elementos genericos

// tables = tabelas
// tds = colunas
// divs = divisões

// labels = textos

function somaValores() {
    var n1 = document.getElementById("numberOne").value;
    var n2 = document.getElementById("numberTwo").value;

    var result = parseInt(n1) + parseInt(n2); 
    var divResultado = document.getElementById("resultado")
    divResultado.append("O resultado da soma é:" + result);
    console.log(result)
}