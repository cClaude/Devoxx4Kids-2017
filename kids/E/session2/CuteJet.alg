// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
loop(19) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gem.move(x, y).scale(0.5)
	gem.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(gem);
		score = score + 3
	}
	gem.onContactWith(hero, winGem);
}
loop(22) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gem.move(x, y).scale(0.5)
	gem.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(gem);
		score = score + 2
	}
	gem.onContactWith(hero, winGem);
}
loop(12) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	gem.move(x, y).scale(0.5)
	gem.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(gem);
		score = score + 6
	}
	gem.onContactWith(hero, winGem);
}








// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
