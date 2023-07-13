"use strict";
/* Exercice 4 - Les élections

```typescript
const candidats = ["lepeigne", "melangeons", "macreau", "varousselle", "paicvaissrelle", "poutoutout", "hidalgogo"];
const votes = [];
```

1. Remplir le tableau de votes du premier tour avec 1000 votes aléatoires
Afficher le nombre de votes pour chaque candidat
Afficher le nom du candidat qui a le plus de votes
Afficher les noms des candidats qui passent au deuxième tour

2. Nous ne sommes plus en démocratie, paicvaissrelle rachète des voix à lepeigne :
10€ par voix, Elle a un budget de 1000€, combien de voix peut-elle acheter ?

3. Simulez le deuxième tour avec 1000 votes aléatoires entre les deux premiers candidats
N'oubliez pas, paicvaissrelle peut acheter des voix aux electeurs de lepeigne s'il lui reste de l'argent.
Si lepeigne passe au deuxième tour avec paicvaissrelle, elle lui pique des voix.
Si lepeigne ne pas au deuxième tour, elle démarre avec, au maximum les voix de lepeigne au premier tour.

4. Simulez les votes avec ce tableau de sondage :
``` typescript
const sondage = [
    { candidat: "lepeigne", voix: 21 },
    { candidat: "melangeons", voix: 19 },
    { candidat: "macreau", voix: 21 },
    { candidat: "varousselle", voix: 3 },
    { candidat: "paicvaissrelle", voix: 1 },
    { candidat: "poutoutout", voix: 1 },
    { candidat: "hidalgogo", voix: 1 },
];
```
*/
Object.defineProperty(exports, "__esModule", { value: true });
exports.exo4 = void 0;
function getRandomInt(nbCases) {
    return Math.floor(Math.random() * nbCases);
}
const exo4 = () => {
    console.log('Exo 4');
    const candidats = ["lepeigne", "melangeons", "macreau", "varousselle", "paicvaissrelle", "poutoutout", "hidalgogo"];
    let votes = [];
    let tour = 1;
    let nbVoixTotales = 100;
    if (tour === 1) {
        console.log('Premier tour !');
        for (let index = 0; index < nbVoixTotales; index++) {
            const rangVoteAleatoire = getRandomInt(candidats.length); /* constante locale qui génère un nombre aléatoire entre 0 et 6. */
            votes.push(candidats[rangVoteAleatoire]); /* le nom du candidat choisi lors de l'itération en cours est rajouté A LA FIN du tableau votes[] */
        }
        /* comment rendre accessible le tableau votes[] pour la suite du code ? */
        const VotesParCandidat = candidats.map((nomCandidat, index) => {
            let nbVotes = 0;
            votes.forEach((vote) => {
                if (candidats[index] === vote) {
                    nbVotes += 1;
                }
            });
            return nbVotes; /* met dans l'élément à l'index en cours la valeur de nombre de votes récoltés. */
        });
        for (let index = 0; index < candidats.length; index++) { /* affichage des résultats pour chaque candidat. */
            console.log(candidats[index] + ' : ' + VotesParCandidat[index] + ' voix.');
        }
    }
};
exports.exo4 = exo4;
