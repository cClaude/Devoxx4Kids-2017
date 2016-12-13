
// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero))
loop(100) {
	set gemBlue2 = gameLayer.createActor("PlanetCute/Gem Blue", 400, 350);
	gemBlue2.scale(0.5)
	set x=math.random(gameLayer.getWidth())
	set y=math.random(gameLayer.getHeight())
	gemBlue2.move(x, y)
	gemBlue2.typeSensor().hitCircle();
	set winGem=function(gemBlue2) {
		score=score +100000000000000000000000000000000000000
			gameLayer.remove(gemBlue2);
		}
		gemblue2.onContactwith(hero, winGem);
}
loop(80) {
set slimeWalk = gameLayer.createActor("Platformer/slime_walk",400,350);
	set x=math.random(gameLayer.getWidth())
	set y=math.random(gameLayer.getHeight())
	slimeWalk.move(x, y)
	
	
}
















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
