/*----------------------------------------------------------------------
Leak by Famouse

Play good games:↓
http://store.steampowered.com/curator/32364216

Subscribe to the channel:↓
https://www.youtube.com/c/Famouse

More leaks in the discord:↓ 
https://discord.gg/rFdQwzm
------------------------------------------------------------------------*/
ELITE = {}

ELITE.StaffListRanks = { "superadmin", "admin", "operator"} -- Те люди которые будут показыватся в "Администрация"
ELITE.ShowFoodTab = true -- Включен ли голод мод

ELITE.VIPJobCheckbox = true -- Whether or not to show the "Show VIP Jobs" checkbox on the jobs tab. (The checkbox is based on the jobs that have a customCheck)

ELITE.OpenWebsiteInOverlay = false -- If this is true, the website will open in Steam overlay, if false, it will open in the F4 menu.

ELITE.WebsiteURL = "http://valsnet.co/" -- Website that opens when clicking the "Website" button, make sure you include "http://"!

timer.Simple( 1, function() -- Don't screw with this timer, but you may change the tables inside.
    ELITE.AccessToCPCmds = { TEAM_POLICE, TEAM_CHIEF }
    
    ELITE.AccessToMayorCmds = { TEAM_MAYOR }
end)

-- Adding Commands Buttons (Advanced)
/*
MenuAddMButton - Adds button to first section
MenuAddRPButton - Adds button to second section
MenuAddCPButton - Adds button to exclusive CP section
MenuAddMayorButton - Adds button to exclusive mayor section

Format goes as shown:
MenuAddMButton( [Title of button], [Function of button] )

===============================================================================

If you would just like the button to run a command (i.e. /buyhealth):
For the [Function of button] argument, use:

RunConsoleCommand( "say", [Command] )

===============================================================================

If you would like to open a window that takes the players input (number or reason) when clicked:
For the [Function of button] argument, use:

function() OpenTextBox( [Title of dialog box], [Subtext of dialog box], [Command] ) end

===============================================================================

If you would like to open a window with a drop down of players when clicked:
For the [Function of button] argument, use:

function() OpenPlyBox( [Title of dialog box], [Subheading over dropdown], [Command] ) end

===============================================================================

If you would like to open a window with a drop down of players and an input box (reason or number) when clicked:
For the [Function of button] argument, use:

function() OpenPlyReasonBox( [Title of dialog box], [Subheading over dropdown], [Subheading over input box], [Command] ) end

===============================================================================

*/

MONEYCMD_BUTTONS = {}
RPCMD_BUTTONS = {}
CPCMD_BUTTONS = {}
MAYORCMD_BUTTONS = {}
OTHERCMD_BUTTONS = {}

local function AddSidebarButton( n, f )
    table.insert(WEB_BUTTONS, { Title = n, Func = f } )
end
 
local function MenuAddMButton( n, f )
    table.insert(MONEYCMD_BUTTONS, { NAME = n, FUNC = f } )
end

local function MenuAddRPButton( n, f )
    table.insert(RPCMD_BUTTONS, { NAME = n, FUNC = f } )
end

local function MenuAddCPButton( n, f )
    table.insert(CPCMD_BUTTONS, { NAME = n, FUNC = f } )
end

local function MenuAddMayorButton( n, f )
    table.insert(MAYORCMD_BUTTONS, { NAME = n, FUNC = f } )
end

local function MenuAddOtherButton( n, f )
    table.insert(OTHERCMD_BUTTONS, { NAME = n, FUNC = f } )
end

--First Section
MenuAddMButton( "Передать деньги игроку, смотрите на него", function() OpenTextBox( "Передача денег игроку", "Сколько вы хотите дать денег?", "/give" ) end )
MenuAddMButton( "Выбросить деньги", function() OpenTextBox( "Выбросить деньги", "Сколько вы хотите выбросить денег", "/moneydrop" ) end )
--MenuAddMButton( "Buy Health", function() RunConsoleCommand( "say", "/buyhealth" ) end )

--Second Section
MenuAddRPButton( "Изменить РП имя", function() OpenTextBox( "Смена RP имени", "Какое ваше новое имя?", "/rpname" ) end )
MenuAddRPButton( "Спать/Проснутся", function() RunConsoleCommand( "say", "/sleep" ) end )
MenuAddRPButton( "Выкинуть текущее оружие", function() RunConsoleCommand( "say", "/drop" ) end )
MenuAddRPButton( "Запросить лицензию на оружие", function() RunConsoleCommand( "say", "/requestlicense" ) end )
MenuAddRPButton( "Уволить игрока", function() OpenPlyReasonBox( "Demote система", "Выберите игрока из списка ниже и напишите причину увольнения", "", "/demote" ) end )
MenuAddRPButton( "Продать все вами купленные двери", function() RunConsoleCommand( "say", "/unownalldoors" ) end )

MenuAddCPButton( "Объявить в розыск", function() OpenPlyReasonBox( "Объявление игрока в розыск", "Выберите из списка нарушиля и укажите причину розыска.", "", "/wanted" ) end )
MenuAddCPButton( "Снять розыск", function() OpenPlyBox( "Убрать розыск ", "С кого снять розыск?", "/unwanted" ) end )
MenuAddCPButton( "Взять ордер на обыск", function() OpenPlyReasonBox( "Обыск", "Выберите игрока из списка ниже и напишите причину обыска", "", "/warrant" ) end )

MenuAddMayorButton( "Объявить в розыск", function() OpenPlyReasonBox( "Wanted someone", "Who?", "Why?", "/wanted" ) end )
MenuAddMayorButton( "Снять розыск", function() OpenPlyBox( "Unwanted ", "Who?", "/unwanted" ) end )
MenuAddMayorButton( "Выдать ордер на обыск", function() OpenPlyReasonBox( "Warrant", "Who?", "Why?", "/warrant" ) end )
MenuAddMayorButton( "Запустить ком.час", function() RunConsoleCommand( "say", "/lockdown" ) end )
MenuAddMayorButton( "Закончить ком.час", function() RunConsoleCommand( "say", "/unlockdown" ) end )
MenuAddMayorButton( "Создать доску законов", function() RunConsoleCommand( "say", "/placelaws" ) end )
MenuAddMayorButton( "Добавить закон", function() OpenTextBox( "Добавить закон", "Напишите новый занон", "/addlaw" ) end )
MenuAddMayorButton( "Удалить закон", function() OpenTextBox( "Удаление закона", "Напишите номер закона который нужно удалить?", "/removelaw" ) end )
MenuAddMayorButton( "Удалить доску законов", function() RunConsoleCommand( "say", "/resetlaws" ) end )

MenuAddOtherButton( "Позвать администратора", function() RunConsoleCommand( "say", "/// Мне нужна помощь администрации" ) end )

/*------------------------------------------------------------------------
Donation for leaks

Qiwi Wallet         4890494419811120 
YandexMoney         410013095053302
WebMoney(WMR)       R235985364414
WebMoney(WMZ)       Z309855690994
------------------------------------------------------------------------*/