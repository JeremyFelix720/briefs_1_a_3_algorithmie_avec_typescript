<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="longueurTableau PREND_LA_VALEUR 0" texte="Exercice 2 - Les tableaux&#xa;&#xa;Créer un tableau qui contient les nombres de 1 à  10&#xa;1 - en initialisant une variable&#xa;2 - en utilisant une boucle&#xa;3 - en utilisant un new Array, fill et map&#xa;&#xa;Afficher la longueur du tableau&#xa;Afficher le premier élément du tableau&#xa;Afficher le dernier élément du tableau&#xa;Afficher le 4ème élément du tableau&#xa;Doublez toutes les valeurs du tableau dans une variable tableauBis&#xa;Afficher le tableauBis"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tableau" algoitem="tableau EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#longueurTableau" algoitem="longueurTableau EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tableauBis" algoitem="tableauBis EST_DU_TYPE LISTE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#longueurTableau#0#pasliste" algoitem="longueurTableau PREND_LA_VALEUR 0"/>
        <item code="12#compteur#1#10" algoitem="POUR compteur ALLANT_DE 1 A 10">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tableau#compteur#compteur" algoitem="tableau[compteur] PREND_LA_VALEUR compteur"/>
            <item code="5#longueurTableau#longueurTableau+1#pasliste" algoitem="longueurTableau PREND_LA_VALEUR longueurTableau+1"/>
            <item code="5#tableauBis#compteur*2#compteur" algoitem="tableauBis[compteur] PREND_LA_VALEUR compteur*2"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Longueur du tableau : #0" algoitem="AFFICHER &quot;Longueur du tableau : &quot;"/>
        <item code="3#longueurTableau#1#pasliste" algoitem="AFFICHER longueurTableau"/>
        <item code="4#Premier élément du tableau : #0" algoitem="AFFICHER &quot;Premier élément du tableau : &quot;"/>
        <item code="3#tableau#1#1" algoitem="AFFICHER tableau[1]"/>
        <item code="4#Dernier élément du tableau : #0" algoitem="AFFICHER &quot;Dernier élément du tableau : &quot;"/>
        <item code="3#tableau#1#longueurTableau" algoitem="AFFICHER tableau[longueurTableau]"/>
        <item code="4#Contenu de tableauBis : #0" algoitem="AFFICHER &quot;Contenu de tableauBis : &quot;"/>
        <item code="12#compteur#1#longueurTableau" algoitem="POUR compteur ALLANT_DE 1 A longueurTableau">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#tableauBis#0#compteur" algoitem="AFFICHER tableauBis[compteur]"/>
            <item code="4#, #0" algoitem="AFFICHER &quot;, &quot;"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
