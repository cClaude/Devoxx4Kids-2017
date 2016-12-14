// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

loop(25)  {
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	
	gem.typeSensor()
	gem.hitCircle()
	
	set winGem = function()  {
		gameLayer.remove(gem);
		score = score + 1;
	}
	
	gem.onContactWith(hero, winGem);
	
	
	set y = math.random(gameLayer.getHeight())
	set x = math.random(gameLayer.getWidth())
	
	gem.move(x, y)
	
	
	set gem = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	
	gem.scale(0.25)
	
	gem.typeSensor()
	gem.hitCircle()
	
	set winGem = function()  {
		gameLayer.remove(gem);
     score = score + 10;
	}
	
	gem.onContactWith(hero, winGem);
	
	set y = math.random(gameLayer.getHeight())
	set x = math.random(gameLayer.getWidth())
	
	gem.move(x, y)
	
	
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	
	gem.scale(0.5)
	
	gem.typeSensor()
	gem.hitCircle()
	
	
	set winGem = function()  {
		gameLayer.remove(gem);
		score = score + 5;
	}
	
	gem.onContactWith(hero, winGem);
	
	
	set y = math.random(gameLayer.getHeight())
	set x = math.random(gameLayer.getWidth())
	
	gem.move(x, y)
	
}

loop(10) {
	set rock = gameLayer.createActor("PlanetCute/Rock", 250, 250);
  rock.typeStatic()
	rock.hitCircle()
	set y = math.random(gameLayer.getHeight())
	set x = math.random(gameLayer.getWidth())	
	
rock.move(x, y)	
	set winRock = function()  {
		gameLayer.remove(rock);
		life = life - 1;
rock.onContactWith(hero, winRock)

	}
}














// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
