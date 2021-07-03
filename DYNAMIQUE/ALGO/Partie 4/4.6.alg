<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="ELECTIONS CANDIDATS" courant="SI (Score1 &lt; Score2 OU Score1 &lt; Score3 OU Score1&lt;Score4 OU Score1&lt;50) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Score1" algoitem="Score1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Score2" algoitem="Score2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Score3" algoitem="Score3 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Score4" algoitem="Score4 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Saisir score des candidats#1" algoitem="AFFICHER &quot;Saisir score des candidats&quot;"/>
        <item code="2#Score1#pasliste" algoitem="LIRE Score1"/>
        <item code="2#Score2#pasliste" algoitem="LIRE Score2"/>
        <item code="2#Score3#pasliste" algoitem="LIRE Score3"/>
        <item code="2#Score4#pasliste" algoitem="LIRE Score4"/>
        <item code="6#Score1>50" algoitem="SI (Score1>50) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#ELU AU PREMIER TOUR#1" algoitem="AFFICHER &quot;ELU AU PREMIER TOUR&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Score2>50 OU Score3>50 OU Score4>50 OU Score1&lt;12" algoitem="SI (Score2>50 OU Score3>50 OU Score4>50 OU Score1&lt;12) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#ELIMINE#1" algoitem="AFFICHER &quot;ELIMINE&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="103#commentaire" algoitem=""/>
        <item code="6#Score1>Score2 ET Score1>Score3 ET Score1>Score4  ET Score1&lt;51" algoitem="SI (Score1>Score2 ET Score1>Score3 ET Score1>Score4  ET Score1&lt;51) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#BALLOTAGE FAVORABLE#1" algoitem="AFFICHER &quot;BALLOTAGE FAVORABLE&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Score1 &lt; Score2 OU Score1 &lt; Score3 OU Score1&lt;Score4 OU Score1&lt;50" algoitem="SI (Score1 &lt; Score2 OU Score1 &lt; Score3 OU Score1&lt;Score4 OU Score1&lt;50) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#BALLOTAGE DEFAVORABLE#1" algoitem="AFFICHER &quot;BALLOTAGE DEFAVORABLE&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="" algoitem=""/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
