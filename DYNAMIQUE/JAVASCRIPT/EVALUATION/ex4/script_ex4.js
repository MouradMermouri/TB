
var Affichage = document.getElementById("Affiche");
var PU =parseInt(prompt("Veuillez saisir un prix unitaire"));
var QTECOM =parseInt(prompt("Veuillez la quatité"));
var TOT = calcul_TOT(PU, QTECOM);
var REM = remise(TOT);
var PAP = PrixPayer(TOT, REM);
var PORT= FraisPort(PAP)
var prixTTC=TTC(PAP, PORT);
console.log(TOT);
console.log(REM);
console.log(PAP);
console.log(PORT);

 
function calcul_TOT(nbr1, nbr2) {
    var resultat = nbr1*nbr2;
    return resultat;
    
}

function remise(nbr1,txt )  {
    var REM=0;
    

    if(nbr1 < 100)
    {
        REM = 0;
        txtrem="PAS DE REMISE";
    }
    if(nbr1 >= 100 && nbr1 <=200)
    {
        REM = (nbr1 *5)/100;
        txtrem="REMISE 5%";
    }
    if(nbr1 >200)
    {
        REM = (nbr1 *10)/100;
        txtrem="REMISE 10%";
    }   
    return REM;  
    return txtrem;
 
}

function PrixPayer(nbr1, nbr2) {
    var ttc= nbr1 - nbr2
    return ttc;
}


function FraisPort(nbr1) {
    var fdp=0;
    if(nbr1 < 300)
    {
        fdp=6;
        txtfdp = "Frais de port minimum 6€"

    }
    if(nbr1>300)
    {
        fdp = (nbr1 *2)/100;
        txtfdp = "Frais de port 2%"
    }
    if(nbr1>500)
    {
        fdp = 0;
        txtfdp = "Frais de port offert"
    }
        return fdp;

}

function TTC(nbr1, nbr2)
{
    prix = nbr1+nbr2;
    return prix;
}

Affichage.innerHTML="PRIX HORS TAXE = " + TOT +" € "+"<br>" +"REMISE = "+ REM+" € "+"<br>" +"PRIX REMISER = "+PAP +" € "+"<br>" +"FRAIS DE PORT = "+ PORT+ "€"+ "<br>"+"PRIX TTC = "+prixTTC +" €" ;
