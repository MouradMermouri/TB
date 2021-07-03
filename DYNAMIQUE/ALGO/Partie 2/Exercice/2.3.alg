<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Prix TTC : &quot;" texte="Calcul prix HT en TTC suivant nombre article et taux TVA personnalisé"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Prix_Article_HT" algoitem="Prix_Article_HT EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Nombre_Article" algoitem="Nombre_Article EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Taux_TVA" algoitem="Taux_TVA EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Prix_HT" algoitem="Prix_HT EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Prix_TTC" algoitem="Prix_TTC EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#Prix_Article_HT#pasliste" algoitem="LIRE Prix_Article_HT"/>
        <item code="2#Nombre_Article#pasliste" algoitem="LIRE Nombre_Article"/>
        <item code="2#Taux_TVA#pasliste" algoitem="LIRE Taux_TVA"/>
        <item code="5#Prix_HT#Prix_Article_HT * Nombre_Article#pasliste" algoitem="Prix_HT PREND_LA_VALEUR Prix_Article_HT * Nombre_Article"/>
        <item code="5#Prix_TTC#Prix_HT + ((Prix_HT * Taux_TVA)/100)#pasliste" algoitem="Prix_TTC PREND_LA_VALEUR Prix_HT + ((Prix_HT * Taux_TVA)/100)"/>
        <item code="4#Prix article : #0" algoitem="AFFICHER &quot;Prix article : &quot;"/>
        <item code="3#Prix_Article_HT#1#pasliste" algoitem="AFFICHER Prix_Article_HT"/>
        <item code="4#Nombre article : #0" algoitem="AFFICHER &quot;Nombre article : &quot;"/>
        <item code="3#Nombre_Article#1#pasliste" algoitem="AFFICHER Nombre_Article"/>
        <item code="4#Prix total HT : #0" algoitem="AFFICHER &quot;Prix total HT : &quot;"/>
        <item code="3#Prix_HT#1#pasliste" algoitem="AFFICHER Prix_HT"/>
        <item code="4#TVA : #0" algoitem="AFFICHER &quot;TVA : &quot;"/>
        <item code="3#Taux_TVA#1#pasliste" algoitem="AFFICHER Taux_TVA"/>
        <item code="4#Prix TTC : #0" algoitem="AFFICHER &quot;Prix TTC : &quot;"/>
        <item code="3#Prix_TTC#1#pasliste" algoitem="AFFICHER Prix_TTC"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
