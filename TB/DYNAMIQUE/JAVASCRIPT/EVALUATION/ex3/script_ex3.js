var saisi=prompt("Veuillez saisir un prénom")
var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var tab1 = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];

var maDiv =document.getElementById("Affiche");
var test;

var index;
maDiv.innerHTML="Tableau avant modification"+ tab1; 
for(var i=0; i<= tab.length-1;i++)
{  
   
    if(saisi == tab[i])
    {  
        
            
        index=tab.indexOf(saisi);
        tab.splice(index,1);
        tab.push(' " " ');    
      
         
    } 
  
  maDiv.innerHTML="Tableau avant modification"+"<br>"+ tab1 + "<br>" + "<br>"+"Tableau aprés modification"+"<br>"+tab ;
}
