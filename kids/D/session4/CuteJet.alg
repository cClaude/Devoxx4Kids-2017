// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");


// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
loop (35){
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gem.scale (1)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gem.move (x,y)
	gem.typeSensor ()
	gem.hitCircle ()
	
	set winGem =function(){
		gameLayer.remove(gem);
		score= score +1
	}
	gem.onContactWith(hero,winGem);
}
loop (5){
	///set gem = gameLayer.createActor("PlanetCute/Star", 250, 250);
	set gem = gameLayer.createActor("PlanetCute/Star", 250, 250);
	gem.scale (1)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gem.move (x,y)
	gem.typeSensor ()
	gem.hitCircle ()
	
	set winStar =function(){
		gameLayer.remove(gem);
		score= score +10
	}
	//gem.onContactWith(hero,winStar);
	gem.onContactWith(hero,winStar);
}






















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
