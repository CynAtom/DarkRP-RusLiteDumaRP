--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]
-- Гражданин
TEAM_CITIZEN = DarkRP.createJob("Гражданин", {
   color = Color(0, 201, 8, 255),
   model = {
   "models/player/Group02/male_02.mdl",
   "models/player/Group01/male_01.mdl",
   "models/player/Group01/male_03.mdl",
   "models/player/Group01/male_09.mdl",
   "models/player/Group01/male_07.mdl",
   "models/player/Group01/male_08.mdl",
   "models/player/Group01/female_01.mdl",
   "models/player/Group01/female_02.mdl"
   },
   description = [[Гражданин - базовый общественный слой, которым вы можете безпрепятственно стать. У вас нет предопределенной роли в жизни города. Вы можете придумать себе свою собственную профессию и заниматься вашим делом.]],
   weapons = {"m9k_fists"},
   command = "citizen",
   max = 0,
   salary = 100,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = true,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Основные работы",
})
-- Бездомный
TEAM_HOBO = DarkRP.createJob("Бездомный", {
   color = Color(94, 50, 0, 255),
   model = {"models/player/corpse1.mdl"},
   description = [[Бездомный находится в самом низу общественного стоя. Над ним все смеются. У вас нет дома. Вы вынуждены просить еду и деньги. Постройте дом из дощечек и подручного мусора, чтобы укрытся от холода. Вы можете поставить ведро и написать на нем просьбу, что бы вам подали денег. Проявите фантазию, устройте цирковое представление,спойте песню. Таким образом вы можете получить больше денег.]],
   weapons = {"weapon_bugbait", "m9k_fists", "weapon_gpee"},
   command = "Hobo",
   max = 0,
   salary = 0,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = true,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = true,
   cook = false,
   category = "Основные работы",
})
-- Медик
TEAM_MEDIC = DarkRP.createJob("Медик", {
   color = Color(0, 255, 224, 255),
   model = {"models/player/kerry/medic/medic_01.mdl", "models/player/kerry/medic/medic_01_f.mdl", "models/player/kerry/medic/medic_02.mdl", "models/player/kerry/medic/medic_02_f.mdl", "models/player/kerry/medic/medic_06.mdl", "models/player/kerry/medic/medic_06_f.mdl"},
   description = [[]],
   weapons = {"med_kit", "m9k_m92beretta"},
   command = "medic",
   max = 4,
   salary = 350,
   admin = 0,
   vote = true,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = true,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Основные работы",
})
 -- Паркурист
TEAM_PARKOURIST = DarkRP.createJob("Паркурист", {
   color = Color(0, 255, 224, 255),
   model = {"models/player/faith.mdl"},
   description = [[???]],
   weapons = {"climb_swep2", "weapon_spraymhs"},
   command = "parkour",
   max = 4,
   salary = 200,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = true,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Основные работы",
})
-- Бизнесмен
TEAM_BUISNESS = DarkRP.createJob("Бизнесмен", {
    color = Color(255, 140, 0, 255),
    model = {"models/grandtheftauto5/michael.mdl"},
    description = [[Открывайте свой бизнесс где хотите!]],
    weapons = {"m9k_fists"},
    command = "buisn",
    max = 2,
    salary = 1100,
    admin = 0,
    vote = false,
    hasLicense = false,
	candemote = false,
	-- CustomCheck
    medic = false,
    chief = false,
    mayor = false,
    hobo = false,
    cook = false,
    category = "Бизнес",
})
-- Владелец казино
TEAM_CASINO = DarkRP.createJob("Владелец казино", {
    color = Color(255, 140, 0, 255),
    model = {"models/11thdoctor/thedoctor.mdl"},
    description = [[лохотронщик]],
    weapons = {"m9k_fists"},
    command = "kaz",
    max = 1,
    salary = 600,
    admin = 0,
    vote = false,
    hasLicense = false,
	candemote = false,
	-- CustomCheck
    medic = false,
    chief = false,
    mayor = false,
    hobo = false,
    cook = false,
    category = "Бизнес",
})
-- Продавец оружия
TEAM_GUN = DarkRP.createJob("Продавец оружия", {
    color = Color(255, 140, 0, 255),
    model = {"models/bigsmoke/smoke.mdl"},
    description = [[]],
    weapons = {"m9k_fists"},
    command = "gundealer",
    max = 2,
    salary = 300,
    admin = 0,
    vote = false,
    hasLicense = false,
	candemote = false,
	-- CustomCheck
    medic = false,
    chief = false,
    mayor = false,
    hobo = false,
    cook = false,
    category = "Бизнес",
})
-- Охранник
TEAM_SEC = DarkRP.createJob("Охранник", {
   color = Color(0, 193, 255, 255),
   model = {
   "models/player/guard_pack/guard_01.mdl",
   "models/player/guard_pack/guard_02.mdl",
   "models/player/guard_pack/guard_03.mdl",
   "models/player/guard_pack/guard_04.mdl",
   "models/player/guard_pack/guard_05.mdl",
   "models/player/guard_pack/guard_07.mdl",
    },
   description = [[Нанимайтесь в охрану магазина, банка, предприятия или же телохранителем.
Вы дожны защищать заведение от хулигагов и мелких воров. При сложной ситуации вызывайте полицию. По умолчанию вам дается "Дубинка". Так что не рискуйте особо, действуйте осторожно.]],
   weapons = {"stunstick", "m9k_uzi"},
   command = "sec",
   max = 4,
   salary = 450,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Основные работы",
   PlayerLoadout = function(ply) ply:SetArmor (20) end,
})
-- Офицер полиции
TEAM_POLICE = DarkRP.createJob("Офицер полиции", {
   color = Color(0, 56, 255, 255),
   model = {"models/kerry/detective/male_01.mdl", "models/kerry/detective/male_03.mdl", "models/kerry/detective/male_04.mdl", "models/kerry/detective/male_05.mdl", "models/kerry/detective/male_07.mdl", "models/kerry/detective/male_09.mdl"},
   description = [[Полицейский является защитником каждого гражданина, который живет в городе. У вас есть власть, вы можете арестовать преступников и защитить невинный людей. Бейте их "Дубиной" если преступники ослушались вас.]],
   weapons = {"arrest_stick", "m9k_usp", "stunstick", "weaponchecker", "door_ram", "arrest_stick", "unarrest_stick"},
   command = "coop",
   max = 6,
   salary = 600,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (50) end,
})
-- Начальник полиции
TEAM_CHIEF = DarkRP.createJob("Начальник полиции", {
   color = Color(0, 56, 255, 255),
   model = {"models/kerry/sheriff/male_01_sheriff.mdl", "models/kerry/sheriff/male_02_sheriff.mdl"},
   description = [[]],
   weapons = {"arrest_stick", "unarrest_stick", "m9k_ragingbull", "stunstick", "weaponchecker", "door_ram", "m9k_m3"},
   command = "chief",
   max = 1,
   salary = 950,
   admin = 0,
   vote = true,
   hasLicense = true,
   NeedToChangeFrom = {TEAM_POLICE},
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (100) end,
})
-- Спецназ
TEAM_OMON = DarkRP.createJob("Спецназ", {
   color = Color(0, 56, 255, 255),
   model = {"models/omgwtfbbq/quantum_break/characters/operators/monarchoperator01.mdl"},
   description = [[]],
   weapons = {"m9k_m416", "m9k_hk45", "arrest_stick", "stunstick", "weaponchecker", "unarrest_stick", "door_ram", "m9k_m61_frag"},
   command = "omon",
   max = 6,
   salary = 750,
   admin = 0,
   vote = true,
   hasLicense = true,
   NeedToChangeFrom = {TEAM_POLICE},
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (100) end,
 })
-- Спецназ медик
TEAM_OMONMED = DarkRP.createJob("Спецназ медик", {
   color = Color(0, 56, 255, 255),
   model = {"models/payday2/units/medic_player.mdl"},
   description = [[]],
   weapons = {"m9k_mossberg590", "m9k_hk45", "arrest_stick", "stunstick", "weaponchecker", "unarrest_stick", "door_ram", "weapon_medkit"},
   command = "omonmed",
   max = 3,
   salary = 850,
   admin = 0,
   vote = true,
   hasLicense = true,
   NeedToChangeFrom = {TEAM_OMON},
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (100) end,
   })
-- Коммандир спецназа (VIP)
TEAM_OMONCOM = DarkRP.createJob("Командир спецназа (VIP)", {
   color = Color(0, 56, 255, 255),
   model = {"models/mark2580/payday2/pd2_swat_shield_zeal_player.mdl"},
   description = [[Полицейский является защитником каждого гражданина, который живет в городе. У вас есть власть, вы можете арестовать преступников и защитить невинный людей. Бейте их "Дубиной" если преступники ослушались вас.]],
   weapons = {"arrest_stick", "m9k_deagle", "m9k_scar", "stunstick", "weaponchecker", "door_ram", "arrest_stick", "unarrest_stick", "m9k_m61_frag"},
   command = "omoncom",
   max = 1,
   salary = 1000,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (120) end,
   customCheck = function(ply) return CLIENT or ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "VIP+" or ply:GetNWString("usergroup") == "moderator" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" end,
   CustomCheckFailMsg = "У вас недостаточно прав,чтобы устроиться на эту работу"
   })
-- Снайпер спецназа (VIP)
TEAM_OMONSNIP = DarkRP.createJob("Снайпер спецназа (VIP)", {
   color = Color(0, 56, 255, 255),
   model = {"models/player/joheskiller/ghilliesuit_forest.mdl"},
   description = [[Полицейский является защитником каждого гражданина, который живет в городе. У вас есть власть, вы можете арестовать преступников и защитить невинный людей. Бейте их "Дубиной" если преступники ослушались вас.]],
   weapons = {"arrest_stick", "m9k_deagle", "m9k_m24", "stunstick", "weaponchecker", "door_ram", "arrest_stick", "unarrest_stick"},
   command = "omonsnip",
   max = 2,
   salary = 800,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (100) end,
   customCheck = function(ply) return CLIENT or ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "VIP+" or ply:GetNWString("usergroup") == "moderator" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" end,
   CustomCheckFailMsg = "У вас недостаточно прав,чтобы устроиться на эту работу"
   })
-- Джаггернаут (VIP)
TEAM_OMONBUL = DarkRP.createJob("Джаггернаут (VIP)", {
   color = Color(0, 56, 255, 255),
   model = {"models/mark2580/payday2/pd2_bulldozer_player.mdl"},
   description = [[Полицейский является защитником каждого гражданина, который живет в городе. У вас есть власть, вы можете арестовать преступников и защитить невинный людей. Бейте их "Дубиной" если преступники ослушались вас.]],
   weapons = {"arrest_stick", "m9k_m249lmg", "stunstick", "weaponchecker", "door_ram", "arrest_stick", "unarrest_stick"},
   command = "omonbul",
   max = 1,
   salary = 750,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = true,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Правительство",
   PlayerLoadout = function(ply) ply:SetArmor (200) end,
   customCheck = function(ply) return CLIENT or ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "VIP+" or ply:GetNWString("usergroup") == "moderator" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" end,
   CustomCheckFailMsg = "У вас недостаточно прав,чтобы устроиться на эту работу"
   })
-- Мэр
TEAM_MAYOR = DarkRP.createJob("Мэр", {
   color = Color(255, 0, 0, 255),
   model = {"models/player/breen.mdl", "models/player/putin.mdl"},
   description = [[]],
   weapons = {"m9k_model627"},
   command = "mayor",
   max = 1,
   salary = 1250,
   admin = 0,
   vote = true,
   hasLicense = true,
   candemote = true,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = true,
   hobo = false,
   cook = false,
   category = "Правительство",
       PlayerDeath = function(ply)
                if ply:Team() == TEAM_MAYOR then
                        ply:changeTeam( TEAM_CITIZEN, true )
                        for k,v in pairs( player.GetAll() ) do
                                DarkRP.notify(v, 1, 4, "Мэр был убит!")
                        end
                end
        end,
})
 -- Бандит
TEAM_GANG = DarkRP.createJob("Бандит", {
   color = Color(107, 107, 107, 255),
   model = {"models/player/Group03/male_01.mdl", "models/player/Group03/male_02.mdl", "models/player/Group03/male_03.mdl","models/player/Group03/male_08.mdl", "models/player/Group03/male_09.mdl", "models/player/Group03/male_05.mdl", "models/player/Group03/female_01.mdl", "models/player/Group03/female_02.mdl", "models/player/Group03/female_05.mdl",},
   description = [[Низшая каста в криминальном мире. Бандит обычно работает на главу банды, который заправляет всеми делами. Воруйте, убивайте на заказ и следуйте агенте от босса, или вы, возможно, будете наказаны.]],
   weapons = {"m9k_colt1911", "pickpocket", "lockpick"},
   command = "gangster",
   max = 10,
   salary = 150,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
})
-- Бандит (VIP)
TEAM_GANGVIP = DarkRP.createJob("Бандит (VIP)", {
   color = Color(107, 107, 107, 255),
   model = {"models/player/suits/robber_open.mdl", "models/player/suits/robber_shirt_2.mdl", "models/player/suits/robber_tuckedtie.mdl"},
   description = [[Низшая каста в криминальном мире. Бандит обычно работает на главу банды, который заправляет всеми делами. Воруйте, убивайте на заказ и следуйте агенте от босса, или вы, возможно, будете наказаны.]],
   weapons = {"m9k_ak47", "pickpocket", "lockpick", "keypad_cracker"},
   command = "gangstervip",
   max = 4,
   salary = 350,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
   PlayerLoadout = function(ply) ply:SetArmor (20) end,
   customCheck = function(ply) return CLIENT or ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "VIP+" or ply:GetNWString("usergroup") == "moderator" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" end,
   CustomCheckFailMsg = "У вас недостаточно прав,чтобы устроиться на эту работу"
})
-- Наркоторговец
TEAM_NARKO = DarkRP.createJob("Наркоторговец", {
   color = Color(107, 107, 107, 255),
   model = {"models/grandtheftauto5/trevor.mdl"},
   description = [[]],
   weapons = {"m9k_colt1911", "pickpocket"},
   command = "narko",
   max = 3,
   salary = 250,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
})
-- Глава бандитов
TEAM_MOB = DarkRP.createJob("Глава бандитов", {
   color = Color(107, 107, 107, 255),
   model = {"models/player/suits/male_01_closed_coat_tie.mdl", "models/player/suits/male_04_closed_coat_tie.mdl", "models/player/suits/male_05_closed_coat_tie.mdl", "models/player/suits/male_08_closed_coat_tie.mdl"},
   description = [[Глава банды является самым главным преступником в городе. Он дает задания своим подчинённым бандитам и формирует эффективные преступные групировки. Он обладает способностью взламывать квартиры и выпускать из тюрем людей.]],
   weapons = {"m9k_thompson", "pickpocket", "lockpick", "keypad_cracker"},
   command = "mobboss",
   max = 1,
   salary = 300,
   admin = 0,
   vote = true,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
})
-- Наемник
TEAM_HIT = DarkRP.createJob("Наемник", {
   color = Color(84, 0, 0, 255),
   model = {"models/grandtheftauto5/franklin.mdl"},
   description = [[]],
   weapons = {"m9k_deagle"},
   command = "killer",
   max = 2,
   salary = 250,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
})
-- Наемник (VIP)
TEAM_HITVIP = DarkRP.createJob("Наемник (VIP)", {
   color = Color(84, 0, 0, 255),
   model = {"models/player/tfa_cso2/ct_helga.mdl"},
   description = [[]],
   weapons = {"m9k_m98b", "climb_swep2"},
   command = "killervip",
   max = 2,
   salary = 350,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
   PlayerLoadout = function(ply) ply:SetArmor (20) end,
   customCheck = function(ply) return CLIENT or ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "VIP+" or ply:GetNWString("usergroup") == "moderator" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" end,
   CustomCheckFailMsg = "У вас недостаточно прав,чтобы устроиться на эту работу"
})
-- Маньяк
TEAM_MANYAK = DarkRP.createJob("Маньяк", {
   color = Color(84, 0, 0, 255),
   model = {"models/dawson/obese_male_deluxe/obese_male_deluxe.mdl"},
   description = [[Убить]],
   weapons = {"m9k_machete"},
   command = "slasher",
   max = 3,
   salary = 250,
   admin = 0,
   vote = false,
   hasLicense = false,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "Криминал",
})
-- Охранник комплекса
TEAM_SCP1 = DarkRP.createJob("Охранник комплекса", {
   color = Color(255, 255, 0, 255),
   model = {"models/scp_operators/scp_security_heavy_p.mdl"},
   description = [[Вы - пушечное мясо]],
   weapons = {"m9k_sig_p229r", "m9k_tar21"},
   command = "scp1",
   max = 8,
   salary = 500,
   admin = 0,
   vote = true,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "SCP Facility",
   PlayerLoadout = function(ply) ply:SetArmor (50) end,
})
-- Медик комплекса
TEAM_SCPMED = DarkRP.createJob("Медик комплекса", {
   color = Color(255, 255, 0, 255),
   model = {"models/scp_operators/scp_security_light_p.mdl"},
   description = [[Вы - медик для пушечного мяса]],
   weapons = {"m9k_mossberg590", "m9k_smgp90", "weapon_medkit"},
   command = "scpmed",
   max = 2,
   salary = 750,
   admin = 0,
   vote = true,
   hasLicense = true,
   NeedToChangeFrom = {TEAM_SCP1},
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "SCP Facility",
   PlayerLoadout = function(ply) ply:SetArmor (50) end,
})
-- Командир охраны
TEAM_SCPCAP = DarkRP.createJob("Командир охраны", {
   color = Color(255, 255, 0, 255),
   model = {"models/scp_operators/scp_security_standard_p.mdl"},
   description = [[Вы - медик для пушечного мяса]],
   weapons = {"m9k_auga3", "m9k_m24", "m9k_jackhammer"},
   command = "scpcom",
   max = 1,
   salary = 950,
   admin = 0,
   vote = true,
   hasLicense = true,
   NeedToChangeFrom = {TEAM_SCP1},
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "SCP Facility",
   PlayerLoadout = function(ply) ply:SetArmor (80) end,
})
-- Спец юнит комплекса
TEAM_SCPSPEC = DarkRP.createJob("Спец юнит комплекса (VIP)", {
   color = Color(255, 255, 0, 255),
   model = {"models/auditor/re2/chr_hunk_pmrig.mdl"},
   description = [[Вы - медик для пушечного мяса]],
   weapons = {"m9k_mossberg590", "m9k_mp5sd", "m9k_sticky_grenade"},
   command = "scpspec",
   max = 2,
   salary = 850,
   admin = 0,
   vote = false,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "SCP Facility",
   PlayerLoadout = function(ply) ply:SetArmor (100) end,
   customCheck = function(ply) return CLIENT or ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "VIP+" or ply:GetNWString("usergroup") == "moderator" or ply:GetNWString("usergroup") == "admin" or ply:GetNWString("usergroup") == "superadmin" end,
   CustomCheckFailMsg = "У вас недостаточно прав,чтобы устроиться на эту работу"
 })
-- Учёный комплекса
TEAM_SCPSC = DarkRP.createJob("учёный комплекса", {
   color = Color(255, 255, 0, 255),
   model = {"models/player/kerry/class_scientist_1.mdl", "models/player/kerry/class_scientist_2.mdl", "models/player/kerry/class_scientist_5.mdl", "models/player/kerry/class_scientist_7.mdl", "models/player/kerry/class_scientist_6.mdl"},
   description = [[Вы - учёный]],
   weapons = {"m9k_glock"},
   command = "scpsc",
   max = 3,
   salary = 800,
   admin = 0,
   vote = true,
   hasLicense = true,
   NeedToChangeFrom = {TEAM_SCP1},
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "SCP Facility",
   PlayerLoadout = function(ply) ply:SetArmor (10) end,
})
-- SCP-173
TEAM_SCP173 = DarkRP.createJob("SCP-173", {
   color = Color(255, 205, 0, 255),
   model = {"models/breach173.mdl"},
   description = [[Вы - 173]],
   weapons = {"scp173"},
   command = "scp173",
   max = 1,
   salary = 300,
   admin = 0,
   vote = true,
   hasLicense = true,
   candemote = false,
   -- CustomCheck
   medic = false,
   chief = false,
   mayor = false,
   hobo = false,
   cook = false,
   category = "SCP Facility",
       PlayerDeath = function(ply)
                if ply:Team() == TEAM_SCP173 then
                        ply:changeTeam( TEAM_CITIZEN, true )
                        for k,v in pairs( player.GetAll() ) do
                                DarkRP.notify(v, 1, 4, "SCP-173 Был отправлен в камеру!")
                        end
                end
        end,
})

-- Профессия при заходе на сервер.
GAMEMODE.DefaultTeam = TEAM_CITIZEN


-- Написать TEAM Гос. сотрудников.
GAMEMODE.CivilProtection = { 
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_OMON] = true,
}

-- Киллер меню
DarkRP.addHitmanTeam(TEAM_HIT) -- У кого можно заказывать убийство.
