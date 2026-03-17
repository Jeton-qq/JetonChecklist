local LOCALE_REGISTRY_KEY = "JetonCHECKLIST_LOCALE_REGISTRY"

local reg = _G[LOCALE_REGISTRY_KEY]
if type(reg) ~= "table" then
	reg = {}
	_G[LOCALE_REGISTRY_KEY] = reg
end
if type(reg.strings) ~= "table" then reg.strings = {} end

reg.strings["enUS"] = reg.strings["enUS"] or {}
local L = reg.strings["enUS"]

local STRINGS = {
	DISPLAY_NAME = "Jeton's Weekly Checklist",

	-- Update popup
	UPDATE_AVAILABLE_TEXT = "Доступна новая версия",

	-- Options tab
	OPTIONS_HIDE_COMPLETED_TASKS = "Скрыть завершённые задачи",
	HIDE_FINISHED_WEEKS          = "Скрыть завершенные разделы",
	OPTIONS_HIDE_GREAT_VAULT     = "Скрыть великое хранилище",
	OPTIONS_HIDE_CURRENCY        = "Скрыть валюту",
	OPTIONS_HIDE_CHANGE_WEEK_BTN = "Скрыть выбор раздела",
	OPTIONS_HIDE_ILVL_REF_BTN   = "Скрыть таблицу ilvl",
	OPTIONS_HIDE_SLIDERS         = "Скрыть ползунки",
	OPTIONS_HIDE_UPDATE_NOTICE   = "Скрыть предупреждение обновления",
	OPTIONS_DISABLE_UPGRADE_WARN = "Скрыть предупреждение апгрейда",
	OPTIONS_HIDE_MINIMAP_BTN     = "Скрыть кнопку на миникарте",
	-- Options checkbox tooltips
	OPTIONS_TOOLTIP_HIDE_COMPLETED_TASKS = "Скрывает отдельные выполненные задания во всех неделях.",
	OPTIONS_TOOLTIP_HIDE_FINISHED_WEEKS  = "Скрывает целые секции раздела, когда все задания выполнены.\n|cffaaaaaa(Активно только когда «Скрыть выполненные задания» отключено.)|r",
	OPTIONS_TOOLTIP_HIDE_GREAT_VAULT     = "Скрывает панель прогресса Великого тайника.",
	OPTIONS_TOOLTIP_HIDE_CURRENCY        = "Скрывает панель отслеживания валюты.",
	OPTIONS_TOOLTIP_HIDE_CHANGE_WEEK_BTN = "Скрывает кнопку смены раздела в заголовке.",
	OPTIONS_TOOLTIP_HIDE_ILVL_REF_BTN    = "Скрывает кнопку всплывающего окна с уровнями предметов в заголовке.",
	OPTIONS_TOOLTIP_HIDE_UPDATE_NOTICE   = "Скрывает баннер, отображаемый при выходе новой версии таблицы.",
	OPTIONS_TOOLTIP_DISABLE_UPGRADE_WARN = "Скрывает всплывающее предупреждение при улучшении предмета 1/6 вместо 5/6.",
	OPTIONS_TOOLTIP_HIDE_MINIMAP_BTN     = "Скрывает кнопку миникарты.\nВы по-прежнему можете открыть чеклист командой /Jeton или /jtn.",
	RESET_BUTTON = "Сбросить",
	UI_SCALE_LABEL       = "Масштаб",
	UI_SCALE_MIN_LABEL   = "50%",
	UI_SCALE_MAX_LABEL   = "150%",
	UI_OPACITY_LABEL     = "Прозрачность",
	UI_OPACITY_MIN_LABEL = "10%",
	UI_OPACITY_MAX_LABEL = "100%",
	-- Settings panel section headers
	SETTINGS_SECTION_ACTIONS = "Действия",
	SETTINGS_SECTION_DISPLAY = "Отображение",
	SETTINGS_SECTION_COLORS  = "Цвета",
	SETTINGS_SECTION_LANGUAGE = "Язык",
	SETTINGS_SECTION_SLIDERS = "Масштаб и прозрачность",
	-- Settings panel color-row labels
	SETTINGS_COLOR_RESET       = "Сброс",
	SETTINGS_COLOR_BACKGROUND  = "Фон",
	SETTINGS_COLOR_LIST_TEXT   = "Текст списка",
	SETTINGS_COLOR_HEADER_TEXT = "Текст заголовка",
	-- Settings panel language override
	SETTINGS_LANGUAGE_AUTO     = "Авто (по умолчанию)",
	-- Upgrade warning
	UPGRADE_WARN_MSG             = "Улучшение предмета %s 1/6 — это трата %d гербов.\nВместо этого улучшите предмет %s 5/6",
	UPGRADE_WARN_DISABLE_BTN     = "Скрыть предупреждение об улучшении",
	UPGRADE_WARN_DISABLE_TOOLTIP = "Проверьте руководство Larias для дополнительной информации.",
	-- Color picker swatch labels (gear popup)
	COLOR_PICKER_BG             = "Фон",
	COLOR_PICKER_TEXT           = "Текст",
	COLOR_PICKER_HDR            = "Заголовок",
	-- Status banner (shown below the slider row)
	STATUS_SHEET_UPDATE_FMT      = "Обнаружено обновление таблицы — вы отстаёте на %d версию/версии",
	STATUS_NO_TRANSLATION_FMT    = "Перевод для %s недоступен. Рассмотрите возможность внести вклад!",
	STATUS_TRANSLATION_NOTICE    = "Английский язык наиболее актуален. Ваш список может немного устареть.",
	-- Tracking panel header tooltips
	TOOLTIP_OPEN_GREAT_VAULT  = "Нажмите, чтобы открыть Великое хранилище",
	TOOLTIP_OPEN_CURRENCIES   = "Нажмите, чтобы открыть панель валюты",

	-- Tracking panel
	TRACKING_GREAT_VAULT_TITLE = "Великое хранилище",
	TRACKING_CURRENCY_TITLE = "Валюта",
	TRACKING_GV_RAID     = "Рейд",
	TRACKING_GV_DUNGEONS = "Подземелья",
	TRACKING_GV_WORLD    = "Мир",
	TRACKING_NA = "Н/Д",

	TRACKING_SPARKS_LABEL = "Искры:",
	TRACKING_CREST_LABEL  = "Гербы",
	TRACKING_DONE = "Готово",

	TRACKING_QUEST_DELVERS_BOUNTY = "Награда исследователя:",
	TRACKING_QUEST_WEEKLY_PREY = "Еженедельная добыча:",

	TRACKING_NO_ID = "Нет ID",
	TRACKING_TRADE_UP_SUFFIX = " за обмен)",
	TRACKING_CONVERT_TOOLTIP = "Количество гербов, которые вы получите при конвертации предыдущих гербов",
	TRACKING_CREST_AMOUNT_TOOLTIP = "Точно отслеживает сколько гербов вы можете хранить, включая сверхлимитные",

	TRACKING_CATALYST_LABEL = "Катализатор:",

	-- Locale reload popup (shown after changing language)
	LOCALE_RELOAD_TEXT       = "Изменение языка сохранено. Перезагрузите интерфейс для применения нового языка.",
	LOCALE_RELOAD_BTN_NOW    = "Перезагрузить",
	LOCALE_RELOAD_BTN_LATER  = "Позже",
	-- Copy-link popup (shown when C_Browser is unavailable)
	COPY_LINK_POPUP_TEXT     = "Нажмите |cffffffffCtrl+C|r для копирования:",
	-- Guide hyperlink hover tooltip
	GUIDE_LINK_HOVER_TOOLTIP = "Нажмите для копирования ссылки на гайд",
	-- Support section button labels (Settings panel + gear popup)
	SUPPORT_BTN_GUIDE_DOC    = "Гайд",
	SUPPORT_BTN_CHECKLIST    = "Чеклист",
	SUPPORT_BTN_DISCORD      = "Discord",

	-- Minimap tooltip
	MINIMAP_TOOLTIP_LEFT_CLICK_TOGGLE = "Левая кнопка: Показать/скрыть список",
	MINIMAP_TOOLTIP_RIGHT_CLICK_OPTIONS = "Правая кнопка: Настройки",
	MINIMAP_TOOLTIP_MIDDLE_CLICK_ILVL = "Средняя кнопка: Уровни предметов",

	-- Main window
	TAB_OPTIONS = "Настройки",
	CLOSE               = "Закрыть",
	CHANGE_WEEK_BUTTON  = "Сменить раздел",
	ALL_WEEKS_COMPLETE  = "Завершено!",
	DONE_PREFIX         = "[Готово] ",
	ILVLREF_BUTTON = "Уровни предметов",

	-- Character picker
	CHAR_PICKER_BUTTON          = "Сменить профиль",
	CHAR_PICKER_TOOLTIP_REMOVE  = "Чтобы удалить персонажа, используйте меню настроек.",

	-- Week picker
	PICKER_RESET_WEEK_TOOLTIP   = "Сбросить на раздел:",
	PICKER_GO_TO_WEEK_TOOLTIP   = "Перейти к разделу:",

	-- Item level reference popup
	ILVLREF_WINDOW_TITLE  = "Midnight, сезон 1 — справочник уровней предметов",

	ILVLREF_SEC_TRACKS    = "Уровни улучшения  (20 гербов за уровень)",
	ILVLREF_SEC_CRAFTED   = "Уровни крафтовых предметов",
	ILVLREF_SEC_DUNGEONS  = "Уровни предметов в подземельях",
	ILVLREF_SEC_RAID      = "Прибл. уровни предметов рейда Midnight",
	ILVLREF_SEC_DELVES    = "Уровни предметов из многообещающих вылазок",

	ILVLREF_COL_ILVL         = "ур. пред.",
	ILVLREF_COL_TRACK        = "Уровень улучшения",
	ILVLREF_COL_CREST_NEEDED = "Гербы",
	ILVLREF_COL_QUALITY      = "Качество",
	ILVLREF_COL_SOURCE       = "Источник",
	ILVLREF_COL_END_LOOT     = "Максимальный уровень",
	ILVLREF_COL_GREAT_VAULT  = "Великое хранилище",
	ILVLREF_COL_DIFFICULTY   = "Сложность",
	ILVLREF_COL_BOSS1        = "Начало",
	ILVLREF_COL_BOSS2        = "Середина",
	ILVLREF_COL_BOSS3        = "Конец",
	ILVLREF_COL_BOSS4        = "Финал",
	ILVLREF_COL_TIER         = "Уровень",
	ILVLREF_COL_MAP_DROP     = "Добыча с картой",

	ILVLREF_CREST_ADV          = "Иск. прикл.",
	ILVLREF_CREST_VET          = "Ветеран",
	ILVLREF_CREST_CHAMP        = "Защитник",
	ILVLREF_CREST_HERO         = "Герой",
	ILVLREF_CREST_MYTH         = "Эпохи",
	ILVLREF_DO_NOT_USE_CRESTS_FMT = "НЕ ИСПОЛЬЗОВАТЬ ГЕРБЫ %s",

	ILVLREF_DUNGEON_PRE_HEROIC = "До открытия Гер. рейда",
	ILVLREF_DUNGEON_HEROIC     = "Героический",
	ILVLREF_DUNGEON_PRE_MYTHIC = "До открытия Эпох. рейда",
	ILVLREF_DUNGEON_MYTHIC     = "Эпохальный",

	ILVLREF_RAID_LFR           = "Поиск рейда",
	ILVLREF_RAID_NORMAL        = "Обычный",
	ILVLREF_RAID_HEROIC        = "Героический",
	ILVLREF_RAID_MYTHIC        = "Эпохальный",

	ILVLREF_DELVE_TIER_FMT     = "У%d",

	ILVLREF_TOGGLE_EXPAND = "Показать все таблицы",
	ILVLREF_TOGGLE_SHRINK = "Свернуть",

	-- Slash commands
	SLASH_USAGE_TOGGLE = "Использование: /Jeton или /jtn	для показа/скрытия списка",
}

for key, value in pairs(STRINGS) do
	L[key] = value
end
