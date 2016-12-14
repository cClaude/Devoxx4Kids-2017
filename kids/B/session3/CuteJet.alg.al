// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop (2) {
	
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	
	set gem = gameLayer.createActor(
	"PlanetCute/Gem Green");
	
	gem.scale(91)
	gem.move(x, y)
	
	gem.typeSensor().hitCircle()
	
	set winGem = function() {
		gameLayer.remove(gem);	score= score+100
	}

	gem.onContactWith(hero, winGem)

}






// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
