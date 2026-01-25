local loc_table = {
    misc = {
        dictionary = {
            monarchy_returned = 'Returned!',
            monarchy_enhanced = 'Enhanced!',
            monarchy_chips = 'Chips',
            monarchy_mult = 'Mult',
            monarchy_switched = 'Switched!',
            monarchy_air_freshener_flavour_54 = 'Flowers',
            monarchy_air_freshener_flavour_64 = 'Jimbo',
            monarchy_air_freshener_flavour_74 = 'Steven',
            monarchy_air_freshener_flavour_84 = 'Todd',
            monarchy_air_freshener_flavour_94 = 'Blueberries',
            monarchy_air_freshener_flavour_55 = 'Popcorn',
            monarchy_air_freshener_flavour_65 = 'Bananas',
            monarchy_air_freshener_flavour_75 = 'Ice Cream',
            monarchy_air_freshener_flavour_85 = 'Ramen',
            monarchy_air_freshener_flavour_95 = 'Eels',
            monarchy_air_freshener_flavour_56 = 'The 80s',
            monarchy_air_freshener_flavour_66 = 'Coffee',
            monarchy_air_freshener_flavour_76 = 'Burning',
            monarchy_air_freshener_flavour_86 = 'Sweat',
            monarchy_air_freshener_flavour_96 = 'Eggs',
            monarchy_socket_set_default = 'numbered card',
            monarchy_tag_added = 'Tag!',
            monarchy_lineup_trigger = 'flavour text pls',
            monarchy_watercolour_default = 'None played',
            monarchy_watercolour_wild = 'Wild Suit',
            monarchy_sushi_rolls_set = 'flavour text pls'
        }
    },
    descriptions = {}
}

local descriptions = {
    Joker = {
        air_freshener = {
            name = 'Air Freshener',
            text = {
                'When {C:attention}Blind{} is selected,',
                'every {C:attention}card{} in deck',
                'gains {C:blue}+#1#{} Chips permanently',
                '{C:inactive,s:0.8}Smells like {C:dark_edition,s:0.8}#2#{C:inactive,s:0.8}...'
            }
        },
        arcade_stub = {
            name = 'Arcade Stub',
            text = {
                'Gains {C:chips}+#1#{} Chips for each',
                '{C:attention}voucher{} purchased this run',
                '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)',
            }
        },
        asteroid_belt = {
            name = 'Asteroid Belt',
            text = {
                'Gives {C:chips}+#1#{} Chips for each',
                '{C:attention}poker hand{} at level {C:attention}#2#',
                '{C:inactive}(Currently {C:blue}+#3#{C:inactive} Chips)'
            }
        },
        bees_threes = {
            name = 'Bee\'s Threes',
            text = {
                'Each played {C:attention}#1#{} gives',
                '{C:chips}+#2#{} Chips and has a ',
                '{C:green}#3# in #4#{} chance to give {C:money}#5#'
            }
        },
        bicycle = {
            name = 'Bicycle',
            text = {
                '{C:mult}+#1#{} Mult if played',
                '{C:attention}#2#{} contains an',
                '{C:attention}#3#{} and a {C:attention}#4#',
            }
        },
        the_break = {
            name = 'The Break',
            text = {
                'Gives between {C:white,X:red}X#1#{} Mult',
                'and {C:white,X:red}X#2#{} Mult on',
                '{C:attention}first hand{} of round'
            }
        },
        burn = {
            name = 'Burn',
            text = {
                'When {C:attention}Blind{} is selected,',
                'destroy the {C:attention}top card{}',
                'of your deck and',
                'earn {C:money}#1#'
            }
        },
        can_of_snakes = {
            name = 'Can of Snakes',
            text = {
                '{C:blue}+#1#{} Chips, {C:red}+#2#{} Mult',
                'or earn {C:money}#3#{} on',
                '{C:attention}first hand{} of round'
            }
        },
        daifugo = {
            name = 'Daifugo',
            text = {
                '{C:red}Discard{} the {C:attention}lowest{} ranked card',
                'from your hand and gain {C:money}#1#{}',
                'when playing a hand'
            }
        },
        gift_receipt = {
            name = 'Gift Receipt',
            text = {
                'When a {C:attention}Joker{} is {C:attention}sold{},',
                'permanently add {C:attention}double',
                'its sell value to this {C:chips}Chips',
                '{C:inactive}(Currently {C:blue}+#1#{C:inactive})'
            }
        },
        gummy_bears = {
            name = 'Gummy Bears',
            text = {
                'For the next {C:attention}#1#{} hands,',
                'all {C:attention}scored{} cards have a',
                '{C:green}#2# in #3#{} chance to gain',
                'a {C:attention}random Enhancement'
            }
        },
        gummy_bears_alt = {
            name = 'Gummy Bears',
            text = {
                'For the next hand,',
                'all {C:attention}scored{} cards have a',
                '{C:green}#2# in #3#{} chance to gain',
                'a {C:attention}random Enhancement'
            }
        },
        hailstorm = {
            name = 'Hailstorm',
            text = {
                'When a {C:attention}#1#{} scores,',
                'each {C:attention}other scored card{}',
                'gives {C:chips}+#2#{} Chips'
            }
        },
        iron_cross = {
            name = 'Iron Cross',
            text = {
                'Played {C:attention}#1#s{} gain',
                '{C:white,X:red}X#2#{} Mult for their',
                'effect when they score'
            }
        },
        kettlebell = {
            name = 'Kettlebell',
            text = {
                    'This Joker gains {C:mult}+#2#{} Mult',
                    'if you exit a shop',
                    '{C:attention}without buying{} any cards',
                    '{C:inactive}(Currently {C:mult}+#1#{C:inactive})'
            }
        },
        key_card = {
            name = 'Key Card',
            text = {
                'Earn {C:money}#1#{} for every',
                '{C:attention}#2# face{} cards left in your',
                'deck at end of round'
            }
        },
        library = {
            name = 'Library Card',
            text = {
                '{C:mult}+#1#{} Mult for each card', 
                'held in your {C:attention}Consumables{}',
                '{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)'
            }
        },
        lightning_bottle = {
            name = 'Lightning Bottle',
            text = {
                '{C:attention}#1#s{} are always drawn',
                'in your {C:attention}opening hand',
                'and retrigger when {C:attention}played'
            }
        },
        lineup = {
            name = 'Lineup',
            text = {
                'Create {C:tarot}#3#',
                'if {C:attention}first discard{} contains',
                '{C:attention}#1#{} or more {C:attention}#2#',
            }
        },
        mechanics_grip = {
            name = 'Mechanic\'s Grip',
            text = {
                'Played {C:attention}cards{} have a',
                '{C:green}#1# in #2#{} chance to',
                'return to your {C:attention}hand'
            }
        },
        metronome = {
            name = 'Metronome',
            text = {
                'Gives {C:chips}+#1#{} Chips or {C:mult}+#2#{} Mult',
                '{C:attention}Switches{} after every hand',
                '{C:inactive}(Currently {V:1}#3#{C:inactive})'
            }
        },
        minted_set = {
            name = 'Minted Set',
            text = {
                '{C:white,X:red}X#1#{} Mult if you own',
                'a {V:1}#2#{}, an {V:2}#3#',
                'and a {V:3}#4#{C:attention} Joker'
            }
        },
        negative_film = {
            name = 'Negative Film',
            text = {
                '{V:1}#1#{} and {V:2}#2#{} cards',
                'can appear {C:attention}more than once',
                'and have a {C:green}#3# in #4#{} chance',
                'of being {C:dark_edition}#5#'
            }
        },
        old_sailor = {
            name = 'Old Sailor',
            text = {
                '{C:attention}#1#s{} have a',
                '{C:green}#3# in #4#{} chance',
                'to win {C:money}#2#{} and',
                'a {C:green}#6# in #7#{} chance',
                'for {C:red}+#5#{} Mult'
            }
        },
        private_eye = {
            name = 'Private Eye',
            text = {
                'Create a random {C:attention}Tag',
                'when {C:attention}Boss Blind{} is defeated'
            }
        },
        shattered = {
            name = 'Shattered Joker',
            text = {
                '{C:attention}#1#s{} give {C:white,X:red}X#2#{} Mult',
                'and have a {C:green}#3# in #4#',
                'chance to destroy'
            }
        },
        socket_set = {
            name = 'Socket Set',
            text = {
                'Scored {C:attention}#2#s{} give {C:red}+#1#{} Mult',
                '{C:inactive,s:0.8}(Rank changes each round)'
            }
        },
        subway_map = {
            name = 'Subway Map',
            text = {
                'Gains {C:chips}+#1#{} Chips for every',
                '{C:attention}additional suit{} in scored hand,',
                'resets if only {C:attention}1 suit{} scored',
                '{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)'
            }
        },
        supermassive = {
            name = 'Supermassive',
            text = {
                'Gains {C:white,X:red}X#1#{} Mult for each',
                '{C:attention}poker hand{} above level {C:attention}#2#',
                '{C:inactive}(Currently {C:white,X:red}X#3#{C:inactive} Mult)'
            }
        },
        sushi_rolls = {
            name = 'Sushi Rolls',
            text = {
                '{C:green}Rerolls{} start at {C:money}#2#',
                'for the next {C:attention}#1#{} shops'
            }
        },
        sushi_rolls_alt = {
            name = 'Sushi Rolls',
            text = {
                '{C:green}Rerolls{} start at {C:money}#2#',
                'for the next shop'
            }
        },
        watercolour = {
            name = 'Watercolour Joker',
            text = {
                '{C:white,X:red}X#1#{} Mult if',
                '{C:attention}first scored card{} is a',
                '{C:attention}different{} suit to the last hand\'s',
                '{C:inactive,s:0.9}(Last suit: {V:1,s:0.9}#2#{C:inactive,s:0.9})'
            }
        },
    }
}

return Monarchy.prefix_loc_table(descriptions, loc_table)