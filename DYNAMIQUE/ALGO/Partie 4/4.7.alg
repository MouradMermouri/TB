<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Tarifs assurance identifiables par une couleur" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Accident" algoitem="Accident EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Age" algoitem="Age EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Nbr_Permis" algoitem="Nbr_Permis EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Fidelite" algoitem="Fidelite EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#Age#pasliste" algoitem="LIRE Age"/>
        <item code="2#Nbr_Permis#pasliste" algoitem="LIRE Nbr_Permis"/>
        <item code="2#Accident#pasliste" algoitem="LIRE Accident"/>
        <item code="2#Fidelite#pasliste" algoitem="LIRE Fidelite"/>
        <item code="6#Fidelite>1" algoitem="SI (Fidelite>1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Tarif bleu#0" algoitem="AFFICHER &quot;Tarif bleu&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#Age &lt;25 ET Nbr_Permis&lt;2 ET Accident &lt;1 " algoitem="SI (Age &lt;25 ET Nbr_Permis&lt;2 ET Accident &lt;1 ) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Tarif rouge#0" algoitem="AFFICHER &quot;Tarif rouge&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Age &lt;25 ET Nbr_Permis&lt;2 ET Accident ==1" algoitem="SI (Age &lt;25 ET Nbr_Permis&lt;2 ET Accident ==1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Refusé#0" algoitem="AFFICHER &quot;Refusé&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="6#Age &lt;25 ET Nbr_Permis>2 OU Age >25 ET Nbr_Permis&lt;2 ET Accident &lt;1" algoitem="SI (Age &lt;25 ET Nbr_Permis>2 OU Age >25 ET Nbr_Permis&lt;2 ET Accident &lt;1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Tarif Orange#0" algoitem="AFFICHER &quot;Tarif Orange&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Age &lt;25 ET Nbr_Permis>2 ET Accident ==1" algoitem="SI (Age &lt;25 ET Nbr_Permis>2 ET Accident ==1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Tarif rouge#0" algoitem="AFFICHER &quot;Tarif rouge&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#Age &lt;25 ET Nbr_Permis&lt;2 ET Accident > 1" algoitem="SI (Age &lt;25 ET Nbr_Permis&lt;2 ET Accident > 1) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#Refusé#0" algoitem="AFFICHER &quot;Refusé&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="6#Age >25 ET Nbr_Permis>2 OU Age >25 ET Accident &lt;1 " algoitem="SI (Age >25 ET Nbr_Permis>2 OU Age >25 ET Accident &lt;1 ) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Tarif vert#0" algoitem="AFFICHER &quot;Tarif vert&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#Age >25 ET Accident == 1 ET Nbr_Permis >2" algoitem="SI (Age >25 ET Accident == 1 ET Nbr_Permis >2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Tarif orange#0" algoitem="AFFICHER &quot;Tarif orange&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#Age >25 ET Accident >= 2 ET Nbr_Permis >2" algoitem="SI (Age >25 ET Accident >= 2 ET Nbr_Permis >2) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#Tarif rouge#0" algoitem="AFFICHER &quot;Tarif rouge&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="6#Age>25 ET Accident ==1 ET Nbr_Permis ==1" algoitem="SI (Age>25 ET Accident ==1 ET Nbr_Permis ==1) ALORS">
                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                    <item code="4#Tarif rouge#1" algoitem="AFFICHER &quot;Tarif rouge&quot;"/>
                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                </item>
                                <item code="6#Age>25 ET Accident >=1 ET Nbr_Permis &lt;=2" algoitem="SI (Age>25 ET Accident >=1 ET Nbr_Permis &lt;=2) ALORS">
                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                    <item code="4#refusé#1" algoitem="AFFICHER &quot;refusé&quot;"/>
                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                </item>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
