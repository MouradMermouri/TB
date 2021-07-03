<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER total" texte="la table de multiplication "/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" epaisseurLigne="2" totalBoucles="5000000" arrondiAuto="vrai" maxBoucle="500000" nbDecimales="8" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#total" algoitem="total EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pas" algoitem="pas EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
        <item code="12#pas#1#9" algoitem="POUR pas ALLANT_DE 1 A 9">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#total#nbr * pas#pasliste" algoitem="total PREND_LA_VALEUR nbr * pas"/>
            <item code="3#total#1#pasliste" algoitem="AFFICHER total"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
