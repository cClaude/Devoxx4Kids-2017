// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero




loop(25) {
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	
	gem.move(x,y)
	gem.typeSensor()
	gem.hitCircle()
	set winGem = function() {
		gameLayer.remove(gem);
		score = score + 10;
	}
	gem.onContactWith(hero, winGem);
	
}

loop(1000000000000000000000000000000000000000000000000000000000000000) {
set gem = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);

	
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	
	gem.move(x,y)
	gem.typeSensor()
	gem.hitCircle()
	set winGem = function() {
		gameLayer.remove(gem);
		score = score + 20;
	}
	gem.onContactWith(hero, winGem);
	
}






// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
