/* Exercice 3 - 

On a un stock de foin qui contient 800 kg de foin.
On a 2 moutons qui mangent 500g de foin par jour.
Un des mouton est transformé en gigot au bout de 1000 jours.
Combien de temps le stock de foin va-t-il durer ?

Même exercice si le stock est de 20 kg 
Même exercice si le nombre de mouton est de 5 kg. */

export const brief_1_exo_3 = () => {
    console.log('Exo 3');

    const consoJournaliereMouton : number = 0.25;
    
    let nombreJours : number = 0;
    let stockFoinInitial : number = 800;
    let stockFoin : number = stockFoinInitial;
    let nombreMoutons : number = 2;
    let consoJournaliereMoutons : number = nombreMoutons*consoJournaliereMouton;
    
    while (stockFoin>0) {
        if (nombreJours===1000) {
            nombreMoutons--;
        }
        consoJournaliereMoutons = nombreMoutons*consoJournaliereMouton;
        nombreJours++;
        stockFoin -= consoJournaliereMoutons;
    }

    console.log('Avec ' + stockFoinInitial + ' kg initial de foin, le stock va durer ' + nombreJours + ' jours.');
}