// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop(50) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gemBlue = gameLayer.createActor("PlanetCute/Gem Blue");
	gemBlue.typeSensor()
	gemBlue.hitCircle()
	gemBlue.move(x, y).scale(0.75)
	set winGem = function() {
		gameLayer.remove(gemBlue);
		score =score + 50
	}
	gemBlue.onContactWith(hero, winGem);
}


loop(100) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gemGreen = gameLayer.createActor("PlanetCute/Gem Green");
	gemGreen.typeSensor()
	gemGreen.hitCircle()
	gemGreen.move(x, y).scale(0.50)
	set winGem = function() {
		gameLayer.remove(gemGreen);
		score = score + 25
	}
	gemGreen.onContactWith(hero, winGem);
}

loop(25) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set enemyBug = gameLayer.createActor("PlanetCute/Enemy Bug");
EnemyBug.typeSensor()
EnemyBug.hitCircle()
EnemyBug.move(x, y).scale(0.50)
	set winGem = function() {
		gameLayer.remove(EnemyBug);
		life = life - 1



	}
	EnemyBug.onContactWith(hero, winGem);
}








// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
