--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
http://wiki.darkrp.com/index.php/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]

-- Основные работы
DarkRP.createCategory{ 
   name = "Основные работы",
   categorises = "jobs",
   startExpanded = false,
   color = Color(18, 135, 0, 255),
   canSee = function(ply) return true end,
   sortOrder = 10,
}

-- Правительство
DarkRP.createCategory{
   name = "Правительство",
   categorises = "jobs",
   startExpanded = false,
   color = Color(0, 136, 145, 255),
   canSee = function(ply) return true end,
   sortOrder = 11,
}

-- Бизнес
DarkRP.createCategory{
   name = "Бизнес",
   categorises = "jobs",
   startExpanded = false,
   color = Color(0, 237, 94, 255),
   canSee = function(ply) return true end,
   sortOrder = 12,
}

-- Криминал
DarkRP.createCategory{
   name = "Криминал",
   categorises = "jobs",
   startExpanded = false,
   color = Color(30, 30, 30, 255),
   canSee = function(ply) return true end,
   sortOrder = 13,
}

-- SCP
DarkRP.createCategory{
   name = "SCP Facility",
   categorises = "jobs",
   startExpanded = false,
   color = Color(255, 255, 0, 255),
   canSee = function(ply) return true end,
   sortOrder = 14,
}




