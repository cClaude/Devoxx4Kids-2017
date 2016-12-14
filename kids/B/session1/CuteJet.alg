// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
loop(10){
	set gemGreen = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gemGreen.move(x,y)
	gemGreen.scale(0.7)
	gemGreen.typeSensor().hitCircle();
	
	set winGem2=function (){
		gameLayer.remove(gemGreen);
		score=score+15
	}
	
	
	gemGreen.onContactWith(hero,winGem2);
	
}


loop(25){
	set gemBlue = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gemBlue.scale(0.7)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gemBlue.move(x,y)
	
	gemBlue.typeSensor().hitCircle();
	set winGem=function (){
		gameLayer.remove(gemBlue);
		score=score+10
	}
	
	gemBlue.onContactWith(hero,winGem);
	
}






// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
