// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop(999){
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 350, 350);
	gem.scale(0.5)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gem.move(x, y)
	gem.typeSensor() .hitCircle() ;
	set winGem = function(){
		gameLayer.remove(gem);
		score = score+500
		
	}
	gem.onContactWith(hero, winGem);
}

















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
