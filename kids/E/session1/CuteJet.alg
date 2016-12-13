
// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
loop(10)  {
	set gem = gameLayer.createActor("PlanetCute/Heart", 250, 250)
	gem.scale(1)
	gem.move(200, 400)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gem.move(x, y)
	gem.typeSensor().hitCircle();
	
	set winHeart = function() {
		gameLayer.remove(gem);
		set boing1 = game.createSound("Game/Boing1").playLoop();
	life = life + 1	
		
	}
	
	gem.onContactWith(hero, winHeart);
	
}
loop(35)  {
	set hello = gameLayer.createActor("SpaceArt/laserGreenShot", 250, 250);
	hello.scale(2)
	hello.move(200,400)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	hello.move(x, y)
	
	hello.typeSensor().hitCircle();
}




loop(15)  {
	set octo = gameLayer.createActor("PlanetCute/octopus", 250, 250);
	octo.scale(2)
	octo.move(200,400)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	
	octo.move(x, y)
	
	octo.typeSensor().hitCircle();
}
loop(35)  {
	set scor = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	scor.scale(0.7)
	scor.move(200,400)
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	scor.move(x, y)
	
	scor.typeSensor().hitCircle();
	set winGem = function() {
		gameLayer.remove(scor);
		set boing1 = game.createSound("Game/Boing1").playLoop();
		score = score + 2
	}
	scor.onContactWith(hero, winGem);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// -----------------------------------------------------------------------------
	// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE
	
	include("../includes/CuteJet.include3");
