"use strict";
/* Dans la vie on peut faire des choix, et ces choix ont des conséquences...
Patchoupi le train offre un voyage inoubliable.
10 Wagons sont disponibles, ils sont numérotés de 3 à 12.
Le nombre de passagers initiaux dans chaque wagon est égal au triple du numéro du wagon.
Le train avance à une vitesse de 92km/h.
Chaque minute, un passager est débarqué du train dans un wagon aléatoire.
Lorsqu'un wagon est vide, il est enlevé du train.
Lorsque un wagon est enlevé du train, la vitesse augmente de 10km/h.

1. Ecrire le programme qui affiche chaque minute (fictive) :
- le nombre de passagers dans chaque wagon
- la vitesse du train
- le nombre de kilomètres parcourus

2. Ecrire à la fin du programme, le nombre de kilomètres parcourus.

3. Calculer la moyenne, sur 100 voyages, du nombre de kilomètres parcourus. */
Object.defineProperty(exports, "__esModule", { value: true });
exports.brief_2_debutants = void 0;
function getRandomInt(nbCases) {
    return Math.floor(Math.random() * nbCases);
}
function calculerKmParcourusParVoyage() {
    /* 10 Wagons sont disponibles, ils sont numérotés de 3 à 12. */
    const numWagons = [];
    for (let index = 3; index < 13; index++) {
        numWagons.push(index);
    }
    /*const numWagons : Array<number> = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12];*/
    /* Le nombre de passagers initiaux dans chaque wagon est égal au triple du numéro du wagon. */
    let nbPassagersParWagon = numWagons.map((num, index) => {
        return num * 3;
    });
    /* Le train avance à une vitesse de 92km/h. */
    let vitesseTrain = 92;
    /* Chaque minute, un passager est débarqué du train dans un wagon aléatoire. */
    let minutes = 0;
    let nbKmTotal = 0;
    while (nbPassagersParWagon.length > 0) {
        minutes += 1;
        const rangWagonAleatoire = getRandomInt(nbPassagersParWagon.length);
        nbPassagersParWagon[rangWagonAleatoire] -= 1;
        /* Lorsqu'un wagon est vide, il est enlevé du train. Lorsque un wagon est enlevé du train, la vitesse augmente de 10km/h. */
        nbPassagersParWagon = nbPassagersParWagon.filter((nbPassagers, index) => {
            if (nbPassagers === 0) {
                vitesseTrain += 10;
            }
            return nbPassagers > 0;
        });
        const nbPassagersTotal = nbPassagersParWagon.reduce((accumulateur, valeur, index) => {
            return accumulateur + valeur;
        }, 0); /* 0 correspond à la valeur initial du paramètre accumulateur. */
        /* 1. Ecrire le programme qui affiche chaque minute (fictive) :
        - le nombre de passagers dans chaque wagon
        - la vitesse du train
        - le nombre de kilomètres parcourus */
        let kmParMinutes = Math.round((vitesseTrain / 60) * 10) / 10;
        console.log(`A ${minutes} minutes, il y a ${nbPassagersTotal} passagers, le train roule à ${vitesseTrain} km/h et a parcouru ${kmParMinutes} km.`);
        nbKmTotal += kmParMinutes;
        nbKmTotal = Math.round(nbKmTotal * 10) / 10;
    }
    ;
    if (nbPassagersParWagon.length === 0) {
        /* 2. Ecrire à la fin du programme, le nombre de kilomètres parcourus. */
        console.log(`Le train a parcouru en tout ${nbKmTotal} km depuis le début du voyage.`);
    }
    return nbKmTotal;
}
/* 3. Calculer la moyenne, sur 100 voyages, du nombre de kilomètres parcourus. */
function calculerMoyenneKmPacourusPourCentVoyages() {
    let KmPacourusPourCentVoyages = [];
    for (let index = 0; index < 100; index++) {
        KmPacourusPourCentVoyages.push(calculerKmParcourusParVoyage());
    }
    let sommeKmPacourusPourCentVoyages = KmPacourusPourCentVoyages.reduce((accumulateur, valeur) => {
        return accumulateur + valeur;
    }, 0);
    let moyenneKmPacourusPourCentVoyages = Math.round((sommeKmPacourusPourCentVoyages / 100) * 10) / 10;
    /*console.log(`somme des 100 voyages : ${sommeKmPacourusPourCentVoyages}`);*/
    console.log(`En 100 voyages, le train a parcouru en moyenne ${moyenneKmPacourusPourCentVoyages} km.`);
}
const brief_2_debutants = () => {
    console.log('Brief 2 (pour les débutants)');
    /*calculerKmParcourusParVoyage();*/
    /*calculerMoyenneKmPacourusPourCentVoyages();*/
};
exports.brief_2_debutants = brief_2_debutants;
