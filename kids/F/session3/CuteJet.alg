// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop(100){
	set gem = gameLayer.createActor("PlanetCute/Character Pink Girl" )
	set x = math.random(gamelayer.getWidth())
	set y = math.random(gamelayer.getheight())
	
	gem.move(x,y)
	
	gem.typeSensor()
	gem.hitCircle()
	
	set winGem = function() {
		gamelayer.remove(gem)
		score = score + 10
	}
	gem.onContactWith(hero,winGem)                                      
	
	
	
}




































































































// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
