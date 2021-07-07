<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Ordre Alphabétique" courant="AFFICHER &quot;Saisir 3 prénoms &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000" epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#prenom1" algoitem="prenom1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#prenom2" algoitem="prenom2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#prenom3" algoitem="prenom3 EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Saisir 3 prénoms #0" algoitem="AFFICHER &quot;Saisir 3 prénoms &quot;"/>
        <item code="2#prenom1#pasliste" algoitem="LIRE prenom1"/>
        <item code="2#prenom1#pasliste" algoitem="LIRE prenom1"/>
        <item code="2#prenom3#pasliste" algoitem="LIRE prenom3"/>
        <item code="6#prenom1 &lt; prenom1 &lt;prenom1" algoitem="SI (prenom1 &lt; prenom1 &lt;prenom1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Les 3 prénoms saisies sont dans l'ordre alphabétiques#0" algoitem="AFFICHER &quot;Les 3 prénoms saisies sont dans l'ordre alphabétiques&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Les 3 prénoms saisies ne sont pas dans l'ordre alphabétiques#0" algoitem="AFFICHER &quot;Les 3 prénoms saisies ne sont pas dans l'ordre alphabétiques&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
