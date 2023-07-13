<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 1 - Les variables&#xa;Creer une variable a qui contient le nombre 5&#xa;Creer une variable b qui contient le nombre 1&#xa;Afficher deux logs pour indiquer si ces variables sont supérieures à PI et qui est la plus grande des deux valeurs (utiliser une ternaire)" courant="DEBUT_SI"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="nombrePi EST_DU_TYPE NOMBRE" code="1#NOMBRE#nombrePi"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="a PREND_LA_VALEUR 5" code="5#a#5#pasliste"/>
        <item algoitem="b PREND_LA_VALEUR 1" code="5#b#1#pasliste"/>
        <item algoitem="nombrePi PREND_LA_VALEUR 3,14" code="5#nombrePi#3,14#pasliste"/>
        <item algoitem="SI (a>nombrePi) ALORS" code="6#a>nombrePi">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;La variable a (&quot;" code="4#La variable a (#0"/>
            <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
            <item algoitem="AFFICHER &quot;) est supérieure à PI.&quot;" code="4#) est supérieure à PI.#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (b>nombrePi) ALORS" code="6#b>nombrePi">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;La variable b (&quot;" code="4#La variable b (#0"/>
            <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
            <item algoitem="AFFICHER &quot;) est supérieure à PI.&quot;" code="4#) est supérieure à PI.#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (a>b) ALORS" code="6#a>b">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;La variable a (&quot;" code="4#La variable a (#0"/>
            <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
            <item algoitem="AFFICHER &quot;) est supérieure à la variable b.&quot;" code="4#) est supérieure à la variable b.#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;La variable b (&quot;" code="4#La variable b (#0"/>
                <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
                <item algoitem="AFFICHER &quot;) est supérieure à la variable a.&quot;" code="4#) est supérieure à la variable a.#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
