// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero


loop(50)  {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	
	set x1 = math.random(gameLayer.getWidth())
	set y1 = math.random(gameLayer.getHeight())
	
	set x2 = math.random(gameLayer.getWidth())
	set y2 = math.random(gameLayer.getHeight())
	
	set x3 = math.random(gameLayer.getWidth())
	set y3 = math.random(gameLayer.getHeight())
	
	set gem1 = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	set heart = gameLayer.createActor("PlanetCute/Heart", 250, 250);
	set gem2 = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	
	gem.scale(0.5)
	gem.move(x, y)
	gem.typeSensor() 
	gem.hitCircle()
	
	gem1.scale(0.5)
	gem1.move(x1, y1)
	gem1.typeSensor() 
	gem1.hitCircle()
	
	gem2.scale(0.5)
	gem2.move(x3, y3)
	gem2.typeSensor() 
	gem2.hitCircle()
	
	heart.scale(0.5)
	heart.move(x2, y2)
	heart.typeSensor() 
	heart.hitCircle()
	
	set winGem = function(){
		gameLayer.remove(gem);
		score = score + 5
	}
	gem.onContactWith(hero, winGem);
	
	set winGem = function(){
		gameLayer.remove(gem1);
		score = score + 10
	}
	gem1.onContactWith(hero, winGem);
	
	set winHeart = function(){
		gameLayer.remove(heart);
		life = life + 1
	}
	heart.onContactWith(hero, winHeart);
	
	set winGem2 = function(){
		gameLayer.remove(gem2);
		score = score + 15
	}
	gem2.onContactWith(hero, winGem2);
}
























// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
