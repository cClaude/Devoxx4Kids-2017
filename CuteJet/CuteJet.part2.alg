// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../CuteJet/CuteJet.include1");
include("../CuteJet/CuteJet.include2");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

set x = math.random(gameLayer.getWidth())
set y = math.random(gameLayer.getHeight())

set gem = gameLayer.createActor(
       "PlanetCute/Gem Green");

gem.scale(0.5)
gem.move(x, y)













// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../CuteJet/CuteJet.include3");