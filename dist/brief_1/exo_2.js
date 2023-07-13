"use strict";
/* Exercice 2 - Les tableaux

Créer un tableau qui contient les nombres de 1 à  10
1 - en initialisant une variable
2 - en utilisant une boucle
3 - en utilisant un new Array, fill et map

Afficher la longueur du tableau
Afficher le premier élément du tableau
Afficher le dernier élément du tableau
Afficher le 4ème élément du tableau
Doublez toutes les valeurs du tableau dans une variable tableauBis
Afficher le tableauBis */
Object.defineProperty(exports, "__esModule", { value: true });
exports.brief_1_exo_2 = void 0;
const brief_1_exo_2 = () => {
    console.log('Exo 2');
    let tableau = [];
    let tableauBis = [];
    let longueurTableau = 0;
    for (let index = 0; index < 10; index++) {
        tableau[index] = index + 1;
        tableauBis[index] = (index + 1) * 2;
        longueurTableau++;
    }
    console.log('Longueur de tableau : ', longueurTableau);
    console.log('Premier élément de tableau : ', tableau[0]);
    console.log('Dernier élément de tableau : ', tableau[longueurTableau - 1]);
    console.log('Contenu de tableauBis :');
    for (let index = 0; index < longueurTableau; index++) {
        console.log(tableauBis[index]);
    }
};
exports.brief_1_exo_2 = brief_1_exo_2;
