
// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop(25){
	set gemBlue1 = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gemBlue1.scale(0.5)
	gemBlue1.move(math.random(gameLayer.getWidth()),math.random(gameLayer.getHeight()) + 100)
	set gemOrange2 = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	gemOrange2.scale(0.5)
	gemOrange2.move(math.random(gameLayer.getWidth()),math.random(gameLayer.getHeight())+ 100)
	gemBlue1.typeSensor().hitCircle();
	gemOrange2.typeSensor().hitCircle();
	set winGemBlue1 = function() {
		gameLayer.remove(gemBlue1);
		score = score+10
	}
	gemBlue1.onContactWith(hero, winGemBlue1);
	set winGemOrange2 = function() {
		gameLayer.remove(gemOrange2);
		score = score+5
	}
	gemOrange2.onContactWith(hero, winGemOrange2);
}




















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
