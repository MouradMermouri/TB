//fonction appel lors de l'evenement on_click du bouton submit
function verif()
{
//Declaration des string pour le retour erreur
var nom_valide="mauvais format nom"; 
var prenon_valide="mauvais format prenom"; 
var code_valide="mauvais format code postal"; 
var mail_valide="mauvais format email"; 
var question_valide="mauvais format de question"; 
//--------------------------------------------

//Declaration des expressions regulières
var exp_reg_nom =/^[a-zA-Z]+$/;
var exp_reg_prenom =/^[a-zA-Z]+$/;
var exp_reg_mail = /([\w.]+@[\w.]+.{1}[\w]+)/;
var exp_reg_code = /^[0-9]{5}$/; 
var exp_reg_question=/^[a-zA-Z]+$/;
//--------------------------------------------

//Récupération des élement du formulaire
var _nom = document.getElementById("nom_saisi").value;
var _prenom = document.getElementById("prenom_saisi").value;
var _code= document.getElementById("code_saisi").value;
var _mail = document.getElementById("mail").value;
var _question = document.getElementById("Question").value;
//--------------------------------------------


//Appel a la fonction de vérification pour les expressions regulières 
// -------------------- nom--------------------------------
verfication_champs(exp_reg_nom,_nom,"verif_nom",nom_valide );

// -------------------- prenom-----------------------------
verfication_champs(exp_reg_prenom,_prenom,"verif_prenom",prenon_valide); 

//---------------------code---------------------------------
verfication_champs(exp_reg_code,_code,"verif_code",code_valide );

//---------------------Mail---------------------------------
verfication_champs(exp_reg_mail,_mail,"verif_mail",mail_valide );

//---------------------Mail---------------------------------
verfication_champs(exp_reg_question,_question,"verif_question",question_valide );
//---------------------------------------------------------------------


//Fonction qui teste le retour de l'expression régulière(vrai ou faux) (parametre 1) avec l'element à verfier (parametre 2), qui affuche une sortie (parametre 3 et 4)
function verfication_champs(Expression_Reguliere, Element_A_Verifier, Sortie, texte)
{
      if(!Expression_Reguliere.test(Element_A_Verifier))
    {
         
        document.getElementById(Sortie).innerHTML=texte;
        document.getElementById(Sortie).style.color = "red";

    }    
        else
        {
          
            document.getElementById(Sortie).innerHTML="format ok";
            document.getElementById(Sortie).style.color = "green";
        }
}
//-----------------------------------------------------------------------------------------------------------------------------------------
}
//-----------------------------------------------------------------------------------------------------------------------------------------



