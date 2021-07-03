<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Calcul de produit de 2 nombres" courant="SI (produit >=1) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000" epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbr1" algoitem="nbr1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbr2" algoitem="nbr2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#produit" algoitem="produit EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nbr1#pasliste" algoitem="LIRE nbr1"/>
        <item code="2#nbr2#pasliste" algoitem="LIRE nbr2"/>
        <item code="5#produit#nbr1 * nbr2#pasliste" algoitem="produit PREND_LA_VALEUR nbr1 * nbr2"/>
        <item code="6#produit >=1" algoitem="SI (produit >=1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Produit positif#0" algoitem="AFFICHER &quot;Produit positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Produit négatif#0" algoitem="AFFICHER &quot;Produit négatif&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
