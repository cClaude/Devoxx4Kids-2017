// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, he
loop(20) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Green", x, y);
	gem.typeSensor()
	gem.hitCircle()
	set winGem = function(){
		gameLayer.remove(gem);
		score = score+2
	}
	gem.onContactWith(hero, winGem)
}

loop(10) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", x, y);
	gem.typeSensor()
	gem.hitCircle()
	set winGem = function(){
		gameLayer.remove(gem);
		score = score+5;
	}
	gem.onContactWith(hero, winGem)
	
}
loop(5) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Orange", x, y);
	gem.typeSensor()
	gem.hitCircle()
	
	set winGem = function(){
		gameLayer.remove(gem);
		score = score+10;
	}
	gem.onContactWith(hero, winGem)
	
}
loop(50) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set enemyBug7 = gameLayer.createActor("PlanetCute/Enemy Bug", x, y);
	gem.typeSensor()
	gem.hitCircle()
	
	set winGem = function(){
		gameLayer.remove(gem);
		life = life-1;
	}
	gem.onContactWith(hero, winGem)
	
}






// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
