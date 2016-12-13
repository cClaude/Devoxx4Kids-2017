// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero




loop(100000) {
	set x = math.random (gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	
	set gem = gameLayer.createActor("PlanetCute/Gem Green");
	gem.move(x, y).scale(0.1)
	gem.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(gem);
		score = score + 1;
		
	}
	gem.onContactWith(hero, winGem);
	
	
	
	
	
	
}












// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
