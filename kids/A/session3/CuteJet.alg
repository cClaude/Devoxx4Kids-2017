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
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", 550, 250);
	
	set x = math.random(gamelayer.getWidth())
	set y = math.random(gameLayer.getHeight()-100)+100
	
	gem.scale(0.5)
	gem.move(x, y)
	gem.typesensor().hitcircle()
	set wingem =function()      {
		gameLayer.remove(gem);
	score=score+5;
	
	}
	
	gem.onContactWith(hero, winGem);
}










// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
