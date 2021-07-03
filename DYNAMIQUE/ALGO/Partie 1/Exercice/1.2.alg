<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Affectation valeur pour variable de type nombre" courant="AFFICHER &quot;C=&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="A EST_DU_TYPE NOMBRE" code="1#NOMBRE#A"/>
        <item algoitem="B EST_DU_TYPE NOMBRE" code="1#NOMBRE#B"/>
        <item algoitem="C EST_DU_TYPE NOMBRE" code="1#NOMBRE#C"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="A PREND_LA_VALEUR 5" code="5#A#5#pasliste"/>
        <item algoitem="B PREND_LA_VALEUR 3" code="5#B#3#pasliste"/>
        <item algoitem="C PREND_LA_VALEUR A+B" code="5#C#A+B#pasliste"/>
        <item algoitem="A PREND_LA_VALEUR 2" code="5#A#2#pasliste"/>
        <item algoitem="C PREND_LA_VALEUR B-A" code="5#C#B-A#pasliste"/>
        <item algoitem="AFFICHER &quot;A=&quot;" code="4#A=#0"/>
        <item algoitem="AFFICHER A" code="3#A#1#pasliste"/>
        <item algoitem="AFFICHER &quot;B=&quot;" code="4#B=#0"/>
        <item algoitem="AFFICHER B" code="3#B#1#pasliste"/>
        <item algoitem="AFFICHER &quot;C=&quot;" code="4#C=#0"/>
        <item algoitem="AFFICHER C" code="3#C#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
