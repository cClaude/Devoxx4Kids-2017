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
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set heart = gameLayer.createActor("PlanetCute/Heart", 250, 250);
	heart.scale (0.5)
	heart.typesensor().hitcircle()
	heart.move(x,y)
	set winheart = function() {
		gamelayer.remove(heart);
		life=life+1
	}
	
	heart.oncontactwith(hero, winheart);
}


loop(15) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set gem = gameLayer.createActor("PlanetCute/Gem Green");
	gem.scale(0.5)
	gem.move(x,y)
	gem.typesensor().hitcircle()
	set wingem = function() {
		gamelayer.remove(gem);
		score=score+10
	}
	
	gem.oncontactwith(hero, wingem);
}

loop(300) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set star = gameLayer.createActor("PlanetCute/Star");
	star.scale(0.5)
	star.move(x,y)
	star.typesensor().hitcircle()
	
	set winstar = function() {
		gamelayer.remove(star);
		score=score+100
	}
	
	star.oncontactwith(hero, winstar);
}

loop(20) {
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight())
	set star = gameLayer.createActor("PlanetCute/Rock");

	star.scale(0.5)
	star.move(x,y)
	star.typesensor().hitcircle()
	set throwrock = function() {
		set y = math.random(gameLayer.getWidth())
set rock = gameLayer.createActor("PlanetCute/Rock",1500, y);
set rock =
	}
	
	star.oncontactwith(hero, winstar);
}











// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include3");
