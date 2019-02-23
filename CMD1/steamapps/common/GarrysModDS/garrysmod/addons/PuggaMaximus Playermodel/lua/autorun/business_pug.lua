local function AddPlayerModel( name, model )

    list.Set( "PlayerOptionsModel", name, model )
    player_manager.AddValidModel( name, model )
    player_manager.AddValidHands( name, model, skin, body )	

end

list.Set( "PlayerOptionsModel", "PuggaMaximus", "models/player/puggamaximus.mdl" )
player_manager.AddValidModel( "PuggaMaximus", "models/player/puggamaximus.mdl" )
player_manager.AddValidHands( "PuggaMaximus", "models/weapons/c_arms_puggamaximus.mdl", 0, "0000000" ) 

