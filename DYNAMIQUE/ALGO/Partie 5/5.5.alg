<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="DEBUT_ALGORITHME" texte="Somme des entiers jusqu’à ce nbr"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbr EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr"/>
        <item algoitem="pas EST_DU_TYPE NOMBRE" code="1#NOMBRE#pas"/>
        <item algoitem="total EST_DU_TYPE NOMBRE" code="1#NOMBRE#total"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nbr" code="2#nbr#pasliste"/>
        <item algoitem="pas PREND_LA_VALEUR 1" code="5#pas#1#pasliste"/>
        <item algoitem="POUR pas ALLANT_DE pas A nbr" code="12#pas#pas#nbr">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="total PREND_LA_VALEUR total + pas" code="5#total#total + pas#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER total" code="3#total#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
