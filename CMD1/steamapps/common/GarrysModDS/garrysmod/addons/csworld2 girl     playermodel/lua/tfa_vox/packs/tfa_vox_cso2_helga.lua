TFAVOX_Models = TFAVOX_Models or {}
local model = "models/player/tfa_cso2/ct_helga.mdl" --<< REPLACE THIS WITH YOUR TARGET MODEL, USE FORWARD SLASHES
--[[CONVENIENCE FUNCTIONS, DO NOT EDIT FROM THIS POINT UNTIL CLEAR ]]
--
local tmptbl = string.Split(model, "/")
local mdlprefix = tmptbl[#tmptbl] or model
mdlprefix = string.Replace(mdlprefix, ".mdl", "")
if model == "models/player/player.mdl" then return end

local function iter( str, min, max )
	if not max then
		max = min
		min = 1
	end
	local tbl = {}
	local l = 1
	for i = min, max do
		tbl[ l ] = string.Replace( str, "%d", i )
		l = l + 1
	end
	return tbl
end

--[[CLEAR]]
--
--[[
--To give VOX sound paths, I recommend TFAVOX_GenerateSound.
--TFAVOX_GenerateSound( mdlprefix, "sound_event_here", { "path/to/sound1.wav", "path/to/sound2.wav", "path/to/sound3.wav" }
--You may have as many sounds as you want in the GenerateSound table ^^
--Please have at least one.

--If you insist on doing things manually, ["sound"] can be a TABLE | { "sound1.wav", "sound2.wav", "sound3.wav" } | or a STRING  | "snd" |
--Manual sounds require soundscripts.

--TFA VOX will now automatically calculate delays.
--If you need to manually override, feed ["delay"] with a TABLE | {min,max} | or a NUMBER | 999 |
]]
--

TFAVOX_Models[model] = {
	["main"] = {
		["crithit"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "crithit", iter("player/helga_bighurt_%d.wav",5) )
		},
		["death"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "death", iter("player/helga_death_%d.wav",5) )
		},
		["spawn"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "spawn", iter("ui/ui_helga/ui_select_characters_helga_%d.wav",2) )
		},
		["pickup"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "pickup", iter("ui/ui_helga/ui_change_weapon_helga_%d.wav",2))
		},
		["reload"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "reload", iter("player/yell/helga/reloading_%d.wav",2) )
		},
		["noammo"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "noammo", iter("player/yell/helga/blind_%d.wav",2))
		}
	}, --subtable id
	["murder"] = {
		["generic"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "murdgener", iter("player/yell/helga/killsounding_%d.wav",14) )
		}
	},
	["spot"] = {
		["sniper"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "spotsniper", iter("player/yell/helga/sniper_%d.wav",2) )
		},
		["generic"] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "spotgeneric", iter("radio/helga_local/c3_enemyspot_s_%d.wav",2)  )
		}
	},
	["taunt"] = {
		[ACT_GMOD_GESTURE_AGREE] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "ACT_GMOD_GESTURE_AGREE", iter("radio/helga_local/c1_affirmitive_s_%d.wav",2))
		},
		[ACT_GMOD_GESTURE_BECON] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "ACT_GMOD_GESTURE_BECON", iter("radio/helga_local/z4_followme_s_%d.wav",2))
		},
		[ACT_GMOD_GESTURE_DISAGREE] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "ACT_GMOD_GESTURE_DISAGREE", iter("radio/helga_local/c2_negative_s_%d.wav",2))
		},
		[ACT_GMOD_GESTURE_POINT] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "ACT_GMOD_GESTURE_POINT", iter("radio/helga_local/x1_gogogo_s_%d.wav",2) )
		},
		[ACT_SIGNAL_FORWARD] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "ACT_SIGNAL_FORWARD", iter("radio/helga_local/x1_gogogo_s_%d.wav",2))
		},
		[ACT_SIGNAL_HALT] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "ACT_SIGNAL_HALT", iter("radio/helga_local/x2_fallback_s_%d.wav",2))
		}
	},
	["damage"] = {
		[HITGROUP_GENERIC] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_GENERIC", iter("player/helga_hurt_%d.wav",5)  )
		},
		[HITGROUP_HEAD] = {
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_HEAD", iter("player/helga_bighurt_%d.wav",5)  )
		}
	},
	["callouts"] = {
		["agree"] = {
			["name"] = "Agree", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_Agree", iter("radio/helga_local/c1_affirmitive_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["disagree"] = {
			["name"] = "Disagree", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_Disagree", iter("radio/helga_local/c2_negative_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["backup"] = {
			["name"] = "Need Backup", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_Backup", iter("radio/helga_local/c4_needbackup_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["gogogo"] = {
			["name"] = "Move Out", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_GoGoGo", iter("radio/helga_local/x1_gogogo_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["coverme"] = {
			["name"] = "Cover Me", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_CoverMe", iter("radio/helga_local/z1_coverme_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["followme"] = {
			["name"] = "Follow Me", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_FollowMe", iter("radio/helga_local/z4_followme_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["fallback"] = {
			["name"] = "Fall Back", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_FallBack", iter("radio/helga_local/x2_fallback_s_%d.wav",2) )
		}, -- callout classname in these quotes
		["sticktogether"] = {
			["name"] = "Stick Together", --Callout friendly name ( what you see in the wheel )
			["delay"] = nil,
			["sound"] = TFAVOX_GenerateSound(mdlprefix, "Wheel_FallBack", iter("radio/helga_local/x3_sticktogether_s_%d.wav",2) )
		} -- callout classname in these quotes
	}
}