<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 3 - &#xa;&#xa;On a un stock de foin qui contient 800 kg de foin.&#xa;On a 2 moutons qui mangent 500g de foin par jour.&#xa;Un des mouton est transformé en gigot au bout de 1000 jours.&#xa;Combien de temps le stock de foin va-t-il durer ?&#xa;&#xa;Même exercice si le stock est de 20 kg &#xa;Même exercice si le nombre de mouton est de 5 kg." courant="consoJournaliereMoutons PREND_LA_VALEUR nombreMoutons*0.25"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="consoJournaliereMoutons EST_DU_TYPE NOMBRE" code="1#NOMBRE#consoJournaliereMoutons"/>
        <item algoitem="nombreMoutons EST_DU_TYPE NOMBRE" code="1#NOMBRE#nombreMoutons"/>
        <item algoitem="nombreJours EST_DU_TYPE NOMBRE" code="1#NOMBRE#nombreJours"/>
        <item algoitem="stockFoin EST_DU_TYPE NOMBRE" code="1#NOMBRE#stockFoin"/>
        <item algoitem="stockFoinInitial EST_DU_TYPE NOMBRE" code="1#NOMBRE#stockFoinInitial"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Quantité initiale de foin :&quot;" code="4#Quantité initiale de foin :#0"/>
        <item algoitem="LIRE stockFoinInitial" code="2#stockFoinInitial#pasliste"/>
        <item algoitem="stockFoin PREND_LA_VALEUR stockFoinInitial" code="5#stockFoin#stockFoinInitial#pasliste"/>
        <item algoitem="nombreMoutons PREND_LA_VALEUR 2" code="5#nombreMoutons#2#pasliste"/>
        <item algoitem="consoJournaliereMoutons PREND_LA_VALEUR nombreMoutons*0.25" code="5#consoJournaliereMoutons#nombreMoutons*0.25#pasliste"/>
        <item algoitem="TANT_QUE (stockFoin>0) FAIRE" code="15#stockFoin>0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (nombreJours==1000) ALORS" code="6#nombreJours==1000">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="nombreMoutons PREND_LA_VALEUR nombreMoutons-1" code="5#nombreMoutons#nombreMoutons-1#pasliste"/>
                <item algoitem="consoJournaliereMoutons PREND_LA_VALEUR nombreMoutons*0.25" code="5#consoJournaliereMoutons#nombreMoutons*0.25#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="stockFoin PREND_LA_VALEUR stockFoin-consoJournaliereMoutons" code="5#stockFoin#stockFoin-consoJournaliereMoutons#pasliste"/>
            <item algoitem="nombreJours PREND_LA_VALEUR nombreJours+1" code="5#nombreJours#nombreJours+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Avec &quot;" code="4#Avec #0"/>
        <item algoitem="AFFICHER stockFoinInitial" code="3#stockFoinInitial#0#pasliste"/>
        <item algoitem="AFFICHER &quot; kg initial de foin, le stock va durer : &quot;" code="4# kg initial de foin, le stock va durer : #0"/>
        <item algoitem="AFFICHER nombreJours" code="3#nombreJours#0#pasliste"/>
        <item algoitem="AFFICHER &quot; jours.&quot;" code="4# jours.#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
