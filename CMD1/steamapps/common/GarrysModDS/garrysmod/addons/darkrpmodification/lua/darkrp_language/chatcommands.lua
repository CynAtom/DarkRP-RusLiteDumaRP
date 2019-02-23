--[[---------------------------------------------------------------------------
English (example) Chat command translation file
---------------------------------------------------------------------------

This file contains translations for chat command descriptions.
On the left side you see the chat command, on the right side you see the description.
When translating these descriptions, make sure to leave the quotation marks (" ") and commas intact!

= Warning =
Sometimes when DarkRP is updated, new chat commands are added, changed and/or removed.
By default, chat commands that aren't translated will use the English description.
Chat command translations that don't exist are ignored.


= How to translate missing chat commands =
1. Start the server
2. Join it
3. In your console, enter the following command:
	darkrp_translateChatCommands
4. Come back to this file
5. Paste where it says "-- Add new chat command translations under this line:"

= Note =
Make sure the language code is right at the bottom of this file

= Using a language =
Make sure the convar gmod_language is set to your language code. You can do that in a server CFG file.
---------------------------------------------------------------------------]]

local descriptions = {
	["/"]                     =	"Глобальный чат",
	["a"]                     =	"Глобальный чат",
	["addjailpos"]            =	"Добавить позицию тюрьмы",
	["addlaw"]                =	"Добавить закон",
	["addowner"]              =	"Добавить владельца",
	["addspawn"]              =	"Добавить позицию для спавна работы",
	["addzombie"]             =	"Добавить позицию спавна зомби",
	["advert"]                =	"Объявление",
	["agenda"]                =	"Повестка дня",
	["ao"]                    =	"Добавить владельца",
	["broadcast"]             =	"Сделать объявление от лица мэра",
	["buy"]                   =	"купить пистолет",
	["buyammo"]               =	"Купить патроны",
	["buydruglab"]            =	"Купить наркостанцию",
	["buygunlab"]             =	"Купить оружейную",
	["buymoneyprinter"]       =	"Купить денежный принтер",
	["buyshipment"]           =	"Купить товар",
	["buyvehicle"]            =	"Купить транспорт",
	["channel"]               =	"Смеитьь канал радио",
	["check"]                 =	"Выпить чек",
	["cheque"]                =	"Выпить чек",
	["chief"]                 =	"Стать шерифом",
	["citizen"]               =	"Стать гражданским",
	["cp"]                    =	"Стать полицейским без голосования",
	["cr"]                    =	"Позвать на помощ(полицию)",
	["credits"]               =	"Передать DarkRP кредиты",
	["demote"]                =	"Уволить человека с работы",
	["demotelicense"]         =	"Запросить лицензию",
	["disablestorm"]          =	"Отключить метеор. шторм",
	["disablezombie"]         =	"Отключить зомби мод",
	["dropmoney"]             =	"Бросить деньги",
	["enablestorm"]           =	"Включить метеор. шторм",
	["enablezombie"]          =	"Включить зомби мод",
	["g"]                     =	"Групповой чат",
	["gangster"]              =	"Become Gangster.",
	["give"]                  =	"Дать денег человеку напротив",
	["givelicense"]           =	"Дать лицензию",
	["gundealer"]             =	"Become Gun Dealer.",
	["hitprice"]              =	"Установить цену заказа",
	["hobo"]                  =	"Стать бездомным",
	["jailpos"]               =	"Переназначить позицию тюрьмы",
	["job"]                   =	"Сменить название работы",
	["jobswitch"]             =	"Сменить человеку работу (смотреть нанего)",
	["lockdown"]              =	"НАчать ком. час",
	["lottery"]               =	"Начать лотерею",
	["makeshipment"]          =	"Создать ящик для оружия",
	["maxzombie"]             =	"Установить макс кол-во зомби",
	["maxzombies"]            =	"Установить макс кол-во зомби",
	["mayor"]                 =	"Стать мэром без голосования",
	["me"]                    =	"Действие",
	["medic"]                 =	"Стать медиком",
	["mobboss"]               =	"Стать главой бандитов",
	["moneydrop"]             =	"Бросить деньги",
	["name"]                  =	"Сменить РП имя",
	["nick"]                  =	"Сменить РП ник",
	["ooc"]                   =	"Глобал чат",
	["placelaws"]             =	"Доска с законами",
	["pm"]                    =	"Send a private message to someone.",
	["price"]                 =	"Set the price of the microwave or gunlab you're looking at",
	["radio"]                 =	"Say something through the radio.",
	["removelaw"]             =	"Remove a law from the laws board.",
	["removeletters"]         =	"Remove all of your letters.",
	["removeowner"]           =	"Remove an owner from the door you're looking at.",
	["removespawn"]           =	"Remove a spawn position for some job (use the command name of the job as argument)",
	["removezombie"]          =	"Remove a zombie spawn pos by id (get id with /showzombie).",
	["requesthit"]            =	"Request a hit from the player you're looking at",
	["requestlicense"]        =	"Request a gun license.",
	["ro"]                    =	"Remove an owner from the door you're looking at.",
	["rpname"]                =	"Set your RP name",
	["setprice"]              =	"Set the price of the microwave or gunlab you're looking at",
	["setspawn"]              =	"Reset the spawn position for some job and place a new one at your position (use the command name of the job as argument)",
	["showzombie"]            =	"Show zombie spawn positions.",
	["sleep"]                 =	"Go to sleep or wake up",
	["splitshipment"]         =	"Split the shipment you're looking at.",
	["switchjob"]             =	"Switch jobs with the player you're looking at",
	["switchjobs"]            =	"Switch jobs with the player you're looking at",
	["teamban"]               =	"Ban someone from getting a certain job",
	["teamunban"]             =	"Undo a teamban",
	["title"]                 =	"Set the title of the door you're looking at.",
	["togglegroupownable"]    =	"Set this door group ownable.",
	["toggleown"]             =	"Own or unown the door you're looking at.",
	["toggleownable"]         =	"Toggle ownability status on this door.",
	["toggleteamownable"]     =	"Toggle this door ownable by a given team.",
	["type"]                  =	"Type a letter.",
	["unlockdown"]            =	"Stop a lockdown",
	["unownalldoors"]         =	"Sell all of your doors.",
	["unwanted"]              =	"Remove a player's wanted status.",
	["votecp"]                =	"Vote to become Civil Protection.",
	["votemayor"]             =	"Vote to become Mayor.",
	["w"]                     =	"Say something in whisper voice.",
	["wake"]                  =	"Go to sleep or wake up",
	["wakeup"]                =	"Go to sleep or wake up",
	["wanted"]                =	"Make a player wanted. This is needed to get them arrested.",
	["warrant"]               =	"Get a search warrant for a certain player. With this warrant you can search their house",
	["write"]                 =	"Write a letter.",
	["y"]                     =	"Yell something out loud.",
	["zombiemax"]             =	"Set the maximum amount of zombies that can be in a level.",

	-- Add new chat command translations under this line:

}

--
DarkRP.addChatCommandsLanguage("en", descriptions)
