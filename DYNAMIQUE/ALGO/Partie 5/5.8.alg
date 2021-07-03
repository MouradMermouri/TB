<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER plu_grand" texte="les 20 plus grand arrêt a 0"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbr EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr"/>
        <item algoitem="pas EST_DU_TYPE NOMBRE" code="1#NOMBRE#pas"/>
        <item algoitem="plu_grand EST_DU_TYPE NOMBRE" code="1#NOMBRE#plu_grand"/>
        <item algoitem="index_plus_grand EST_DU_TYPE NOMBRE" code="1#NOMBRE#index_plus_grand"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="nbr PREND_LA_VALEUR 1" code="5#nbr#1#pasliste"/>
        <item algoitem="pas PREND_LA_VALEUR 0" code="5#pas#0#pasliste"/>
        <item algoitem="plu_grand PREND_LA_VALEUR 0" code="5#plu_grand#0#pasliste"/>
        <item algoitem="TANT_QUE (nbr != 0) FAIRE" code="15#nbr != 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrez le nombre numéro 1 :&quot;" code="4#Entrez le nombre numéro 1 :#0"/>
            <item algoitem="LIRE nbr" code="2#nbr#pasliste"/>
            <item algoitem="index_plus_grand PREND_LA_VALEUR pas*1" code="5#index_plus_grand#pas*1#pasliste"/>
            <item algoitem="SI (pas ==1 OU nbr>plu_grand) ALORS" code="6#pas ==1 OU nbr>plu_grand">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="plu_grand PREND_LA_VALEUR nbr" code="5#plu_grand#nbr#pasliste"/>
                <item algoitem="index_plus_grand PREND_LA_VALEUR index_plus_grand" code="5#index_plus_grand#index_plus_grand#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Le nombre le plus grand était : &quot;" code="4#Le nombre le plus grand était : #0"/>
        <item algoitem="AFFICHER plu_grand" code="3#plu_grand#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
