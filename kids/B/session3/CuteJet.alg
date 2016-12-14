
// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop (10000) {
	
	set gem= gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gem.move(x,y)
	gem.typeSensor().hitCircle();"Futur/Lazer2"
	set wingem = function(){ 
gameLayer.remove(gem);
}
	gem.onContactWith(hero,winGem)
}
loop(130) {
	set rampNorth = gameLayer.createActor("PlanetCute/Ramp North", 250, 250);
	set y = math.random(gameLayer.getHeight())
  set x = math.random(gameLayer.getWidth())
	rampNorth.move(x,y)
	rampNorth.typeSensor().hitCircle();
}
set lazer2 = game.createSound("Futur/Lazer2").playLoop();






















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
