<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Quel est le plus grand et a quelle position" courant="AFFICHER position"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr" algoitem="nbr EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pas" algoitem="pas EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#plus_grand" algoitem="plus_grand EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#position" algoitem="position EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#plus_grand#0#pasliste" algoitem="plus_grand PREND_LA_VALEUR 0"/>
        <item code="12#pas#1#20" algoitem="POUR pas ALLANT_DE 1 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#entrez le nombre numèro &quot; + pas + &quot;: #0" algoitem="AFFICHER &quot;entrez le nombre numèro &quot; + pas + &quot;: &quot;"/>
            <item code="2#nbr#pasliste" algoitem="LIRE nbr"/>
            <item code="5#plus_grand#nbr#pasliste" algoitem="plus_grand PREND_LA_VALEUR nbr"/>
            <item code="5#position#pas#pasliste" algoitem="position PREND_LA_VALEUR pas"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#entrez le nombre le plus grand de ces nombre est : #1" algoitem="AFFICHER &quot;entrez le nombre le plus grand de ces nombre est : &quot;"/>
        <item code="3#plus_grand#1#pasliste" algoitem="AFFICHER plus_grand"/>
        <item code="4#C’était le nombre numéro :#1" algoitem="AFFICHER &quot;C’était le nombre numéro :&quot;"/>
        <item code="3#position#1#pasliste" algoitem="AFFICHER position"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
