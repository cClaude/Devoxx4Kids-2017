// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero



loop(250) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight()-200)+100
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gem.move(x, y) .scale(1);
	gem.typeSensor() .hitCircle();
	set winGem = function() {
		gameLayer.remove(gem);
		score = score+1
	}
	gem.onContactWith(hero, winGem);
}

set x = math.random(gameLayer.getWidth())
set y = math.random(gameLayer.getHeight()-200)+100
set gemJaune = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
gemJaune.move(x, y)
gemJaune.typeSensor() .hitCircle();
set winGemJaune = function() {
	gameLayer.remove(gemJaune);
	score = score+5
}
gemJaune.onContactWith(hero, winGemJaune);


set x = math.random(gameLayer.getWidth())
set y = math.random(gameLayer.getHeight()-200)+100
set heart = gameLayer.createActor("PlanetCute/heart", 250, 250);
heart.move(x, y)
heart.typeSensor() .hitCircle();
set winHeart = function() {
	gameLayer.remove(heart);
	life = life+1
}
heart.onContactWith(hero, winHeart);
set heartXVelocity = 30;













// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
