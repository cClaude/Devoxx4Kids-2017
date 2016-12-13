// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
loop (45){
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gem.scale(0.5) ;
	loop (25){
		set x = math.random(gameLayer.getWidth())
		set y = math.random(gameLayer.getHeight())
		gem.move(x, y)
		gem.move(x, y).scale(0.5)
		gem.typeSensor().hitCircle();
		set winGem = function(){
			gamelayer.remove(gem);
			score=score +50
		}
		gem.onContactWith(hero,winGem);
		
	}
	set chestLid = gameLayer.createActor("PlanetCute/Chest Lid", 250, 250);
	
	set key = gameLayer.createActor("PlanetCute/Key", 250, 250);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// -----------------------------------------------------------------------------
	// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE
	
	include("../includes/CuteJet.include3");
