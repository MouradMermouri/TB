<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="DEBUT_ALGORITHME" texte="Dans une minuites il sera"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE h" code="2#h#pasliste"/>
        <item algoitem="LIRE m" code="2#m#pasliste"/>
        <item algoitem="m PREND_LA_VALEUR m+1" code="5#m#m+1#pasliste"/>
        <item algoitem="SI (m>59) ALORS" code="6#m>59">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="m PREND_LA_VALEUR 0" code="5#m#0#pasliste"/>
            <item algoitem="h PREND_LA_VALEUR h+1" code="5#h#h+1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (h>23) ALORS" code="6#h>23">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="h PREND_LA_VALEUR 0" code="5#h#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;'Dans une minute il sera &quot;" code="4#'Dans une minute il sera #0"/>
        <item algoitem="AFFICHER h" code="3#h#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Heure(s) &quot;" code="4# Heure(s) #0"/>
        <item algoitem="AFFICHER m" code="3#m#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Minute(s)&quot;" code="4# Minute(s)#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
