<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Dans une seconde il sera" courant="DEBUT_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
        <item algoitem="m EST_DU_TYPE NOMBRE" code="1#NOMBRE#m"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE h" code="2#h#pasliste"/>
        <item algoitem="LIRE m" code="2#m#pasliste"/>
        <item algoitem="LIRE s" code="2#s#pasliste"/>
        <item algoitem="s PREND_LA_VALEUR s+1" code="5#s#s+1#pasliste"/>
        <item algoitem="SI (s>59) ALORS" code="6#s>59">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="s PREND_LA_VALEUR 0" code="5#s#0#pasliste"/>
            <item algoitem="m PREND_LA_VALEUR m+1" code="5#m#m+1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
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
        <item algoitem="AFFICHER &quot;'Dans une seconde il sera&quot;" code="4#'Dans une seconde il sera#0"/>
        <item algoitem="AFFICHER h" code="3#h#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Heure(s) &quot;" code="4# Heure(s) #0"/>
        <item algoitem="AFFICHER m" code="3#m#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Minute(s)&quot;" code="4# Minute(s)#0"/>
        <item algoitem="AFFICHER s" code="3#s#0#pasliste"/>
        <item algoitem="AFFICHER &quot; Seconde(s)&quot;" code="4# Seconde(s)#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
