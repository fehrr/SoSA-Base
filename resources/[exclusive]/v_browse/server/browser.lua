local vehicles = {
    [10] --[[LegendaryMotorSports]] = {
        [3] = 'ZTYPE',
        [4] = 'STINGER',
        [5] = 'JB700',
        [6] = 'CHEETAH',
        [7] = 'ENTITYXF',
        [8] = 'ADDER',
        [9] = 'MONROE',
        [10] = 'COGCABRI',
        [11] = 'VACCA',
        [17] = 'BULLET',
        [18] = 'CARBONIZ',
        [19] = 'COQUETTE',
        [20] = 'EXEMPLAR',
        [21] = 'FELTZER',
        [22] = 'INFERNUS',
        [23] = 'NINEF',
        [24] = 'NINEF2',
        [25] = 'RAPIDGT',
        [26] = 'RAPIDGT2',
        [27] = 'STINGERG',
        [28] = 'SUPERD',
        [29] = 'ELEGY2',
        [30] = 'KHAMEL',
        [31] = 'HOTKNIFE',
        [32] = 'CARBON',
        [33] = 'VOLTIC_TLESS',
        [35] = 'SURANO_CONVERTABLE',
        [36] = 'BANSHEE',
        [37] = 'COMET2',
        [38] = 'ROOSEVELT',
        [39] = 'JESTER',
        [40] = 'MASSACRO',
        [41] = 'TURISMOR',
        [42] = 'ZENTORNO',
        [43] = 'HUNTLEY',
        [44] = 'ALPHA',
        [45] = 'COQUETTE_TLESS',
        [46] = 'BANSHEE_TLESS',
        [47] = 'STINGER_TLESS',
        [48] = 'VOLTIC_HTOP',
        [49] = 'THRUST',
        [50] = 'COQUETTE2',
        [51] = 'COQUETTE2_TLESS',
        [52] = 'FURORE',
        [53] = 'CASCO',
        [54] = 'LECTRO',
        [55] = 'BRAWLER',
        [56] = 'CHINO',
        [58] = 'COQUETTE3',
        [60] = 'OSIRIS',
        [61] = 'FELTZER3',
        [62] = 'T20',
        [63] = 'VINDICATOR',
        [64] = 'VIRGO',
        [65] = 'WINDSOR',
        [66] = 'COG55',
        [67] = 'COGNOSC',
        [68] = 'MAMBA',
        [69] = 'NITESHAD',
        [70] = 'VERLIER',
        [71] = 'BALLER3',
        [72] = 'BALLER4',
        [73] = 'SCHAFTER3',
        [74] = 'SCHAFTER4',
        [75] = 'ROOSEVELT2',
        [76] = 'FMJ',
        [77] = 'BESTIAGTS',
        [78] = 'XLS',
        [79] = 'WINDSOR2',
        [80] = 'PROTOTIPO',
        [81] = 'SEVEN70',
        [82] = 'PFISTER811',
        [83] = 'REAPER',
        [84] = 'LE7B',
        [85] = 'TYRUS',
        [86] = 'LYNX',
        [87] = 'SHEAVA',
        [88] = 'SHOTARO',
        [89] = 'RAPTOR',
        [90] = 'HAKUCHOU2',
        [91] = 'PENETRATOR',
        [92] = 'TEMPESTA',
        [93] = 'GP1',
        [94] = 'INFERNUS2',
        [95] = 'RUSTON',
        [96] = 'TURISMO2',
        [97] = 'CHEETAH2',
        [98] = 'TORERO',
        [99] = 'VAGNER',
        [100] = 'XA21',
        [101] = 'CYCLONE',
        [102] = 'RAPIDGT3',
        [103] = 'VISIONE',
        [104] = 'COMET4',
        [105] = 'NEON',
        [106] = 'SC1',
        [107] = 'AUTARCH',
        [108] = 'GT500',
        [109] = 'HUSTLER',
        [110] = 'REVOLTER',
        [111] = 'PARIAH',
        [112] = 'RAIDEN',
        [113] = 'SAVESTRA',
        [114] = 'Z190',
        [115] = 'COMET5',
        [116] = 'VISERIS',
        [117] = 'GB200',
        [118] = 'FLASHGT',
        [119] = 'TEZERACT',
        [120] = 'TYRANT',
        [121] = 'ENTITY2',
        [122] = 'TAIPAN',
        [123] = 'JESTER3',
        [124] = 'SWINGER',
        [125] = 'STAFFORD',
        [126] = 'FREECRAWLER',
        [127] = 'DEVESTE',
        [128] = 'SCHLAGEN',
        [129] = 'TOROS',
        [130] = 'DEVIANT',
        [131] = 'CLIQUE',
        [132] = 'ITALIGTO',
        [133] = 'CLIQUEXMAS',
        [134] = 'THRAX',
        [135] = 'DRAFTER',
        [136] = 'LOCUST',
        [137] = 'NOVAK',
        [138] = 'ZORRUSSO',
        [139] = 'RROCKET',
        [140] = 'JUGULAR',
        [141] = 'S80',
        [142] = 'KRIEGER',
        [143] = 'EMERUS',
        [144] = 'NEO',
        [145] = 'PARAGON',
        [146] = 'KOMODA',
        [147] = 'STRYDER',
        [148] = 'VSTR',
        [149] = 'FORMULA',
        [150] = 'IMORGON',
        [151] = 'FORMULA2',
        [152] = 'FURIA',
        [153] = 'REBLA',
        [154] = 'COQUETTE4',
        [155] = 'TIGON',
        [156] = 'OPENWHEEL1',
        [157] = 'OPENWHEEL2',
        [158] = 'ITALIRSX',
        [159] = 'ZR350',
        [160] = 'COMET6',
        [161] = 'JESTER4',
        [162] = 'VECTRE',
        [163] = 'CYPHER',
        [164] = 'TAILGATER2',
        [165] = 'EUROS',
        [166] = 'GROWLER',
        [168] = 'ASTRON2',
        [169] = 'CYCLONE2',
        [170] = 'COMET7',
        [171] = 'SHINOBI',
        [172] = 'REEVER',
        [173] = 'BALLER7',
        [174] = 'CINQUEMILA',
        [175] = 'JUBILEE',
        [176] = 'ASTRON',
        [177] = 'DEITY',
        [178] = 'ZENO',
        [179] = 'CHAMPION',
        [180] = 'IGNUS',
        [181] = 'SM722',
        [182] = 'TORERO2',
        [183] = 'CORSITA',
        [184] = 'LM87',
        [185] = 'TENF',
        [186] = 'OMNISEGT',
        [187] = 'VIRTUE',
        [188] = 'PANTHERE',
        [189] = 'BROADWAY',
        [190] = 'POWERSURGE',
        [191] = 'R300',
        [192] = 'ENTITY3',
        [194] = 'STINGERTT',
        [195] = 'BUFFALO5',
        [196] = 'COUREUR'
    },
    [11] --[[ElitasTravel]] = {
        [3] = 'DUSTER',
        [4] = 'SHAMAL',
        [5] = 'CUBAN800',
        [6] = 'LUXOR',
        [7] = 'STUNT',
        [8] = 'FROGGER',
        [15] = 'MAVERICK',
        [16] = 'ANNIHL',
        [17] = 'MAMMATUS',
        [18] = 'TITAN',
        [19] = 'VELUM',
        [20] = 'VESTRA',
        [21] = 'MILJET',
        [22] = 'BESRA',
        [23] = 'DODO',
        [24] = 'SWIFT',
        [25] = 'VELUM2',
        [26] = 'LUXOR2',
        [27] = 'SWIFT2',
        [28] = 'SVOLITO',
        [29] = 'SVOLITO2',
        [30] = 'VOLATUS',
        [31] = 'NIMBUS',
        [32] = 'HOWARD',
        [33] = 'ALPHAZ1',
        [34] = 'HAVOK',
        [35] = 'SEABREEZE',
        [36] = 'MICROLIGHT',
        [37] = 'SPARROW',
        [38] = 'BLIMP3',
        [39] = 'CONADA'
    },
    [12] --[[WarstockCacheCarry]] = {
        [3] = 'RHINO',
        [5] = 'BARRACKS',
        [7] = 'CARGOBOB',
        [8] = 'BUZZARD',
        [10] = 'CRUSADER',
        [17] = 'AIRBUS',
        [18] = 'JOURNEY',
        [20] = 'COACH',
        [21] = 'BUS',
        [24] = 'MULE',
        [27] = 'RENTBUS',
        [28] = 'DUMP',
        [29] = 'DUBSTA3',
        [30] = 'MONSTER',
        [31] = 'BOXVILLE4',
        [32] = 'VALKYRIE',
        [33] = 'HYDRA',
        [34] = 'INSURGENT',
        [35] = 'INSURGENT2',
        [36] = 'MULE3',
        [37] = 'SAVAGE',
        [38] = 'TECHNICAL',
        [39] = 'MESA3',
        [40] = 'PBUS',
        [41] = 'MARSHALL',
        [42] = 'DUKES2',
        [43] = 'LIMO2',
        [44] = 'CARGOBOB2',
        [45] = 'BRICKADE',
        [46] = 'DUNE5',
        [47] = 'PHANTOM2',
        [48] = 'TECHNICAL2',
        [49] = 'BLAZER5',
        [50] = 'BOXVILLE5',
        [51] = 'WASTLNDR',
        [52] = 'RUINER2',
        [53] = 'VOLTIC2',
        [63] = 'BALLISTIC_EQUIP',
        [64] = 'APC',
        [65] = 'DUNE3',
        [66] = 'HALFTRACK',
        [67] = 'OPPRESSOR',
        [68] = 'TAMPA3',
        [69] = 'TRSMALL2',
        [70] = 'ARDENT',
        [71] = 'NIGHTSHARK',
        [72] = 'LAZER',
        [73] = 'MOGUL',
        [74] = 'ROGUE',
        [75] = 'STARLING',
        [76] = 'TULA',
        [77] = 'PYRO',
        [78] = 'MOLOTOK',
        [79] = 'NOKOTA',
        [80] = 'BOMBUSHKA',
        [81] = 'HUNTER',
        [82] = 'VIGILANTE',
        [91] = 'DELUXO',
        [92] = 'STROMBERG',
        [93] = 'RIOT2',
        [94] = 'CHERNOBOG',
        [95] = 'KHANJALI',
        [96] = 'AKULA',
        [97] = 'THRUSTER',
        [98] = 'BARRAGE',
        [99] = 'VOLATOL',
        [100] = 'CARACARA',
        [111] = 'MULE4',
        [112] = 'POUNDER2',
        [113] = 'MENACER',
        [114] = 'SCRAMJET',
        [115] = 'STRIKEFORCE',
        [116] = 'OPPRESSOR2',
        [117] = 'FIRETRUK',
        [118] = 'BURRITO2',
        [119] = 'BOXVILLE',
        [120] = 'STOCKADE',
        [121] = 'LGUARD',
        [122] = 'BLAZER2',
        [123] = 'ZHABA',
        [124] = 'MINITANK',
        [125] = 'JB7002',
        [148] = 'ALKONOST',
        [149] = 'ANNIHLATOR2',
        [150] = 'AVISA',
        [151] = 'DINGHY5',
        [152] = 'MANCHEZ2',
        [153] = 'PATROLBOAT',
        [154] = 'SPARROW3',
        [155] = 'SQUADDIE',
        [156] = 'TOREADOR',
        [157] = 'VERUS',
        [158] = 'VETIR',
        [159] = 'WINKY',
        [160] = 'IGNUS2',
        [161] = 'BRICKADE2',
        [162] = 'TAXI',
        [164] = 'STREAMER216',
        [165] = 'RAIJU',
        [166] = 'CONADA2'
    },
    [13] --[[DockTease]] = {
        [3] = 'MARQUIS',
        [4] = 'JETMAX',
        [5] = 'SPEEDER',
        [6] = 'SQUALO',
        [7] = 'SUNTRAP',
        [8] = 'TROPIC',
        [9] = 'SEASHARK',
        [11] = 'DINGHY3',
        [14] = 'TORO',
        [17] = 'SUB2',
        [29] = 'TUG',
        [30] = 'LONGFIN'
    },
    [15] --[[PedalAndMetalCycles]] = {
        [3] = 'BMX',
        [4] = 'SCORCHER',
        [5] = 'TRIBIKE',
        [6] = 'TRIBIKE2',
        [7] = 'TRIBIKE3',
        [8] = 'CRUISER',
        [9] = 'INDUCTOR',
        [10] = 'INDUCTOR2'
    },
    [16] --[[SouthernSanAndreas]] = {
        [3] = 'SCHWARZE',
        [4] = 'ZION',
        [5] = 'GAUNTLET',
        [6] = 'VIGERO',
        [7] = 'ISSI2',
        [8] = 'INFERNUS',
        [9] = 'SURANO',
        [10] = 'VACCA',
        [11] = 'NINEF',
        [12] = 'COMET2',
        [13] = 'BANSHEE',
        [14] = 'FELTZER',
        [15] = 'BFINJECT',
        [16] = 'SANDKING',
        [17] = 'FUGITIVE',
        [18] = 'DILETTAN',
        [19] = 'SUPERD',
        [20] = 'EXEMPLAR',
        [21] = 'BALLER2',
        [22] = 'CAVCADE',
        [23] = 'ROCOTO',
        [24] = 'FELON',
        [25] = 'ORACLE',
        [26] = 'BATI',
        [27] = 'AKUMA',
        [28] = 'RUFFIAN',
        [29] = 'VADER',
        [30] = 'BLAZER',
        [31] = 'PCJ',
        [32] = 'SANCHEZ',
        [33] = 'FAGGIO',
        [38] = 'BISON',
        [39] = 'DOUBLE',
        [40] = 'FELON2',
        [41] = 'HEXER',
        [42] = 'ZION2',
        [43] = 'BATI2',
        [44] = 'STRETCH',
        [45] = 'BIFTA',
        [46] = 'KALAHARI',
        [47] = 'PARADISE',
        [48] = 'BODHI2',
        [49] = 'DUNE',
        [50] = 'REBEL',
        [51] = 'SADLER',
        [52] = 'SANDKIN2',
        [53] = 'SANCHEZ2',
        [54] = 'RLOADER',
        [55] = 'ASEA',
        [56] = 'ASTROPE',
        [57] = 'BOBCATXL',
        [58] = 'CAVCADE2',
        [59] = 'GRANGER',
        [60] = 'INGOT',
        [61] = 'INTRUDER',
        [62] = 'MINIVAN',
        [63] = 'PREMIER',
        [64] = 'RADI',
        [65] = 'RANCHERX',
        [66] = 'STANIER',
        [67] = 'STRATUM',
        [68] = 'WASHINGT',
        [69] = 'DOMINATO',
        [70] = 'F620',
        [71] = 'FUSILADE',
        [72] = 'PENUMBRA',
        [73] = 'SENTINEL',
        [74] = 'SENTINEL', --special case: SENTINEL_CONVERTABLE
        [75] = 'BLADE',
        [76] = 'WARRENER',
        [77] = 'GLENDALE',
        [78] = 'RHAPSODY',
        [79] = 'PANTO',
        [80] = 'PIGALLE',
        [81] = 'PICADOR',
        [82] = 'REGINA',
        [83] = 'SURFER',
        [84] = 'YOUGA',
        [85] = 'BLAZER3',
        [86] = 'REBEL2',
        [87] = 'PRIMO',
        [88] = 'BUFFALO',
        [89] = 'BUFFALO2',
        [90] = 'TAILGATER',
        [91] = 'SOVEREIGN',
        [92] = 'HAKUCHOU',
        [93] = 'INNOVATION',
        [94] = 'KALAHARI', --special case: KALAHARI_TOPLESS
        [95] = 'GRESLEY',
        [96] = 'JACKAL',
        [97] = 'LANDSTALKER',
        [98] = 'NEMESIS',
        [99] = 'ORACLE1',
        [100] = 'RUMPO',
        [101] = 'SCHAFTER2',
        [102] = 'SEMINOLE',
        [103] = 'SURGE',
        [104] = 'ENDURO',
        [105] = 'GBURRITO2',
        [106] = 'GUARDIAN',
        [107] = 'KURUMA',
        [108] = 'KURUMA2',
        [109] = 'DUKES',
        [110] = 'BLISTA2',
        [111] = 'STALLION',
        [112] = 'STALION2',
        [113] = 'DOMINATOR2',
        [114] = 'GAUNTLET2',
        [115] = 'BUFFALO3',
        [116] = 'RLOADER2',
        [117] = 'SLAMVAN',
        [118] = 'MASSACRO2',
        [119] = 'JESTER2',
        [120] = 'BTYPE2',
        [121] = 'LURCHER',
        [122] = 'TAMPA',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [123] = 'RUMPO3',
        [124] = 'OMNIS',
        [125] = 'TROPOS',
        [126] = 'BRIOSO',
        [127] = 'TROPHY',
        [128] = 'TROPHY2',
        [129] = 'CONTENDER',
        [130] = 'CLIFFHANGER',
        [131] = 'BF400',
        [132] = 'RALLYTRUCK',
        [133] = 'TAMPA2',
        [134] = 'GARGOYLE',
        [135] = 'BAGGER',
        [137] = 'ESSKEY',
        [138] = 'NIGHTBLADE',
        [139] = 'DEFILER',
        [140] = 'AVARUS',
        [141] = 'ZOMBIEA',
        [142] = 'ZOMBIEB',
        [143] = 'CHIMERA',
        [144] = 'DAEMON2',
        [145] = 'RATBIKE',
        [146] = 'VORTEX',
        [147] = 'BLAZER4',
        [148] = 'SANCTUS',
        [149] = 'MANCHEZ',
        [150] = 'TORNADO6',
        [151] = 'YOUGA2',
        [152] = 'WOLFSBANE',
        [153] = 'FAGGIO3',
        [154] = 'FAGGION',
        [155] = 'RETINUE',
        [156] = 'SENTINEL3',
        [157] = 'YOSEMITE',
        [158] = 'RIATA',
        [159] = 'HERMES',
        [160] = 'STREITER',
        [161] = 'KAMACHO',
        [162] = 'FAGALOA',
        [163] = 'ELLIE',
        [164] = 'ISSI3',
        [165] = 'MICHELLI',
        [166] = 'HOTRING',
        [167] = 'CHEBUREK',
        [168] = 'DOMINATOR3',
        [169] = 'FUTO',
        [170] = 'RUINER',
        [171] = 'ROMERO',
        [172] = 'PRAIRIE',
        [173] = 'PATRIOT',
        [175] = 'SERRANO',
        [176] = 'BJXL',
        [177] = 'FQ2',
        [178] = 'HABANERO',
        [179] = 'PBUS2',
        [180] = 'PATRIOT2',
        [181] = 'BLISTA3',
        [187] = 'VAMOS',
        [188] = 'TULIP',
        [189] = 'RCBANDITO',
        [190] = 'GAUNTLET3',
        [191] = 'ISSI7',
        [192] = 'ZION3',
        [193] = 'NEBULA',
        [194] = 'HELLION',
        [195] = 'IMPALER',
        [196] = 'DYNASTY',
        [197] = 'PEYOTE2',
        [198] = 'GAUNTLET4',
        [199] = 'CARACARA2',
        [200] = 'ASBO',
        [201] = 'KANJO',
        [202] = 'EVERON',
        [203] = 'RETINUE2',
        [204] = 'YOSEMITE2',
        [205] = 'SUGOI',
        [206] = 'SULTAN2',
        [207] = 'OUTLAW',
        [208] = 'VAGRANT',
        [210] = 'DUKES3',
        [216] = 'CLUB',
        [217] = 'PENUMBRA2',
        [221] = 'SEMINOLE2',
        [222] = 'LANDSTLKR2',
        [223] = 'SLAMTRUCK',
        [224] = 'BRIOSO2',
        [225] = 'WEEVIL',
        [226] = 'VETO',
        [227] = 'VETO2',
        [228] = 'CALICO',
        [229] = 'REMUS',
        [230] = 'DOMINATOR7',
        [231] = 'FUTO2',
        [232] = 'RT3000',
        [233] = 'WARRENER2',
        [234] = 'SULTAN3',
        [235] = 'DOMINATOR8',
        [236] = 'PREVION',
        [237] = 'S95',
        [238] = 'ARBITERGT',
        [239] = 'BUFFALO4',
        [240] = 'GRANGER2',
        [241] = 'IWAGEN',
        [242] = 'PATRIOT3',
        [243] = 'RHINEHART',
        [244] = 'POSTLUDE',
        [245] = 'KANJOSJ',
        [246] = 'VIGERO2',
        [247] = 'RUINER4',
        [248] = 'DRAUGUR',
        [249] = 'GREENWOOD',
        [250] = 'TAHOMA',
        [251] = 'TULIP2',
        [252] = 'EVERON2',
        [253] = 'EUDORA',
        [254] = 'ISSI8',
        [255] = 'BOOR',
        [256] = 'JOURNEY2',
        [257] = 'SURFER3',
        [258] = 'L35',
        [259] = 'BRIGHAM',
        [260] = 'CLIQUE2',
        [261] = 'RATEL',
        [262] = 'MONSTROCITI',
        [263] = 'GAUNTLET6'
    }
}

local colors = {27, 135, 89, 38, 92, 64, 0, 111}

RegisterNetEvent('v_browser:tryPurchase')
AddEventHandler('v_browser:tryPurchase', function(website, id, price, color)
    local _source = source
    local player = GetPlayerName(_source)
    if color == nil then color = 8 end

    print('Player ' .. player .. ' tried to purchase a car (id: '.. id ..', website: '.. website ..', color: ' .. color .. ') $'.. price)

    --TODO: check if player had enough cash and if the client vehicle price matchs vehicle price from server (never trust client side, never never never)

    if vehicles[website] then
        if vehicles[website][id] then
            TriggerClientEvent('v_browser:purchaseResult', _source, 'SUCCESS', vehicles[website][id], colors[color-7])
        else          
            TriggerClientEvent('v_browser:purchaseResult', _source, 'ERROR', 'carnotfound')
        end
    else
        TriggerClientEvent('v_browser:purchaseResult', _source, 'FAILED', 'carnotfound')
    end

end)
