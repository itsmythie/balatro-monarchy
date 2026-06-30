local loc_table = {
    misc = {
        dictionary = {
            monarchy_returned = '¡Devuelto!',
            monarchy_enhanced = '¡Potenciado!',
            monarchy_chips = 'Fichas',
            monarchy_mult = 'Multi',
            monarchy_switched = '¡Cambiado!',
            monarchy_air_freshener_flavour_54 = 'Flores',
            monarchy_air_freshener_flavour_64 = 'Jimbo',
            monarchy_air_freshener_flavour_74 = 'Steven',
            monarchy_air_freshener_flavour_84 = 'Todd',
            monarchy_air_freshener_flavour_94 = 'Arándanos',
            monarchy_air_freshener_flavour_55 = 'Palomitas',
            monarchy_air_freshener_flavour_65 = 'Plátanos',
            monarchy_air_freshener_flavour_75 = 'Helado',
            monarchy_air_freshener_flavour_85 = 'Ramen',
            monarchy_air_freshener_flavour_95 = 'Sushi',
            monarchy_air_freshener_flavour_56 = 'Los 80s',
            monarchy_air_freshener_flavour_66 = 'Café',
            monarchy_air_freshener_flavour_76 = 'Quemado',
            monarchy_air_freshener_flavour_86 = 'Sudor',
            monarchy_air_freshener_flavour_96 = 'Huevos',
            monarchy_socket_set_default = 'carta enumerada',
            monarchy_tag_added = '¡Etiqueta!',
            monarchy_lineup_trigger = 'texto de sabor',
            monarchy_watercolour_default = 'Ninguna jugadas',
            monarchy_watercolour_wild = 'Palo Comodín',
            monarchy_sushi_rolls_set = 'texto de sabor',
            monarchy_walkman_ante_loss = '-1 Ronda',
            monarchy_clasped_cloak = '¡Abrochado!',
            monarchy_wild_goose = '¡Anatema!',
            monarchy_slinky = '¡Roto!',
            monarchy_viral_spread = '¡Infectado!',
            monarchy_abberant_trigger = '¡Aberrante!',
            monarchy_anchor_active = '¡A flote!',
            monarchy_anchor_primed = '¡Suelta!',
        }
    },
    descriptions = {}
}

local descriptions = {
    Joker = {
        air_freshener = {
            name = 'Ambientador',
            text = {
                'Al seleccionar una {C:attention}Ciega{},',
                'todas las {C:attention}cartas{} de la',
                'baraja ganan {C:blue}+#1#{} Fichas',
                '{C:inactive,s:0.8}Huele a {C:dark_edition,s:0.8}#2#{C:inactive,s:0.8}...'
            }
        },
        anchor = {
            name = 'Ancla',
            text = {
                'Las cartas en la {C:attention}mitad inferior{}',
                'de tu baraja otorgan {C:mult}+#1#{} Multi',
                'al ser anotadas'
            }
        },
        arcade_stub = {
            name = 'Boleto de Arcade',
            text = {
                'Gana {C:chips}+#1#{} Fichas por cada',
                '{C:attention}vale{} comprado esta partida',
                '{C:inactive}(Actualmente {C:chips}+#2#{C:inactive} Fichas)',
            }
        },
        asteroid_belt = {
            name = 'Cinturón de Asteroides',
            text = {
                'Otorga {C:chips}+#1#{} Fichas por cada',
                '{C:attention}mano de póker{} en nivel {C:attention}#2#',
                '{C:inactive}(Actualmente {C:blue}+#3#{C:inactive} Fichas)'
            }
        },
        bees_threes = {
            name = 'Tres de Abejas',
            text = {
                'Cada {C:attention}#1#{} jugado otorga {C:chips}+#2#{} Fichas',
                'y tiene una prob. de {C:green}#3# en #4#{}',
                'de otorgar {C:money}#5#'
            }
        },
        bicycle = {
            name = 'Bicicleta',
            text = {
                '{C:mult}+#1#{} Multi si se',
                'juega una {C:attention}#2#{} que',
                'contenga un {C:attention}#3#{} y un {C:attention}#4#',
            }
        },
        the_break = {
            name = 'Ruptura Inicial',
            text = {
                'Otorga entre {C:white,X:red}X#1#{} y {C:white,X:red}X#2#{} Multi',
                'en la {C:attention}primera mano{} de la ronda'
            }
        },
        burn = {
            name = 'Arde',
            text = {
                'Al seleccionar una {C:attention}Ciega{},',
                'destruye la {C:attention}carta superior{}',
                'de tu baraja y ganas {C:money}#1#{}',
            }
        },
        can_of_snakes = {
            name = 'Lata de Serpientes',
            text = {
                'Otorga {C:blue}+#1#{} Fichas, {C:red}+#2#{} Multi',
                'o {C:money}#3#{} en la {C:attention}primera mano{}',
                'de la ronda'
            }
        },
        clasped_cloak = {
            name = 'Capa de Pícaro',
            text = {
                'Cada {C:attention}carta{} en tu mano',
                'obtiene {C:white,X:red}X#1#{} Multi',
                '{C:inactive,s:0.95}(Se reinicia al jugar)'
            }
        },
        daifugo = {
            name = 'Daifugo',
            text = {
                'Al jugar una mano, {C:red}descarta{}',
                'la carta de {C:attention}menor categoría{}',
                "de tu mano y ganas {C:money}#1#{}",
            }
        },
        defragment = {
            name = 'Desfragmentación',
            text = {
                'Ganas {C:attention}+#1#{} tamaño de mano',
                'al usar descartes',
                '{C:inactive,s:0.9}(Se reinicia al final de la ronda)'
            }
        },
        gift_receipt = {
            name = 'Recibo de Regalo',
            text = {
                'Al {C:attention}vender{} un {C:attention}Comodín{}, obtiene',
                'el {C:attention}doble{} de su {C:money}valor de venta{}',
                'como {C:chips}Fichas',
                '{C:inactive}(Actualmente {C:blue}+#1#{C:inactive})'
            }
        },
        gold_cables = {
            name = 'Conexión Dorada',
            text = {
                'Reactiva todas las {C:attention}cartas anotadas{}',
                'adyacentes a una {C:attention}#1#{}'
            }
        },
        gummy_bears = {
            name = 'Ositos de Goma',
            text = {
                'Las {C:attention}Cartas anotadas{} tienen',
                'una prob. de {C:green}#2# en #3#{} de',
                'obtener una {C:attention}Mejora{} al azar.',
                'Se consume en {C:attention}#1#{} manos,',
            }
        },
        gummy_bears_alt = {
            name = 'Ositos de Goma',
            text = {
                'Por la próxima mano,',
                'todas las {C:attention}cartas anotadas{} tienen',
                'una prob. de {C:green}#2# en #3#{} de ganar',
                'una {C:attention}Mejora{} al azar'
            }
        },
        gutshot = {
            name = 'Directo a las Costillas',
            text = {
                'Si la mano contiene una {C:attention}#2#{}',
                'reactiva la categoría del medio',
                '{C:attention}#1#{} veces adicionales'
            }
        },
        hailstorm = {
            name = 'Tormenta de Granizo',
            text = {
                'Al anotar un {C:attention}#1#,',
                'cada {C:attention}otra carta anotada{}',
                'otorga {C:chips}+#2#{} Fichas'
            }
        },
        iron_cross = {
            name = 'Cruz de Hierro',
            text = {
                'Las {C:attention}Cartas de Acero{} jugadas',
                'ganan {C:white,X:red}X#2#{} Multi para su',
                'efecto al ser anotadas'
            }
        },
        jolie = {
            name = 'Jolie-Laide',
            text = {
                'Las {C:attention}#1#s{} sin mejorar otorgan',
                '{C:white,X:red}X#2#{} Multi al {C:attention}anotar'
            }
        },
        kettlebell = {
            name = 'Pesa Rusa',
            text = {
                    'Gana {C:mult}+#2#{} Multi si',
                    'sales de la {C:money}Tienda{}',
                    'sin {C:attention}comprar{}',
                    '{C:inactive}(Actualmente {C:mult}+#1#{C:inactive})'
            }
        },
        key_card = {
            name = 'Tarjeta de Acceso',
            text = {
                'Gana {C:money}#1#{} por cada {C:attention}#2#{} {C:attention}cartas{}',
                '{C:attention}de figuras{} que queden en tu',
                'baraja al final de la ronda'
            }
        },
        library = {
            name = 'Tarjeta de la Biblioteca',
            text = {
                '{C:mult}+#1#{} Multi por cada',
                '{C:attention}Consumible{} que poseas',
                '{C:inactive}(Actualmente {C:mult}+#2#{C:inactive} Multi)'
            }
        },
        lightning_bottle = {
            name = 'Relámpago Embotellado',
            text = {
                'Las {C:mult}#1#s{} siempre se',
                'sacan en tu {C:attention}mano inicial{} y se',
                '{C:attention}reactivan{} al ser {C:attention}anotadas{}'
            }
        },
        lineup = {
            name = 'Rueda de sospechosos',
            text = {
                'Obtienes una copia de {C:tarot}#3#{}',
                'si el {C:attention}primer descarte{} contiene',
                '{C:attention}#1#{} o más {C:attention}#2#',
            }
        },
        mechanics_grip = {
            name = 'Agarre del Mecánico',
            text = {
                'Las {C:attention}cartas jugadas{} tienen',
                'una prob. de {C:green}#1# en #2#{} de',
                'regresar a tu {C:attention}mano{}'
            }
        },
        meteor_shower = {
            name = 'Lluvia de Meteoros',
            text = {
                'Hay una prob. de {C:green}#3# en #4#{} de que',
                'aparezcan {C:attention}#1#s{} con {C:dark_edition}Edición{}',
                'en los {C:planet}#2#es{}'
            }
        },
        metronome = {
            name = 'Metrónomo',
            text = {
                'Otorga {C:chips}+#1#{} Fichas o {C:mult}+#2#{} Multi',
                '{C:attention}Cambia{} después de cada mano',
                '{C:inactive}(Actualmente {V:1}#3#{C:inactive})'
            }
        },
        minted_set = {
            name = 'Colección de Fichas',
            text = {
                '{C:white,X:red}X#1#{} Multi si tienes',
                'un Comodín {V:1}#2#{},',
                '{V:2}#3#{} y {V:3}Raro{C:attention}'
            }
        },
        negative_film = {
            name = 'Rollo Negativo',
            text = {
                'Las cartas del {V:1}#1#{} y {V:2}#2#{}',
                'pueden aparecer {C:attention}varias veces{} y',
                'tienen una prob. de {C:green}#3# en #4#{} de',
                'ser {C:dark_edition}#5#{}'
            }
        },
        one_chamber = {
            name = 'Última Bala',
            text = {
                '{C:white,X:red}X#1#{} Multi, sólo puedes',
                'jugar {C:attention}1{} {C:blue}Mano{}'
            }
        },
        old_sailor = {
            name = 'Viejo Marinero',
            text = {
                'Las {C:attention}#1#s{} tienen',
                'una prob. de {C:green}#3# en #4#{} de',
                'otorgar {C:money}#2#{} y una prob. de',
                '{C:green}#6# en #7#{} de otorgar {C:red}+#5#{} Multi',
            }
        },
        private_eye = {
            name = 'Detective Privado',
            text = {
                'Crea una {C:attention}Etiqueta{} al azar',
                'al derrotar una {C:attention}Ciega Jefe{}'
            }
        },
        shattered = {
            name = 'Comodín Roto',
            text = {
                'Las {C:attention}#1#s{} otorgan',
                "{C:white,X:red}X#2#{} Multi pero su prob.",
                'de {C:red}destruirse{} es de {C:green}#3# en #4#',
            }
        },
        slinky = {
            name = 'Slinky',
            text = {
                'Cada {C:attention}#1#{}, {C:attention}#2#{}, {C:attention}#3#{}, {C:attention}#4#{}, {C:attention}#5#{} y {C:attention}#6#{}',
                'jugado otorga {C:white,X:red}X#7#{} Multi al anotar',
                'y tiene una prob. de {C:green}#8# en #9#{}',
                'de ser {C:red}destruido{}'
            }
        },
        socket_set = {
            name = 'Set de Destornilladores',
            text = {
                'Las {C:attention}#2#s{} anotadas',
                "otorgan {C:red}+#1#{} Multi",
                '{C:inactive,s:0.8}(El rango cambia cada ronda)'
            }
        },
        subway_map = {
            name = 'Mapa del Metro',
            text = {
                'Gana {C:chips}+#1#{} Fichas por cada',
                '{C:attention}palo adicional{} en la mano anotada,',
                'se reinicia si solo anotas {C:attention}1 palo{}',
                '{C:inactive}(Actualmente {C:chips}+#2#{C:inactive} Fichas)'
            }
        },
        supermassive = {
            name = 'Agujero Supermasivo',
            text = {
                'Gana {C:white,X:red}X#1#{} Multi por cada',
                '{C:attention}mano de póker{} de nivel {C:planet}#2#{}',
                '{C:inactive}(Actualmente {C:white,X:red}X#3#{C:inactive} Multi)'
            }
        },
        sushi_rolls = {
            name = 'Rollos de Sushi',
            text = {
                'Las {C:green}Renovaciones{} cuestan {C:money}#2#{}',
                'en las próximas {C:attention}#1#{} tiendas'
            }
        },
        sushi_rolls_alt = {
            name = 'Rollos de Sushi',
            text = {
                'Las {C:green}Renovaciones{} cuestan {C:money}#2#',
                'para la próxima tienda'
            }
        },
        suspicious_tile = {
            name = 'Ficha Sospechosa',
            text = {
                'Las {C:attention}#1#es{} pueden usarse',
                'para completar {C:attention}Tercias{}, {C:attention}Póker{}',
                'y {C:attention}Escalera de Color{}'
            }
        },
        vespertine = {
            name = 'Vespertino',
            text = {
                'Otorgaa {C:mult}+#1#{} Multi por cada',
                '{C:attention}carta jugada{} en la',
                'mano anterior',
                '{C:inactive}(Actualmente {C:mult}+#2#{C:inactive} Multi)'
            }
        },
        walkman = {
            name = 'Walkman',
            text = {
                'Al completar {C:attention}#1#{} Apuestas,',
                'Retrocedes {C:red}-#2#{} Apuesta',
                '{C:inactive}(Actualmente #3#/#1#)'
            }
        },
        watercolour = {
            name = 'Comodín de Acuarela',
            text = {
                '{C:white,X:red}X#1#{} Multi si la {C:attention}primera{}',
                '{C:attention}carta anotada{} es de un palo',
                '{C:attention}distinto{} al de la carta anterior',
                '{C:inactive,s:0.9}(Último palo: {V:1,s:0.9}#2#{C:inactive,s:0.9})'
            }
        },
        wild_goose = {
            name = 'Ganso Jugando Póker',
            text = {
                'Una {C:attention}carta al azar{} en',
                '{C:attention}mano{} otorga {C:white,X:red}X#1#{} Multi',
                'al ser {C:attention}anotada{}'
            }
        },
        windchime = {
            name = 'Campana de Viento Prismática',
            text = {
                'Después de jugar {C:attention}#1# Cartas Mejoradas',
                'este Comodín gana {C:white,X:red}X#2#{} Multi',
                '{C:inactive,s:0.9}(Actualmente {C:white,X:red,s:0.9}X#3#{C:inactive,s:0.9} Multi)'
            }
        },
        wingman = {
            name = 'Wingman',
            text = {
                'Gana {C:white,X:red}X#3#{} Multi si la mano es',
                'exactamente un {C:attention}#1# de #2#{}, se',
                'reinicia al derrotar una {C:attention}Ciega Jefe{}',
                '{C:inactive,s:0.9}(Actualmente {C:white,X:red,s:0.9}X#4#{C:inactive,s:0.9} Multi)'
            }
        },
    },
    Voucher = {
        frequent_flier = {
            name = 'Viajero Frecuente',
            text = {
                'Ganas {C:money}#1#{} al',
                'omitir una {C:attention}Ciega'
            }
        },
        first_class = {
            name = 'Primera Clase',
            text = {
                'Ganas una {C:attention}Etiqueta{}',
                'cuando gastas {C:money}#1#{}',
                'en la tienda'
            }
        },
        viral = {
            name = 'Viral',
            text = {
                'Las {C:attention}Mejoras{} de cartas tienen',
                "una prob. de {C:green}#1# en #2#",
                'de propagarse a las {C:attention}cartas anotadas{}',
                'adyacentes al ser anotadas'
            }
        },
        biohazard = {
            name = 'Peligro Biológico',
            text = {
                'Las {C:dark_edition}Ediciones{} y {C:attention}Sellos{} tienen una',
                'prob. de {C:green}#1# en #2#{} de propagarse a las',
                '{C:attention}cartas anotadas{} adyacentes al ser anotadas'
            }
        },
    },
    Tag = {
        sparkle = {
            name = 'Etiqueta de Brillantina',
            text = {
                'Otorga una {C:attention}Mejora{} al azar',
                'a {C:attention}#1#{} cartas de tu baraja'
            }
        },
        meal_deal = {
            name = 'Etiqueta de Comida',
            text = {
                'Crea hasta {C:attention}#1#{}',
                '{C:attention}Comodines de Comida{}'
            }
        },
        lightning = {
            name = 'Etiqueta Relámpago',
            text = {
                'Tu próxima {C:attention}mano jugada',
                'se reactiva {C:attention}#1#{} veces'
            }
        },
    },
    Back = {
        orbit = {
            name = 'Baraja de Orbita',
            text = {
                'Gana {C:attention}#1#{} {C:planet,T:tag_orbital}#2#es{}',
                'al derrotar una {C:attention}Ciega Jefe',
                '{C:planet}#3#{}, {C:planet}#4#es',
                'y otros objetos relacionados',
                'ya no aparecen'
            }
        },
        jetsetter = {
            name = 'Baraja Viajera',
            text = {
                'Comienzas con los vales',
                '{T:v_monarchy_frequent_flier,C:attention}#1#',
                'y {T:v_monarchy_first_class,C:attention}#2#{}',
                'Aumenta el límite de',
                'interés a {C:money}#3#'
            }
        },
        sparkle = {
            name = 'Baraja Brillantina',
            text = {
                'Comienzas con los vales',
                '{T:v_magic_trick,C:attention}#1#',
                'e {T:v_illusion,C:attention}#2#{}',
                'Destruye {C:attention}#3# cartas{} al',
                'final de cada ronda'
            }
        },
        abberant = {
            name = 'Baraja Aberrante',
            text = {
                'Comienzas con {C:attention}#1# Cartas Mejoradas',
                'Las {C:attention}cartas mejoradas{} cambian',
                'de {C:attention}mejora{} al ser anotadas'
            }
        },
    },
    Blind = {
        slate = {
            name = 'La Pizarra',
            text = {
                'Las cartas {C:attention}Mejoradas{}',
                'son debilitadas'
            }
        },
        underdog = {
            name = 'El Desamparado ',
            text = {
                'Las cartas jugadas {C:attention}#1#{}',
                'o más veces son debilitadas'
            }
        },
        anchor = {
            name = 'El Ancla',
            text = {
                'Las cartas en la {C:attention}mitad inferior{}',
                'de tu baraja se sacan boca abajo'
            }
        },
        blur = {
            name = 'El Desvanecimiento',
            text = {
                'La puntuación requerida aumenta',
                'por cada Ciega omitida',
                'esta partida'
            }
        },
        loop = {
            name = 'El Bucle',
            text = {
                'Las cartas jugadas o descartadas',
                'tienen una prob. de {C:green}#1# en #2#',
                'de regresar a tu mano',
                'debilitadas'
            }
        },
    }
}

return Monarchy.Functions.prefix_loc_table(descriptions, loc_table)
