var index=0;
var mon_affichage= document.getElementById("affichage");
var tab = [];
var table=parseInt(prompt("Veuillez saisir une table"))
multiplication(table);


function multiplication(nbr)
{
    var result;
    for(var i=0; i<=nbr;i++)
    {
        index++;
        result= nbr*index;
      console.log(i + " * " + nbr + " = " +result);
      // mon_affichage.innerHTML+=(i + " * " + nbr + " = " +result);   
 
        mon_affichage.innerHTML+=i + " * " + nbr +  " = "+result+"<br>" ;
    }
 

   
}