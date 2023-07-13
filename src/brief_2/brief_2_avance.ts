const PERSONNAGES : Array<string> = ["heros", "capitaine", "soldat", "traitre", "maudit", "mage"]

function getRandomInt(nbCases: number) {
    return Math.floor(Math.random() * nbCases);
}


/* dices = dés en anglais */
function getAllDiceCombinations(dices: any[]) {
    const toCombine = new Array(dices.length).fill("").map((_, i) => i)
    let combinations: any[] = []
    let temp: any[] = []
    let slent = Math.pow(2, toCombine.length) - 1
  
    for (let i = 0; i < slent; i++) {
      temp = []
      for (var j = 0; j < toCombine.length; j++) {
        if (i & Math.pow(2, j)) {
          temp.push(toCombine[j])
        }
      }
  
      if (temp.length > 0) {
        combinations.push(temp)
      }
    }
  
    return combinations.map((combi) => {
      const completion = toCombine.filter((index) => combi.indexOf(index) === -1)
      const diceCombi = combi.map((e) => dices[e])
      const diceCompletion = completion.map((e) => dices[e])
      return [diceCombi, diceCompletion]
    })
  }


function trouverSolution(nbDeLances) {

    let personnagesTires : Array<string> = []
    let lotDesDeuxEquipes : Array<string> = []
    let premiereEquipe : Array<string> = []
    let deuxiemeEquipe : Array<string> = []
    let scorePremiereEquipe, scoreDeuxiemeEquipe : number = 0 /* variables utiles ou pas ? */

    /* je rempli mon tableau personnagesTires avec des valeur aléatoires */
    for (let index = 0; index < nbDeLances; index++) {
        const rangPersonnageAleatoire = getRandomInt(PERSONNAGES.length)

        personnagesTires.push(PERSONNAGES[rangPersonnageAleatoire])
    }

    /* je crée un second tableau parallele à personnagesTires avec le score pour chaque personnage */
        let scorePersonnagesAleatoires : Array<number> = personnagesTires.map((personnage, index) => {
            let score : number = 0;
            if (personnage==="heros") {
                score += 3;
            } else if (personnage==="capitaine") {
                score += 2;
            } else if (personnage==="soldat") {
                score += 1;
            } else if (personnage==="traitre") {
                personnagesTires.forEach(element => {
                    if(element==="heros") {
                        score -= 3;
                    }
                });
            } else if (personnage==="maudit") {
                score -= 1;
            } else if (personnage==="mage") {
                let longueurTableauSansMage = personnagesTires.filter((personnage, index) => {
                    /*let somme : number = 0*/
                    if(personnage !== "mage") {
                        score++
                    }
                    return score
                })
            }
            return score /* rempli le tableau scorePersonnagesAleatoires à l'index en cours */
        })

        /* je réparti le tableau personnagesTires en 2 tableaux dont le score est égal */

        /*
        let sommeScorePersonnagesAleatoires : number = scorePersonnagesAleatoires.reduce((accumulateur, valeur, index) => {
            return accumulateur + valeur
        }, 0)
        */

        // while (scorePremiereEquipe !== scoreDeuxiemeEquipe) {




        //     if (scorePremiereEquipe===scoreDeuxiemeEquipe) {

        //     }
        // }

        /*
        lotDesDeuxEquipes
        premiereEquipe
        deuxiemeEquipe
        */
}


/* calculer le score pour 1 tableau */
function getScore(tableauEquipe){

}


export const brief_2_avance = () => {
    console.log('Brief 2 (pour les gens avancés)');

    
    const NB_DES_LANCES : number = 7


    trouverSolution(NB_DES_LANCES)
    console.log('tata')

    /* CREER UNE FONCTION GET_SCORE QUI CALCULE LE SCORE DE CHAQUE EQUIPE ET L'INCLURE PLUS BAS*/
    const combinations = getAllDiceCombinations(["hero", "capitaine", "héro"]).find((combinaison) => {
        return getScore(combinaison[0]) === getScore(combinaison[1])
    })
    console.log('combinations', combinations)



}