--[[---------------------------------------------------------------------------
English (example) language file
---------------------------------------------------------------------------

This is the english language file. The things on the left side of the equals sign are the things you should leave alone
The parts between the quotes are the parts you should translate. You can also copy this file and create a new language.

= Warning =
Sometimes when DarkRP is updated, new phrases are added.
If you don't translate these phrases to your language, it will use the English sentence.
To fix this, join your server, open your console and enter darkp_getphrases yourlanguage
For English the command would be:
	darkrp_getphrases "en"
because "en" is the language code for English.

You can copy the missing phrases to this file and translate them.

= Note =
Make sure the language code is right at the bottom of this file

= Using a language =
Make sure the convar gmod_language is set to your language code. You can do that in a server CFG file.
---------------------------------------------------------------------------]]

local my_language = {
	-- Admin things
	need_admin = "У вас нет привилегии администратора, чтобы иметь возможность %s",
	need_sadmin = "У вас нет привилегии супер администратора, чтобы иметь возможность %s",
	no_privilege = "У вас нет привилегии для этого действия",
	no_jail_pos = "Неустановленно место для тюрьмы",
	invalid_x = "Недействительно %s! %s",

	-- F1 menu
	f1ChatCommandTitle = "Команды чата",
	f1Search = "Поиск...",

	-- Money things:
	price = "Цена: %s%d",
	priceTag = "Цена: %s",
	reset_money = "%s обнулил у всех игроков деньги!",
	has_given = "%s дал вам %s",
	you_gave = "Вы передали %s %s",
	npc_killpay = "%s за убийство NPС!",
	profit = "Прибыль",
	loss = "Утрата",

	-- backwards compatibility
	deducted_x = "Вычтено %s%d",
	need_x = "Необходимо %s%d",

	deducted_money = "Вычтено %s",
	need_money = "Необходимо %s",

	payday_message = "А вот и зарплата! Вы получили %s!",
	payday_unemployed = "Вы не получили запрату, так как у вас нет работы!",
	payday_missed = "Вы не получили зарплату, так как вы арестованы",

	property_tax = "Налог на имущество! %s",
	property_tax_cant_afford = "Вы не заплатили налоги! Ваша собственность была конфискована!",
	taxday = "День налогов! %s%% взяли от вашего дохода!",

	found_cheque = "Вы нашли %s%s  в чеке сделанным для вас игроком %s.",
	cheque_details = "Этот чек сделан для %s.",
	cheque_torn = "Вы порвали чек.",
	cheque_pay = "Оплачено: %s",
	signed = "Подпись: %s",

	found_cash = "Вы нашли %s%d!", -- backwards compatibility
	found_money = "Вы нашли %s!",

	owner_poor = "Владелец %s слишком бедный чтобы выплатить эту сумму!",

	-- Police
	Wanted_text = "Разыскивается!",
	wanted = "Разыскивается полицией!\nПричина: %s",
	youre_arrested = "Арестован!Осталось сидеть %d секунд!",
	youre_arrested_by = "%s Арестовал вас! (FreeArest? Пиши @FreeArest).",
	youre_unarrested_by = "Вы были освобождены %s.",
	hes_arrested = "%s Был арестован на %d секунд!",
	hes_unarrested = "%s Был освобожден из тюрьмы!",
	warrant_ordered = "%s Взял ордер на %s. Причина: %s",
	warrant_request = "%s Запрашивает ордер на обыск на %s\nПричина: %s",
	warrant_request2 = "Запрос на ордер был отправлен мэру %s!",
	warrant_approved = "Ордер на обыск был одобрен %s!\nПричина: %s\nВыдал приказ: %s",
	warrant_approved2 = "Теперь вы можете обыскать его дом.",
	warrant_denied = "Мэр %s отклонил ваш запрос на ордер.",
	warrant_expired = "Время на обыск %s истекло!",
	warrant_required = "Вам требуется ордер на обыск, для того чтобы сломать эту дверь.",
	warrant_required_unfreeze = "Вам нужен ордер на обыск, для того чтобы убрать фриз данного пропа.",
	warrant_required_unweld = "Вам нужен ордер, для того чтобы выломать этот проп.",
	wanted_by_police = "%s Разыскивается полицией!\nПричина: %s\nВыдал приказ: %s",
	wanted_by_police_print = "%s объявил %s в розыск, причина: %s",
	wanted_expired = "%s Больше не разыскивается полицией.",
	wanted_revoked = "%s Больше не разыскивает полиция.\nСнял розыск: %s",
	cant_arrest_other_cp = "Вы не можете арестовать сотрудника Полиции!",
	must_be_wanted_for_arrest = "Игрок должен разыскиваться , чтобы его можно было арестовать.",
	cant_arrest_fadmin_jailed = "Вы не можете арестовать игрока, которого посадил администратор.",
	cant_arrest_no_jail_pos = "Вы не можете арестовывать людей , так как место для тюрьмы не выбрано!",
	cant_arrest_spawning_players = "Вы не можете арестовывать людей , которые спаунятся.",

	suspect_doesnt_exist = "Подозреваемый не существует.",
	actor_doesnt_exist = "Актёр не существует.",
	get_a_warrant = "получить ордер",
	make_someone_wanted = "сделать кого-либо разыскиваемым",
	remove_wanted_status = "убрать статус разыскиваемого",
	already_a_warrant = "Уже есть ордер на обыск для этого подозреваемого.",
	already_wanted = "Подозреваемый уже разыскивается.",
	not_wanted = "Подозреваемый не разыскивается.",
	need_to_be_cp = "Вы должны быть работником полиции.",
	suspect_must_be_alive_to_do_x = "Подозреваемый должен быть жив , чтобы %s.",
	suspect_already_arrested = "Подозреваемый уже в тюрьме.",

	-- Players
	health = "Здоровье: %s",
	job = "Работа: %s",
	salary = "Зарплата: %s%s",
	wallet = "Деньги: %s%s",
	weapon = "Оружие: %s",
	kills = "Убийства: %s",
	deaths = "Смерти: %s",
	rpname_changed = "%s поменял свое RPИмя на: %s",
	disconnected_player = "Отключившийся игрок",

	-- Teams
	need_to_be_before = "Вам нужно стать %s сначала чтобы можно было стать %s",
	need_to_make_vote = "Вам нужно начать голоование , чтобы стать %s!",
	team_limit_reached = "Невозможно стать %s так как лимит исчерпан",
	wants_to_be = "%s\nхочет стать\n%s",
	has_not_been_made_team = "%s не стал %s!",
	job_has_become = "%s стал %s!",

	-- Disasters
	meteor_approaching = "Внимание: Метеоритный шторм надвигается!",
	meteor_passing = "Метеоритный шторм проходит.",
	meteor_enabled = "Метеоритные штормы теперь доступны.",
	meteor_disabled = "Метеоритные штормы теперь выключены.",
	earthquake_report = "Было доложено о землятрясении магнитудой %sMw",
	earthtremor_report = "Было доложено о земных толчках магнитудой %sMw",

	-- Keys, vehicles and doors
	keys_allowed_to_coown = "Вам было разрешено использовать\n(Нажмите R с ключами в руках или нажмите F2 чтобы получить доступ)\n",
	keys_other_allowed = "Разрешено использовать:",
	keys_allow_ownership = "(Нажмите R с ключами в руках или F2 чтобы дать права владельца)",
	keys_disallow_ownership = "(Нажмите R с ключами в руках или F2 чтобы убрать права владельца)",
	keys_owned_by = "Занято:",
	keys_unowned = "Не занято\n(Нажмите R с ключами в руках или F2 чтобы купить)",
	keys_everyone = "(Нажмите R с ключами в руках или F2 чтобы сделать свободный доступ)",
	door_unown_arrested = "Вы не можете купить или продать пока арестованы!",
	door_unownable = "Эту дверь нельзя купить или продать!",
	door_sold = "Вы продали эту дверь за %s",
	door_already_owned = "Эта дверь уже занята!",
	door_cannot_afford = "Вам не хватает денег на эту дверь!",
	door_hobo_unable = "Вы не можете покупать двери если вы бездомный!",
	vehicle_cannot_afford = "Вам не хватает денег на это транспортное средство!",
	door_bought = "Вы купили эту дверь за %s%s",
	vehicle_bought = "Вы купили это транспортное средство за %s%s",
	door_need_to_own = "Вы должны владеть этой дверью чтобы %s",
	door_rem_owners_unownable = "Вы не можете удалить владельцов так как дверь нельзя купить!",
	door_add_owners_unownable = "Вы не можете добавить владельцов так как дверь нельзя купить!",
	rp_addowner_already_owns_door = "%s уже владеет (или уже имеет право пользоваться) этой дверью!",
	add_owner = "Добавить владельца",
	remove_owner = "Удалить владельца",
	coown_x = "Право вдаления  %s",
	allow_ownership = "Разрешить владеть",
	disallow_ownership = "Запретить владеть",
	edit_door_group = "Настроить группы дверей",
	door_groups = "Группы дверей",
	door_group_doesnt_exist = "Группа дверей не существует!",
	door_group_set = "Группа дверей установлена.",
	sold_x_doors_for_y = "Вы продали %d двери за %s%d!", -- backwards compatibility
	sold_x_doors = "Вы продали %d двери за %s!",

	-- Entities
	drugs = "Наркотики",
	drug_lab = "Лаборатория наркотиков",
	gun_lab = "Лаборатория оружия",
	gun = "Оружие",
	microwave = "Микроволновка",
	food = "Еда",
	money_printer = "Денежный принтер",

	sign_this_letter = "Подписать это письмо",
	signed_yours = "Ваш,",

	money_printer_exploded = "Ваш денежный принтер взорвался!",
	money_printer_overheating = "Ваш денежный принтер перегревается!",

	contents = "Содержит: ",
	amount = "Колличество: ",

	picking_lock = "Взламывается замок",

	cannot_pocket_x = "Вы не можете засунуть это себе в карман!",
	object_too_heavy = "Этот объект слишком тяжёлый.",
	pocket_full = "Ваш карман полон!",
	pocket_no_items = "Ваш карман пуст.",
	drop_item = "Выбросить предмет",

	bonus_destroying_entity = "нелегальный предмет уничтожается.",

	switched_burst = "Переключено в режим стрельбы очередями.",
	switched_fully_auto = "Переключено в автоматический режим стрельбы.",
	switched_semi_auto = "Переключено в одиночный режим стрельбы.",

	keypad_checker_shoot_keypad = "Выстрелите в кейпад , чтобы увидеть что его контролирует.",
	keypad_checker_shoot_entity = "Выстрелите в предмет , чтобы увидеть что его контролирует",
	keypad_checker_click_to_clear = "Правый клик чтобы отчистить.",
	keypad_checker_entering_right_pass = "Набирается правильный пароль",
	keypad_checker_entering_wrong_pass = "Набирается неправильный пароль",
	keypad_checker_after_right_pass = "после введения правильного пароля",
	keypad_checker_after_wrong_pass = "aпосле введения неправильного пароля",
	keypad_checker_right_pass_entered = "Правильный пароль введён",
	keypad_checker_wrong_pass_entered = "Неправильный пароль введён",
	keypad_checker_controls_x_entities = "Этот кейпад контролирует %d предметов",
	keypad_checker_controlled_by_x_keypads = "Этот предмет контролируется %d кейпадами",
	keypad_on = "Включено",
	keypad_off = "Выключено",
	seconds = "секунды",

	persons_weapons = "%s нелегальные оружия:",
	returned_persons_weapons = "Возвращены %s конфискованные оружия.",
	no_weapons_confiscated = "%s не имеет конфискованных оружий!",
	no_illegal_weapons = "%s не имеет нелегальное оружие.",
	confiscated_these_weapons = "Конфискованы эти оружия:",
	checking_weapons = "Проверяются оружия",

	shipment_antispam_wait = "Пожалуйста подождите пока предыдущая коробка не появится.",
	shipment_cannot_split = "Нельзя разделить эту коробку.",

	-- Talking
	hear_noone = "Вас никто не может слышать %s!",
	hear_everyone = "Все вас могут слышать!",
	hear_certain_persons = "Игроки , которые слышат вас %s: ",

	whisper = "шёпот",
	yell = "крик",
	advert = "[Реклама]",
	broadcast = "[Извещение!]",
	radio = "радио",
	request = "(ЗАПРОС!)",
	group = "(группа)",
	demote = "(УВОЛИТЬ)",
	ooc = "OOC",
	radio_x = "Радио %d",

	talk = "говорить",
	speak = "разговаривать",

	speak_in_ooc = "разговаривать в OOC",
	perform_your_action = "выполнить ваше действие",
	talk_to_your_group = "говорить со своей группой",

	channel_set_to_x = "Канал установлен на %s!",

	-- Notifies
	disabled = "%s был отключён! %s",
	gm_spawnvehicle = "Спаун машин",
	gm_spawnsent = "Спаун скриптовых объектов (SENTs)",
	gm_spawnnpc = "Спаун неживых игроков (NPCs)",
	see_settings = "Пожалуйста посмотрите DarkRP настройки.",
	limit = "Вы достигнули %s лимита!",
	have_to_wait = "Вы должны подождать еще %d секунд до использования %s!",
	must_be_looking_at = "Вы должны смотреть на %s!",
	incorrect_job = "У вас неправильная работа для %s",
	unavailable = "Эта %s недоступна",
	unable = "Вы не имеете прав на %s. %s",
	cant_afford = "Вы не можете себе позволить %s",
	created_x = "%s создал %s",
	cleaned_up = "Ваши %s были убраны.",
	you_bought_x = "Вы купили %s за %s%d.", -- backwards compatibility
	you_bought = "Вы купили %s за %s.",
	you_received_x = "Вы получили %s за %s.",

	created_first_jailpos = "Вы создали первую тюремную позицию!",
	added_jailpos = "Вы добавили одну дополнительную тюремную позицию!",
	reset_add_jailpos = "Вы удалили все тюремные позиции и вы установили новую здесь.",
	created_spawnpos = "%s's точка спауна создана.",
	updated_spawnpos = "%s's точка спауна обновлена.",
	do_not_own_ent = "Вы не владеете этим предметом!",
	cannot_drop_weapon = "Вы не можете выбросить это оружие!",
	job_switch = "Работа изменена удачно!",
	job_switch_question = "Поменять работу с помощью %s?",
	job_switch_requested = "Смена работы была запрошена.",

	cooks_only = "Только печеньки.",

	-- Misc
	unknown = "неизвестность",
	arguments = "аргументы",
	no_one = "никого",
	door = "дверь",
	vehicle = "машина",
	door_or_vehicle = "дверь/машина",
	driver = "Водитель: %s",
	name = "Имя: %s",
	locked = "Закрыто.",
	unlocked = "Открыто.",
	player_doesnt_exist = "Игрок не существует.",
	job_doesnt_exist = "Работа не существует!",
	must_be_alive_to_do_x = "Вы должны быть живы чтобы %s.",
	banned_or_demoted = "Забанен/уволен",
	wait_with_that = "Подожи с этим.",
	could_not_find = "Невозможно найти %s",
	f3tovote = "Нажми F3 чтобы голосовать",
	listen_up = "Слушайте все:", -- In rp_tell or rp_tellall
	nlr = "Правило новой жизни(NLR): Не арестовывайте из мести/не убивайте.",
	reset_settings = "Вы обновили все настройки!",
	must_be_x = "Вы должны быть %s чтобы %s.",
	agenda_updated = "Объявление было обновлено",
	job_set = "%s он/она установили себе работу '%s'",
	demoted = "%s был уволен",
	demoted_not = "%s не был уволен",
	demote_vote_started = "%s начал голосование об увольнении %s",
	demote_vote_text = "Причина увольнения:\n%s", -- '%s' is the reason here
	cant_demote_self = "Вы не можете уволить себя.",
	i_want_to_demote_you = "Я хочу уволить тебя. Причина: %s",
	tried_to_avoid_demotion = "Вы попытались уйти от увольнения. Вы провалились и были уволены.", -- naughty boy!
	lockdown_started = "Мэр установил коменданский час, пожалуйста идите домой!",
	lockdown_ended = "Коменданский час окончен",
	gunlicense_requested = "%s запросил у %s лицензию на оружие",
	gunlicense_granted = "%s дал %s лицензию на оружие",
	gunlicense_denied = "%s не дал %s лицензию на оружие",
	gunlicense_question_text = "Дать %s лицензию на оружие?",
	gunlicense_remove_vote_text = "%s начал голосование на лишение лицензии на оружие у %s",
	gunlicense_remove_vote_text2 = "Убрать лицензию на оружие:\n%s", -- Where %s is the reason
	gunlicense_removed = "%s-а лицензия на оружие была отнята!",
	gunlicense_not_removed = "%s-а лицензия на оружие не была отнята!",
	vote_specify_reason = "Вам необходимо указать причину!",
	vote_started = "Голосование было создано",
	vote_alone = "Вы выиграли голосование так как вы одни на сервере.",
	you_cannot_vote = "Вы не можете голосовать!",
	x_cancelled_vote = "%s отменил последнее голосование.",
	cant_cancel_vote = "Не смог отменить голосование так как последнего голосования не было!",
	jail_punishment = "Наказание за выход с сервера! Посажен в тюрьму на: %d секунд.",
	admin_only = "Только админы!", -- When doing /addjailpos
	chief_or = "Главный или",-- When doing /addjailpos
	frozen = "Заморожен.",

	dead_in_jail = "Вы мертвы пока ваше тюремное время не кончится!",
	died_in_jail = "%s умер в тюрьме!",

	credits_for = "КРЕДИТЫ ДЛЯ %s\n",
	credits_see_console = "DarkRP кредиты напечатаны в консоль.",

	rp_getvehicles = "Доступные машины для других машин:",

	data_not_loaded_one = "Ваши данные еще не были загружены. Пожалуйста подождите.",
	data_not_loaded_two = "Если это повторится, попробуйте перезайте или связаться с администрацией.",

	cant_spawn_weapons = "Вы не можете спаунить оружия.",
	drive_disabled = "Вождение отключено.",
	property_disabled = "Частная собственность отключена.",

	not_allowed_to_purchase = "Вам не разрешено покупать этот предмет.",

	rp_teamban_hint = "rp_teamban [имя игрока/ID] [имя команды/id]. Используй это чтобы забанить игрока из определенной команды.",
	rp_teamunban_hint = "rp_teamunban [имя игрока/ID] [имя команды/id]. Используй это чтобы разбанить игрока из определенной команды.",
	x_teambanned_y = "%s забанил %s от профессии %s.",
	x_teamunbanned_y = "%s разбанил %s от профессии %s.",

	-- Backwards compatibility:
	you_set_x_salary_to_y = "Вы установили %s-у зарплату %s%d.",
	x_set_your_salary_to_y = "%s установил вашу зарплату %s%d.",
	you_set_x_money_to_y = "Вы установили %s-у деньги %s%d.",
	x_set_your_money_to_y = "%s установил ваши деньги %s%d.",

	you_set_x_salary = "Вы установили %s-у зарплату %s.",
	x_set_your_salary = "%s установил вашу зарплату %s.",
	you_set_x_money = "Вы установили %s-у деньги %s.",
	x_set_your_money = "%s установил ваши деньги %s.",
	you_set_x_name = "Вы установили %s-у имя %s",
	x_set_your_name = "%s изменил ваше имя на %s",

	someone_stole_steam_name = "Кто-то уже использует ваш логин стима как его рп имя так что мы дали вам '1' после вашего имени.", -- Uh oh
	already_taken = "Уже взято.",

	job_doesnt_require_vote_currently = "Эта работа не запрашивает голосование сейчас!",

	x_made_you_a_y = "%s сделал вас %s!",

	cmd_cant_be_run_server_console = "Эта команда не может быть исполнена через консоль сервера.",

	-- The lottery
	lottery_started = "Появилась лотерея! Участовать за %s%d?", -- backwards compatibility
	lottery_has_started = "Появилась лотерея! Участвовать за %s?",
	lottery_entered = "Вы приняли участие в лотерее за %s",
	lottery_not_entered = "%s не вступил в лотерею",
	lottery_noone_entered = "Никто не вступил в лотерею",
	lottery_won = "%s выиграл лотерею! Он выиграл %s",

	-- Animations
	custom_animation = "Нестандартная анимация!",
	bow = "Лук",
	dance = "Танец",
	follow_me = "Иди за мной!",
	laugh = "Смех",
	lion_pose = "Поза льва",
	nonverbal_no = "Бессловесное нет",
	thumbs_up = "Пальцы вверх",
	wave = "Махать рукой",

	-- Hungermod
	starving = "Голодаю!",

	-- AFK
	afk_mode = "АФК режим",
	salary_frozen = "Ваша зарплата была заморожена.",
	salary_restored = "Ваша зарплата была разморожена.",
	no_auto_demote = "Вы не будете автоматически уволены.",
	youre_afk_demoted = "Вы были уволены за длительное бездействие. В следующий раз используйте /afk.",
	hes_afk_demoted = "%s был уволен за длительное бездействие.",
	afk_cmd_to_exit = "Напишите /afk чтобы выйти из АФК режима.",
	player_now_afk = "%s теперь АФК.",
	player_no_longer_afk = "%s больше не АФК.",

	-- Hitmenu
	hit = "заказ",
	hitman = "Наемный убийца",
	current_hit = "Заказ: %s",
	cannot_request_hit = "Невозможно выполнить заказ! %s",
	hitmenu_request = "Запрос",
	player_not_hitman = "Этот игрок не наемный убийца!",
	distance_too_big = "Слишком большое расстояние.",
	hitman_no_suicide = "Наемный убийца не убьет сам себя.",
	hitman_no_self_order = "Убийца не может принять заказ на самого себя.",
	hitman_already_has_hit = "Убийца уже принял заказ.",
	price_too_low = "Цена слишком низкая!",
	hit_target_recently_killed_by_hit = "Цель была устранена,",
	customer_recently_bought_hit = "Клиент недавно запросил убийство.",
	accept_hit_question = "Принять заказ от %s\nотносительно %s за %s%d?", -- backwards compatibility
	accept_hit_request = "Принять заказ от %s\nотносительно %s for %s?",
	hit_requested = "Заказ принят!",
	hit_aborted = "Заказ отклонён! %s",
	hit_accepted = "Убийца принял заказ!",
	hit_declined = "Убийца отказался от заказа!",
	hitman_left_server = "Убийца ушел с сервера!",
	customer_left_server = "Заказчик ушел с сервера!",
	target_left_server = "Цель ушла с сервера!",
	hit_price_set_to_x = "цена заказа установлена %s%d.", -- backwards compatibility
	hit_price_set = "цена заказа установлена %s.",
	hit_complete = "заказ от %s завершён!!",
	hitman_died = "Убийца умер!",
	target_died = "Цель мертва!",
	hitman_arrested = "Убийца арестован!",
	hitman_changed_team = "Убийца сменил профессию!",
	x_had_hit_ordered_by_y = "%s выполняет заказ от %s",

	-- Vote Restrictions
	hobos_no_rights = "Бездомные не имеют право голосовать!",
	gangsters_cant_vote_for_government = "Бандиты не имеют права голосовать о правительственных вещах!",
	government_cant_vote_for_gangsters = "Правительство не может голосовать о бандитских вещах!",

	-- VGUI and some more doors/vehicles
	vote = "Голосование",
	time = "Время: %d",
	yes = "Да",
	no = "Нет",
	ok = "Ок",
	cancel = "Отмена",
	add = "Добавить",
	remove = "Удалить",
	none = "Ничего",

	x_options = "%s опции",
	sell_x = "Продать %s",
	set_x_title = "Установить %s title",
	set_x_title_long = "Установить заглавие %s на которое вы смотрите.",
	jobs = "Работа",
	buy_x = "Купить %s",

	-- F4menu
	no_extra_weapons = "Нет запасных оружий.",
	become_job = "Выбрать работу",
	create_vote_for_job = "Создать голосование",
	shipments = "Коробки",
	F4guns = "Оружие",
	F4entities = "Разное",
	F4ammo = "Патроны",
	F4vehicles = "Машины",

	-- Tab 1
	give_money = "Дать деньги игроку на которого вы смотрите",
	drop_money = "Выбросить деньги",
	change_name = "Изменить имя",
	go_to_sleep = "Пойти спать/проснуться",
	drop_weapon = "Выбросить текущее оружие",
	buy_health = "Купить здоровье(%s)",
	request_gunlicense = "Запросить лицензию на оружие",
	demote_player_menu = "Уволить игрока",


	searchwarrantbutton = "Сделать игрока разыскиваемым",
	unwarrantbutton = "Убрать статус разыскиваемого с игрока",
	noone_available = "Никто не доступен",
	request_warrant = "Запросить ордер на обыск для игрока",
	make_wanted = "Сделать кого-либо разыскиваемым",
	make_unwanted = "Убрать розыск с кого-либо",
	set_jailpos = "Установить место для тюрьмы",
	add_jailpos = "Добавить место для тюрьмы",

	set_custom_job = "Установить нестандартную работу",

	set_agenda = "Установить объявление",

	initiate_lockdown = "Ввести коменданский час",
	stop_lockdown = "Прекратить коменданский час",
	start_lottery = "Начать лотерею",
	give_license_lookingat = "Дать <lookingat> лицензию на оружие",

	laws_of_the_land = "ЗАКОНЫ ГОРОДА",
	law_added = "Закон добавлен.",
	law_removed = "Закон удалён.",
	law_reset = "Закон перезаписан.",
	law_too_short = "Закон слишком короткий.",
	laws_full = "Закано переполненны.",
	default_law_change_denied = "У вас нет прав менять стандартные законы.",

	-- Second tab
	job_name = "Имя: ",
	job_description = "Описание: ",
	job_weapons = "Оружия: ",

	-- Entities tab
	buy_a = "Купить %s: %s",

	-- Licenseweaponstab
	license_tab = [[License weapons

	Tick the weapons people should be able to get WITHOUT a license!
	]],
	license_tab_other_weapons = "Другие оружия:",

	zombie_spawn_removed = "Вы удалили этот спаун зомби.",
	zombie_spawn = "Спаун зомби",
	zombie_disabled = "Зомби теперь недоступны.",
	zombie_enabled = "Зомби теперь доступны.",
	zombie_maxset = "Максимальное количество зомби теперь %s",
	zombie_spawn_added = "Вы добавили спаун зомби.",
	zombie_spawn_not_exist = "Спаун зомби %s не существует.",
	zombie_leaving = "Зомби уходят.",
	zombie_approaching = "ВНИМАНИЕ: Зомби приближаются!",
	zombie_toggled = "Зомби переключены.",
}

-- The language code is usually (but not always) a two-letter code. The default language is "en".
-- Other examples are "nl" (Dutch), "de" (German)
-- If you want to know what your language code is, open GMod, select a language at the bottom right
-- then enter gmod_language in console. It will show you the code.
-- Make sure language code is a valid entry for the convar gmod_language.
DarkRP.addLanguage("en", my_language)
