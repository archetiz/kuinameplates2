local folder,ns = ...
local opt = KuiNameplatesCoreConfig
-- strings
opt.page_names = {
    general     = 'General',
    healthbars  = 'Health bars',
    castbars    = 'Cast bars',
    text        = 'Text',
    nameonly    = 'Name-only',
    framesizes  = 'Frame sizes',
    auras       = 'Auras',
    classpowers = 'Class powers',
    threat      = 'Threat',
    bossmod     = 'Boss mods',
}
opt.tooltips = {
    bar_texture = 'The texture used for status bars (provided by LibSharedMedia)',
    bar_animation = 'The style of animation to use on health/power bars',

    combat_hostile = 'Action to take on hostile frames upon entering and leaving combat.',
    combat_friendly = 'Action to take on friendly frames upon entering and leaving combat.',

    ignore_uiscale = 'Ignore the default UI\'s scaling. This allows nameplates to retain pixel-perfectness regardless of resolution.',
    use_blizzard_personal = 'Don\'t skin the personal nameplate or its class powers.|n|nWhen using this option, the width of the personal frame can still be adjusted with the "Personal frame width" slider under "Frame sizes", however a UI reload is required for it to take full effect.|n|nIn order for this frame to display, you must check the option "Personal Resource Display" under Esc > Interface > Names > Unit Nameplates.|nIn order to show unmodified class resources on it, uncheck the option "Show Special Resources on Targets" on the same page.|n|n|cffff6666Requires a UI reload if the frame is currently visible.',
    state_icons = 'Show an icon on bosses and rare units (hidden when level text is shown)',

    clickthrough_self = 'Disable the click-box of your personal nameplate',
    clickthrough_friend = 'Disable the click-box of friendly nameplates',
    clickthrough_enemy = 'Disable the click-box of enemy nameplates',

    nameonly = 'Hide the healthbars of friendly or unattackable units. While in name-only mode, name text is coloured as a percentage of health',
    nameonly_no_font_style = 'Hide text outline when in name-only mode (by setting the font style to nil)',
    nameonly_health_colour = 'Partially colour text to represent health percentage',
    nameonly_damaged_friends = 'Use name-only mode even on damaged friendly frames',
    nameonly_enemies = 'Use name-only mode on unattackable enemies (not including enemy players under effects such as Ice Block)',
    nameonly_target = 'Also use name-only mode on your target',
    nameonly_all_enemies = 'Use name-only mode on all enemies',
    nameonly_neutral = 'Use name-only mode on attackable neutral units',
    nameonly_in_combat = 'Use name-only mode even when a unit is in combat with you (also allows name-only mode to be enabled on enemy players).|n|nNote that this doesn\'t apply to training dummies or other units which don\'t have a threat table.',
    guild_text_npcs = 'Show NPCs titles, such as Quartermaster, etc.',
    guild_text_players = 'Show guilds on players in name-only mode',
    title_text_players = 'Show players\' titles in name-only mode',

    target_arrows = 'Show arrows around your current target. These inherit the target glow colour',
    frame_glow_size = 'Size of the frame glow used for target highlighting and threat indication',

    fade_alpha = 'Opacity of faded frames. Note that if set to 0 (i.e. frames are invisible), invisible nameplates will still be clickable. Addons cannot arbitrarily disable nameplate clickboxes',
    fade_speed = 'Speed of the frame fading animation, where 1 is slowest and 0 is instant',
    fade_all = 'Fade all frames out by default, rather than in',
    fade_avoid_nameonly = 'Don\'t fade nameplates which are currently in name-only mode',
    fade_avoid_raidicon = 'Don\'t fade nameplates which have a raid icon visible',
    fade_friendly_npc = 'Fade friendly NPC nameplates by default (including those in name-only mode)',
    fade_neutral_enemy = 'Fade attackable neutral nameplates by default (including those in name-only mode)',
    fade_untracked = 'Fade non-tracked nameplates by default (including those in name-only mode).|nWhether or not a unit is tracked can by set by changing the "NPC Names" dropdown and other checkboxes in the default interface options under Esc > Interface > Names',
    fade_avoid_execute_friend = 'Don\'t fade friendly nameplates in execute range (set in the "Health bars" page)',
    fade_avoid_execute_hostile = 'Don\'t fade hostile nameplates in execute range (set in the "Health bars" page)',
    fade_avoid_tracked = 'Don\'t fade tracked nameplates, or nameplates which are affecting combat with you.|nWhether or not a unit is tracked can by set by changing the "NPC Names" dropdown and other checkboxes in the default interface options under Esc > Interface > Names',

    colour_self_class = 'Use your class colour on your personal nameplate',
    colour_self = 'The health bar colour of your personal nameplate',

    execute_enabled = 'Recolour health bars when units are within execute range',
    execute_auto = 'Automatically detect the appropriate execute range from your talents, defaulting to 20% on a character with no execute',
    execute_colour = 'Colour to use within execute range',
    execute_percent = 'Manually set execute range',

    hide_names = 'Whether or not a unit is tracked can be set by changing the "NPC Names" dropdown and other checkboxes in the default interface options under Esc > Interface > Names.|n|nThis does not affect name-only mode.',
    font_face = 'The font used for all strings on nameplates (provided by LibSharedMedia)',
    font_size_normal = 'Standard font size (name, etc)',
    font_size_small = 'Smaller font size (vendor, spell name, etc)',
    text_vertical_offset = 'Vertical offset applied to all strings. Used as some fonts render at odd vertical positions in WoW. Note that this value ends in .5 by default as this helps to reduce vertical jittering when frames are moving',
    name_vertical_offset = 'Vertical offset of the name text',
    bot_vertical_offset = 'Vertical offset of the level and health text strings',
    class_colour_friendly_names = 'Colour the names of friendly players by their class. Also affects text in name-only mode.',
    class_colour_enemy_names = 'Colour the names of enemy players by their class. Also affects text in name-only mode.',

    health_text_friend_max = 'Health text format used on friendly units at full health',
    health_text_friend_dmg = 'Health text format used on damaged friendly units',
    health_text_hostile_max = 'Health text format used on hostile units at full health',
    health_text_hostile_dmg = 'Health text format used on damaged hostile units',

    frame_width = 'Width of the standard nameplates',
    frame_height = 'Height of the standard nameplates',
    frame_width_minus = 'Width of nameplates used on mobs flagged as "minus" (previously referred to as trivial)',
    frame_height_minus = 'Height of nameplates used on mobs flagged as "minus" (previously referred to as trivial), as well as nameless frames (i.e. "unimportant" units)',
    frame_width_personal = 'Width of the personal nameplate (enabled by Esc > Interface > Names > Personal Resource Display)',
    frame_height_personal = 'Height of the personal nameplate (enabled by Esc > Interface > Names > Personal Resource Display)',
    powerbar_height = 'Height of the power bar. Will not increase beyond frame height',

    auras_enabled = 'Show auras that you cast on nameplates - buffs on friends, debuffs on enemies',
    auras_on_personal = 'Show auras on your character\'s nameplate if it is enabled',
    auras_vanilla_filter = 'Use the default UI\'s filter for auras on enemy nameplates, showing things such as other players\' stuns, silences, etc., along with certain important player casts.|n|n|cffff6666There is currently no way to edit the spells included by this filter.|n|nNote that the KSLC whitelist is ignored for enemies when this is enabled.',
    auras_whitelist = 'Use KuiSpellList to filter spells. You can use the extra addon KuiSpellListConfig from Curse to customise this list.|n|n|cffff6666This option and the whitelist is ignored for enemies if "use default UI filter" is also enabled.',
    auras_pulsate = 'Pulsate icons when they are about to expire',
    auras_centre = 'Align icons to horizontal centre relative to the frame, rather than left',
    auras_time_threshold = 'The countdown text will display when there is less than or equal to this amount of time left on an aura. Set to -1 to always display the timer',
    auras_minimum_length = 'Don\'t show auras with an initial length less than this value',
    auras_maximum_length = 'Don\'t show auras with an initial length greater than this value. Set to -1 to ignore',
    auras_icon_normal_size = 'Icon size on normal-size frames',
    auras_icon_minus_size = 'Icon size on smaller frames',
    auras_icon_squareness = 'Size ratio of the aura icons, where 1 means a perfect square',

    castbar_enable = 'Enable the castbar element',
    castbar_showpersonal = 'Show the castbar on your character\'s nameplate if it is enabled',
    castbar_showall = 'Show castbars on all nameplates, rather than on just the current target',
    castbar_showfriend = 'Show castbars on friendly nameplates (note that castbars are not shown on frames which have name-only mode active)',
    castbar_showenemy = 'Show castbars on enemy nameplates',
    castbar_unin_colour = 'Colour of the castbar when a cast cannot be interrupted',

    tank_mode = 'Recolour the health bars of units you are actively tanking when in a tanking specialisation',
    tankmode_force_enable = 'Always use tank mode, even if you\'re not currently in a tanking specialisation',
    threat_brackets = 'Show triangles around nameplates to indicate threat status',
    frame_glow_threat = 'Change the colour of the frame glow to indicate threat status',
    tankmode_tank_colour = 'Health bar colour to use when securely tanking',
    tankmode_trans_colour = 'Health bar colour to use when gaining or losing threat',
    tankmode_other_colour = 'Health bar colour to use when another tank is tanking. This requires the other tank to be in your group and to have their group role set to tank',

    classpowers_enable = 'Show your class\' special resource, such as combo points, holy power, etc.',
    classpowers_on_target = 'Show on the frame of your target, rather than on the personal nameplate',
    classpowers_size = 'Size of the class powers icons',
    classpowers_bar_width = 'Width of the stagger bar',
    classpowers_bar_height = 'Height of the stagger bar',
    classpowers_colour = 'Colour of the class powers icons for the current class',
    classpowers_colour_overflow = 'Colour of class powers "overflow" (ala Anticipation on a rogue)',
    classpowers_colour_inactive = 'Colour of inactive class power icons',

    bossmod_enable = 'Boss mod addons can communicate with nameplate addons to display extra information on nameplates in relevant encounters, such as important buffs or debuffs cast by bosses.',
    bossmod_control_friendly = 'Boss mod addons can send a message to nameplate addons informing them to keep friendly nameplates enabled during an encounter, ignoring other settings like automatic combat toggling, so that extra information can be displayed on friendly players.|n|n|cffff6666If you disable this option and you do not have friendly nameplates enabled, boss mods will not be able to show you this data.',
    bossmod_icon_size = 'Size of the boss aura icon',
    bossmod_x_offset = 'Horizontal offset of the boss aura icon',
    bossmod_y_offset = 'Vertical offset of the boss aura icon',
    bossmod_clickthrough = 'Disable the clickbox of friendly nameplates when they are automatically shown',
}
opt.titles = {
    profile = 'Profile',
    new_profile = 'New profile...',
    new_profile_label = 'Enter profile name',
    delete_profile_title = 'Delete profile',
    delete_profile_label = 'Delete profile |cffffffff%s|r?',
    reset_profile_title = 'Reset profile',
    reset_profile_label = 'Reset profile |cffffffff%s|r?',
    rename_profile_title = 'Rename profile',
    rename_profile_label = 'Enter new name for |cffffffff%s',
    copy_profile_title = 'Copy profile',
    copy_profile_label = 'Enter name for new profile',
    version = '%s by %s @ Curse, version %s',

    bar_texture = 'Bar texture',
    bar_animation = 'Bar animation',

    combat_hostile = 'Combat action: hostile',
    combat_friendly = 'Combat action: friendly',

    ignore_uiscale = 'Ignore UI scale',
    use_blizzard_personal = 'Ignore personal nameplate',

    clickthrough_sep = 'Clickthrough frames',
    clickthrough_self = 'Personal',
    clickthrough_friend = 'Friendly',
    clickthrough_enemy = 'Enemy',

    nameonly = 'Use name-only mode',
    nameonly_no_font_style = 'No text outline',
    nameonly_health_colour = 'Health colour',
    nameonly_damaged_friends = 'On damaged friends',
    nameonly_enemies = 'On unattackable enemies',
    nameonly_target = 'On target',
    nameonly_all_enemies = 'On enemies',
    nameonly_neutral = 'On neutral enemies',
    nameonly_in_combat = 'On units in combat with you',
    guild_text_npcs = 'Show NPC titles',
    guild_text_players = 'Show player guilds',
    title_text_players = 'Show player titles',

    glow_as_shadow = 'Show frame shadow',
    state_icons = 'Show state icons',
    target_glow = 'Show target glow',
    target_glow_colour = 'Target glow colour',
    target_arrows = 'Show target arrows',
    frame_glow_size = 'Frame glow size',
    target_arrows_size = 'Target arrow size',

    fade_rules_sep = 'Frame fading',
    fade_alpha = 'Faded alpha',
    fade_speed = 'Fade animation speed',
    fade_all = 'Fade by default',
    fade_friendly_npc = 'Fade friendly NPCs',
    fade_neutral_enemy = 'Fade neutral enemies',
    fade_untracked = 'Fade non-tracked units',
    fade_avoid_nameonly = 'Avoid name-only',
    fade_avoid_raidicon = 'Avoid raid icon',
    fade_avoid_execute_friend = 'Avoid low health friends',
    fade_avoid_execute_hostile = 'Avoid low health enemies',
    fade_avoid_tracked = 'Avoid tracked or in combat',

    reaction_colour_sep = 'Colours',
    colour_hated = 'Hated',
    colour_neutral = 'Neutral',
    colour_friendly = 'Friendly',
    colour_tapped = 'Tapped',
    colour_player = 'Player',
    colour_self_class = 'Class colour self',
    colour_self = 'Self',
    colour_enemy_class = 'Class colour hostile players',
    colour_enemy_player = 'Hostile player',
    colour_enemy_pet = 'Hostile player pet',

    execute_sep = 'Execute range',
    execute_enabled = 'Enable execute range',
    execute_auto = 'Auto-detect range',
    execute_colour = 'Execute colour',
    execute_percent = 'Execute range',

    font_face = 'Font face',
    font_style = 'Font style',
    font_size_normal = 'Normal font size',
    font_size_small = 'Small font size',
    name_text = 'Show name text',
    hide_names = 'Hide non-tracked names',
    level_text = 'Show level text',
    health_text = 'Show health text',
    class_colour_friendly_names = 'Class colour friendly names',
    class_colour_enemy_names = 'Class colour enemy names',
    text_vertical_offset = 'Text v.offset',
    name_vertical_offset = 'Name v.offset',
    bot_vertical_offset = 'Level/health v.offset',

    health_text_sep = 'Health text',
    health_text_friend_max = 'Max. health friend',
    health_text_friend_dmg = 'Damaged friend',
    health_text_hostile_max = 'Max. health hostile',
    health_text_hostile_dmg = 'Damaged hostile',

    frame_width = 'Frame width',
    frame_height = 'Frame height',
    frame_width_minus = 'Minus frame width',
    frame_height_minus = 'Minus frame height',
    frame_width_personal = 'Personal frame width',
    frame_height_personal = 'Personal frame height',
    powerbar_height = 'Power bar height',
    castbar_height = 'Cast bar height',

    auras_enabled = 'Show auras',
    auras_on_personal = 'Show on personal frame',
    auras_vanilla_filter = 'Use default UI filter',
    auras_whitelist = 'Use whitelist',
    auras_pulsate = 'Pulsate icons',
    auras_centre = 'Centre align icons',
    auras_sort = 'Sorting method',
    auras_filtering_sep = 'Filtering',
    auras_time_threshold = 'Timer threshold',
    auras_minimum_length = 'Minimum effect length',
    auras_maximum_length = 'Maximum effect length',
    auras_icons_sep = 'Icons',
    auras_icon_normal_size = 'Icon size (normal)',
    auras_icon_minus_size = 'Icon size (minus)',
    auras_icon_squareness = 'Icon squareness',

    castbar_enable = 'Enable',
    castbar_colour = 'Cast bar colour',
    castbar_unin_colour = 'Uninterruptible colour',
    castbar_showpersonal = 'Show own cast bar',
    castbar_icon = 'Show spell icon',
    castbar_name = 'Show spell name',
    castbar_showall = 'Show cast bars on all nameplates',
    castbar_showfriend = 'Show friendly cast bars',
    castbar_showenemy = 'Show enemy cast bars',

    tank_mode = 'Enable tank mode',
    tankmode_force_enable = 'Force tank mode',
    threat_brackets = 'Show threat brackets',
    frame_glow_threat = 'Show threat glow',
    tankmode_colour_sep = 'Bar colours',
    tankmode_tank_colour = 'Tanking',
    tankmode_trans_colour = 'Transitional',
    tankmode_other_colour = 'Offtank',

    classpowers_enable = 'Show class resources',
    classpowers_on_target = 'Show on target',
    classpowers_size = 'Icon size',
    classpowers_bar_width = 'Stagger bar width',
    classpowers_bar_height = 'Stagger bar height',
    classpowers_colour = 'Icon colour',
    classpowers_colour_overflow = 'Overflow colour',
    classpowers_colour_inactive = 'Inactive colour',

    bossmod_enable = 'Enable boss mod communication module',
    bossmod_control_friendly = 'Allow boss mods to control visibility of friendly nameplates',
    bossmod_icon_size = 'Icon size',
    bossmod_x_offset = 'Horizontal offset',
    bossmod_y_offset = 'Vertical offset',
    bossmod_clickthrough = 'Enable clickthrough when automatically shown',
}

