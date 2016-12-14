// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop(20) {
	
	
	set gemGreen = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gemGreen.scale(1)
	//gemGreen.move(200, 400)
	set x = math.random(gameLayer.getWidth())
	set y = 50+math.random(gameLayer.getHeight()-50)
	gemGreen.move(x, y)
	gemGreen.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(gemGreen);
		score = score + 5
	}
	gemGreen.onContactWith(hero, winGem);
}
loop(20) {
	
	set gemOrange = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	gemOrange.scale(1)
	//gemOrange.move(200, 400)
	set x = math.random(gameLayer.getWidth())
	set y = 50+math.random(gameLayer.getHeight()-50)
	gemOrange.move(x, y)
	gemOrange.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(gemOrange);
		score = score + 10
	}
	gemOrange.onContactWith(hero, winGem);
}
loop(200) {
	
	set heart1 = gameLayer.createActor("PlanetCute/Heart", 250, 250);
	heart.scale(2)
	//heart.move(200, 400)
	set x = math.random(gameLayer.getWidth())
	set y = 50+math.random(gameLayer.getHeight()-50)
	heart.move(x, y)
	heart.typeSensor().hitCircle();
	set winHeart = function() {
		gameLayer.remove(heart);
		life = life +1
	} 
	heart.onContactWith(hero, winHeart);
	}
	// -----------------------------------------------------------------------------
	// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE
	
	include("../includes/CuteJet.include3");
