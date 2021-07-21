var maDiv =document.getElementById("Affiche");

var jeune=0;
var moyens=0;
var vieux=0;
 age;
 
while(age!=0)
{
 var age = parseInt(window.prompt("Veuillez saisir un age"));
       
    if(age < 20 )
    {
        jeune++;10
    }
    if(age>20 && age<40)
    {
        moyens++;
    }
    if(age>=40)
    {
        vieux++;
    }
    if(age>=100)
    {
        break;
    }


}    

 
maDiv.innerHTML="nombre de jeune(s) saisie " + jeune +"<br>"+ "nombre de moyen(s) saisie " + moyens + "<br>"+"nombre de vieux saisie " + vieux;

    console.log("nombre de jeune(s) saisie " + jeune);
    console.log("nombre de moyen(s) saisie " + moyens);
    console.log("nombre de vieux saisie " + vieux);

 

