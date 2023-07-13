<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 4 - Les élections&#xa;&#xa;```typescript&#xa;const candidats = [&quot;lepeigne&quot;, &quot;melangeons&quot;, &quot;macreau&quot;, &quot;varousselle&quot;, &quot;paicvaissrelle&quot;, &quot;poutoutout&quot;, &quot;hidalgogo&quot;];&#xa;const votes = [];&#xa;```&#xa;&#xa;1. Remplir le tableau de votes du premier tour avec 1000 votes aléatoires&#xa;Afficher le nombre de votes pour chaque candidat&#xa;Afficher le nom du candidat qui a le plus de votes&#xa;Afficher les noms des candidats qui passent au deuxième tour&#xa;&#xa;2. Nous ne sommes plus en démocratie, paicvaissrelle rachète des voix à lepeigne :&#xa;10€ par voix, Elle a un budget de 1000€, combien de voix peut-elle acheter ?&#xa;&#xa;3. Simulez le deuxième tour avec 1000 votes aléatoires entre les deux premiers candidats&#xa;N'oubliez pas, paicvaissrelle peut acheter des voix aux electeurs de lepeigne s'il lui reste de l'argent.&#xa;Si lepeigne passe au deuxième tour avec paicvaissrelle, elle lui pique des voix.&#xa;Si lepeigne ne pas au deuxième tour, elle démarre avec, au maximum les voix de lepeigne au premier tour.&#xa;&#xa;4. Simulez les votes avec ce tableau de sondage :&#xa;``` typescript&#xa;const sondage = [&#xa;    { candidat: &quot;lepeigne&quot;, voix: 21 },&#xa;    { candidat: &quot;melangeons&quot;, voix: 19 },&#xa;    { candidat: &quot;macreau&quot;, voix: 21 },&#xa;    { candidat: &quot;varousselle&quot;, voix: 3 },&#xa;    { candidat: &quot;paicvaissrelle&quot;, voix: 1 },&#xa;    { candidat: &quot;poutoutout&quot;, voix: 1 },&#xa;    { candidat: &quot;hidalgogo&quot;, voix: 1 },&#xa;];&#xa;```" courant="rangPremierCandidat EST_DU_TYPE NOMBRE"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#candidats" algoitem="candidats EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#votes" algoitem="votes EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#tour" algoitem="tour EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#voteAleatoire" algoitem="voteAleatoire EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbVoixTotales" algoitem="nbVoixTotales EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbVotesPremierCandidat" algoitem="nbVotesPremierCandidat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbVotesDeuxiemeCandidat" algoitem="nbVotesDeuxiemeCandidat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#rangPremierCandidat" algoitem="rangPremierCandidat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#rangDeuxiemeCandidat" algoitem="rangDeuxiemeCandidat EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="103#commentaire" algoitem=""/>
        <item code="5#nbVoixTotales#50#pasliste" algoitem="nbVoixTotales PREND_LA_VALEUR 50"/>
        <item code="5#tour#1#pasliste" algoitem="tour PREND_LA_VALEUR 1"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#rangPremierCandidat#0#pasliste" algoitem="rangPremierCandidat PREND_LA_VALEUR 0"/>
        <item code="5#rangDeuxiemeCandidat#0#pasliste" algoitem="rangDeuxiemeCandidat PREND_LA_VALEUR 0"/>
        <item code="5#nbVotesPremierCandidat#0#pasliste" algoitem="nbVotesPremierCandidat PREND_LA_VALEUR 0"/>
        <item code="5#nbVotesDeuxiemeCandidat#0#pasliste" algoitem="nbVotesDeuxiemeCandidat PREND_LA_VALEUR 0"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="3#tour#1#pasliste" algoitem="AFFICHER tour"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#candidats#&quot;lepeigne&quot;#0" algoitem="candidats[0] PREND_LA_VALEUR &quot;lepeigne&quot;"/>
        <item code="5#candidats#&quot;melangeons&quot;#1" algoitem="candidats[1] PREND_LA_VALEUR &quot;melangeons&quot;"/>
        <item code="5#candidats#&quot;macreau&quot;#2" algoitem="candidats[2] PREND_LA_VALEUR &quot;macreau&quot;"/>
        <item code="5#candidats#&quot;varousselle&quot;#3" algoitem="candidats[3] PREND_LA_VALEUR &quot;varousselle&quot;"/>
        <item code="5#candidats#&quot;paicvaissrelle&quot;#4" algoitem="candidats[4] PREND_LA_VALEUR &quot;paicvaissrelle&quot;"/>
        <item code="5#candidats#&quot;poutoutout&quot;#5" algoitem="candidats[5] PREND_LA_VALEUR &quot;poutoutout&quot;"/>
        <item code="5#candidats#&quot;hidalgogo&quot;#6" algoitem="candidats[6] PREND_LA_VALEUR &quot;hidalgogo&quot;"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="3#candidats#1#0" algoitem="AFFICHER candidats[0]"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="5#votes#0#0" algoitem="votes[0] PREND_LA_VALEUR 0"/>
        <item code="5#votes#0#1" algoitem="votes[1] PREND_LA_VALEUR 0"/>
        <item code="5#votes#0#2" algoitem="votes[2] PREND_LA_VALEUR 0"/>
        <item code="5#votes#0#3" algoitem="votes[3] PREND_LA_VALEUR 0"/>
        <item code="5#votes#0#4" algoitem="votes[4] PREND_LA_VALEUR 0"/>
        <item code="5#votes#0#5" algoitem="votes[5] PREND_LA_VALEUR 0"/>
        <item code="5#votes#0#6" algoitem="votes[6] PREND_LA_VALEUR 0"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="3#votes#1#0" algoitem="AFFICHER votes[0]"/>
        <item code="103#commentaire" algoitem=""/>
        <item code="6#tour==1" algoitem="SI (tour==1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Début du premier tour !#1" algoitem="AFFICHER &quot;Début du premier tour !&quot;"/>
            <item code="103#commentaire" algoitem=""/>
            <item code="12#compteur#0#nbVoixTotales-1" algoitem="POUR compteur ALLANT_DE 0 A nbVoixTotales-1">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#voteAleatoire#ALGOBOX_ALEA_ENT(0,6)#pasliste" algoitem="voteAleatoire PREND_LA_VALEUR ALGOBOX_ALEA_ENT(0,6)"/>
                <item code="5#votes#votes[voteAleatoire+1]#voteAleatoire" algoitem="votes[voteAleatoire] PREND_LA_VALEUR votes[voteAleatoire+1]"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="103#commentaire" algoitem=""/>
            <item code="5#compteur#0#pasliste" algoitem="compteur PREND_LA_VALEUR 0"/>
            <item code="103#commentaire" algoitem=""/>
            <item code="12#compteur#0#6" algoitem="POUR compteur ALLANT_DE 0 A 6">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="4#Nombre de votes pour #0" algoitem="AFFICHER &quot;Nombre de votes pour &quot;"/>
                <item code="3#candidats#0#compteur" algoitem="AFFICHER candidats[compteur]"/>
                <item code="4# : #0" algoitem="AFFICHER &quot; : &quot;"/>
                <item code="3#votes#1#compteur" algoitem="AFFICHER votes[compteur]"/>
                <item code="6#votes[compteur]>nbVotesPremierCandidat" algoitem="SI (votes[compteur]>nbVotesPremierCandidat) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#nbVotesPremierCandidat#votes[compteur]#pasliste" algoitem="nbVotesPremierCandidat PREND_LA_VALEUR votes[compteur]"/>
                    <item code="5#rangPremierCandidat#compteur#pasliste" algoitem="rangPremierCandidat PREND_LA_VALEUR compteur"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="103#commentaire" algoitem=""/>
                <item code="103#commentaire" algoitem=""/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="103#commentaire" algoitem=""/>
            <item code="5#compteur#0#pasliste" algoitem="compteur PREND_LA_VALEUR 0"/>
            <item code="103#commentaire" algoitem=""/>
            <item code="12#compteur#0#6" algoitem="POUR compteur ALLANT_DE 0 A 6">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="6#votes[compteur]&lt;=nbVotesPremierCandidat ET si votes[compteur]!=votes[rangPremierCandidat]" algoitem="SI (votes[compteur]&lt;=nbVotesPremierCandidat ET si votes[compteur]!=votes[rangPremierCandidat]) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#nbVotesDeuxiemeCandidat#votes[compteur]#pasliste" algoitem="nbVotesDeuxiemeCandidat PREND_LA_VALEUR votes[compteur]"/>
                    <item code="5#rangDeuxiemeCandidat#compteur#pasliste" algoitem="rangDeuxiemeCandidat PREND_LA_VALEUR compteur"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="103#commentaire" algoitem=""/>
                <item code="103#commentaire" algoitem=""/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="103#commentaire" algoitem=""/>
            <item code="4#Le candidat ayant le plus de votes est : #0" algoitem="AFFICHER &quot;Le candidat ayant le plus de votes est : &quot;"/>
            <item code="3#candidats#1#rangPremierCandidat" algoitem="AFFICHER candidats[rangPremierCandidat]"/>
            <item code="103#commentaire" algoitem=""/>
            <item code="5#tour#tour+1#pasliste" algoitem="tour PREND_LA_VALEUR tour+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="103#commentaire" algoitem=""/>
        <item code="6#tour==2" algoitem="SI (tour==2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Début du deuxième tour !#1" algoitem="AFFICHER &quot;Début du deuxième tour !&quot;"/>
            <item code="103#commentaire" algoitem=""/>
            <item code="103#commentaire" algoitem=""/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
