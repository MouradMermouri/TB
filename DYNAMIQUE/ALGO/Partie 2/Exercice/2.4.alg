<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Plusieurs varaintes de la même phrase" courant="AFFICHER &quot;4eme variante : &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000" arrondiAuto="vrai" totalAffichages="1000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#Variante_Initiale" algoitem="Variante_Initiale EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Variante_1" algoitem="Variante_1 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Variante_2" algoitem="Variante_2 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Variante_3" algoitem="Variante_3 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Variante_4" algoitem="Variante_4 EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#premier_morceau" algoitem="premier_morceau EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#deuxieme_morceau" algoitem="deuxieme_morceau EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#troisieme_morceau" algoitem="troisieme_morceau EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#quatrieme_morceau" algoitem="quatrieme_morceau EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Intiale : #0" algoitem="AFFICHER &quot;Intiale : &quot;"/>
        <item code="5#Variante_Initiale#&quot;belle marquise, vos beaux yeux me font mourir d’amour&quot;#pasliste" algoitem="Variante_Initiale PREND_LA_VALEUR &quot;belle marquise, vos beaux yeux me font mourir d’amour&quot;"/>
        <item code="3#Variante_Initiale#1#pasliste" algoitem="AFFICHER Variante_Initiale"/>
        <item code="5#premier_morceau#&quot;belle marquise&quot;#pasliste" algoitem="premier_morceau PREND_LA_VALEUR &quot;belle marquise&quot;"/>
        <item code="5#deuxieme_morceau#&quot;vos beaux yeux&quot;#pasliste" algoitem="deuxieme_morceau PREND_LA_VALEUR &quot;vos beaux yeux&quot;"/>
        <item code="5#troisieme_morceau#&quot;me font&quot;#pasliste" algoitem="troisieme_morceau PREND_LA_VALEUR &quot;me font&quot;"/>
        <item code="5#quatrieme_morceau#&quot;mourir d’amour&quot;#pasliste" algoitem="quatrieme_morceau PREND_LA_VALEUR &quot;mourir d’amour&quot;"/>
        <item code="5#Variante_1#quatrieme_morceau + troisieme_morceau + deuxieme_morceau + premier_morceau#pasliste" algoitem="Variante_1 PREND_LA_VALEUR quatrieme_morceau + troisieme_morceau + deuxieme_morceau + premier_morceau"/>
        <item code="4#1ere variante : #0" algoitem="AFFICHER &quot;1ere variante : &quot;"/>
        <item code="3#Variante_1#1#pasliste" algoitem="AFFICHER Variante_1"/>
        <item code="5#Variante_2#deuxieme_morceau + troisieme_morceau + premier_morceau + quatrieme_morceau#pasliste" algoitem="Variante_2 PREND_LA_VALEUR deuxieme_morceau + troisieme_morceau + premier_morceau + quatrieme_morceau"/>
        <item code="4#2eme variante : #0" algoitem="AFFICHER &quot;2eme variante : &quot;"/>
        <item code="3#Variante_2#1#pasliste" algoitem="AFFICHER Variante_2"/>
        <item code="5#Variante_3#troisieme_morceau +deuxieme_morceau  + quatrieme_morceau  + premier_morceau#pasliste" algoitem="Variante_3 PREND_LA_VALEUR troisieme_morceau +deuxieme_morceau  + quatrieme_morceau  + premier_morceau"/>
        <item code="4#3eme variante : #0" algoitem="AFFICHER &quot;3eme variante : &quot;"/>
        <item code="3#Variante_3#1#pasliste" algoitem="AFFICHER Variante_3"/>
        <item code="5#Variante_4#premier_morceau + troisieme_morceau +deuxieme_morceau  + quatrieme_morceau#pasliste" algoitem="Variante_4 PREND_LA_VALEUR premier_morceau + troisieme_morceau +deuxieme_morceau  + quatrieme_morceau"/>
        <item code="4#4eme variante : #0" algoitem="AFFICHER &quot;4eme variante : &quot;"/>
        <item code="3#Variante_4#1#pasliste" algoitem="AFFICHER Variante_4"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
