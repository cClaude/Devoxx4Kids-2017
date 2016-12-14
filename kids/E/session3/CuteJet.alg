// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");
include("../includes/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
loop(5) {
	
	set gem = gameLayer.createActor("PlanetCute/Gem Blue");
	gem.scale(1)
	gem.typeSensor().hitCircle();
	set winGem=function(){
		gameLayer.remove(gem);
		score=score+5
	}
	gem.onContactWith(hero, winGem);
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	gem.move(x, y)
	set gemGreen = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gemGreen.scale(0.5)
	gemGreen.typeSensor()
	gemGreen.hitCircle()
	set winGemGreen=function(){
		gameLayer.remove(gemGreen);
		score=score+10
	}
	gemGreen.onContactWith(hero, winGemGreen);
	x = math.random(gameLayer.getWidth())
	y = math.random(gameLayer.getHeight())
	gemGreen.move(x, y)
}
set key1 = gameLayer.createActor("PlanetCute/Key", 250, 250);
key1.scale(1.25)

set x = math.random(gameLayer.getWidth())
set y = math.random(gameLayer.getHeight())
key1.move(x, y)
key1.typeSensor()
key1.hitSquare()
set winKey1=function(){
	gameLayer.remove(key1);
	score=score+100
}
key1.onContactWith(hero, winkey1);
set chestClosed = gameLayer.createActor("PlanetCute/Chest Closed", 250, 250);
x = math.random(gameLayer.getWidth())
y = math.random(gameLayer.getHeight())
chestClosed.move(x, y)
chestClosed.scale(1.75)
chestClosed.typeSensor()
chestClosed.hitSquare()
set winchestClosed=function(){
	gameLayer.remove(chestClosed);
	score=score+250
}
chestClosed.onContactWith(hero, winchestClosed);
loop(2) {

set heart = gameLayer.createActor("PlanetCute/Heart", 250, 250);
x = math.random(gameLayer.getWidth())
y = math.random(gameLayer.getHeight())
heart.move(x, y)
heart.scale(0.5)
heart.typeSensor()
heart.hitSquare()
set winheart=function(){
	gameLayer.remove(heart);
	life=life+1
}
heart.onContactWith(hero,winheart);
}









// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
