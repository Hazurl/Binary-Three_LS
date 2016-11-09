function new_ABR () {
	var new_Node = function (@_value) {
		var _rightChild;
		var _leftChild;
		return @(function (@cmd) {
			if (cmd === ABR_Search)
				return @(function (@v) {
					if (_value < v) {
						if (_leftChild === null)
							return @false;
						else 
							return @_leftChild(ABR_Search)(v);
					} 
					else if (_value === v) 
						return @true;
					else {
						if (_rightChild === null)
							return @false;
						else 
							return @_rightChild(ABR_Search)(v);
					}
				});
			if (cmd === ABR_Insert)
				return @(function (@v) {

				});
			if (cmd === ABR_Remove)
				return @(function (@v) {

				});
		});
    };

	var _racine = null;

	return @( function (@cmd) {
		if (cmd === ABR_Search)
			return @(function (@v) {
				if (_racine === null)
					return @false;
				else
					return @_racine(ABR_Search)(v);
			});
		if (cmd === ABR_Insert)
			return @(function (@v) {

			});
		if (cmd === ABR_Remove)
			return @(function (@v) {

			});
	});
}

global ABR_Search = 0;
global ABR_Insert = 1;
global ABR_Remove = 2;

// Méthode de chaque noeud
METHODE Recherche (valeur : nombre)
    SI valeur < maValeur
        SI EstVide (enfantGauche)
            RETOURNER Faux
        SINON 
            enfantGauche.Recherche (valeur)
        FIN SI
    SINON SI valeur = maValeur
        RETOURNER Vrai
    SINON
        SI EstVide (enfantDroit)
            RETOURNER Faux
        SINON 
            enfantDroit.Recherche (valeur)
        FIN SI
    FIN SI
FIN METHODE 