"use strict";
/* Exercice 1 - Les variables
Créer une variable a qui contient le nombre 5
Créer une variable b qui contient le nombre 1
Afficher deux logs pour indiquer si ces variables sont supérieures à PI et qui est la plus grande des deux valeurs (utiliser une ternaire) */
Object.defineProperty(exports, "__esModule", { value: true });
exports.brief_1_exo_1 = void 0;
const brief_1_exo_1 = () => {
    console.log('Exo 1');
    let a = 5;
    let b = 1;
    const pi = 3.14;
    if (a > pi) {
        console.log('La variable a (', a, ') est supérieure à PI.');
    }
    if (b > pi) {
        console.log('La variable b (', b, ') est supérieure à PI.');
    }
    if (a > b) {
        console.log('La variable a (', a, ') est supérieure à la variable b (', b, ').');
    }
    else {
        console.log('La variable b (', b, ') est supérieure à la variable a (', a, ').');
    }
};
exports.brief_1_exo_1 = brief_1_exo_1;
