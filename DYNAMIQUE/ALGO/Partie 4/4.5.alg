<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Catégorie Impôts" courant="VARIABLES"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#sexe" algoitem="sexe EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="2#sexe#pasliste" algoitem="LIRE sexe"/>
        <item code="6#sexe ==&quot;h&quot; ET age>=20" algoitem="SI (sexe ==&quot;h&quot; ET age>=20) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#imposable#0" algoitem="AFFICHER &quot;imposable&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#sexe ==&quot;h&quot; ET age&lt;20" algoitem="SI (sexe ==&quot;h&quot; ET age&lt;20) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Non imposable#0" algoitem="AFFICHER &quot;Non imposable&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="6#sexe ==&quot;f&quot; ET age>=18 ET age&lt;=35" algoitem="SI (sexe ==&quot;f&quot; ET age>=18 ET age&lt;=35) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#imposable#0" algoitem="AFFICHER &quot;imposable&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#sexe ==&quot;f&quot; ET age>35" algoitem="SI (sexe ==&quot;f&quot; ET age>35) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Non imposable#0" algoitem="AFFICHER &quot;Non imposable&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
