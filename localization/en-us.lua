local loc_table = {
    misc = {
        dictionary = {
            monarchy_returned = 'Returned!',
            monarchy_enhanced = 'Enhanced!',
            monarchy_chips = 'Chips',
            monarchy_mult = 'Mult',
            monarchy_switched = 'Switched!',
            monarchy_air_freshener_flavour_56 = 'Flowers',
            monarchy_air_freshener_flavour_66 = 'Jimbo',
            monarchy_air_freshener_flavour_76 = 'Steven',
            monarchy_air_freshener_flavour_86 = 'Todd',
            monarchy_air_freshener_flavour_96 = 'Blueprint',
            monarchy_air_freshener_flavour_57 = 'Popcorn',
            monarchy_air_freshener_flavour_67 = 'Bananas',
            monarchy_air_freshener_flavour_77 = 'Ice Cream',
            monarchy_air_freshener_flavour_87 = 'Ramen',
            monarchy_air_freshener_flavour_97 = 'Eels',
            monarchy_air_freshener_flavour_58 = 'Flowers',
            monarchy_air_freshener_flavour_68 = 'Flowers',
            monarchy_air_freshener_flavour_78 = 'Flowers',
            monarchy_air_freshener_flavour_88 = 'Flowers',
            monarchy_air_freshener_flavour_98 = 'Eggs',
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
                'Each played {C:attention}#1#{} gives {C:chips}+#2#{} Chips',
                'and has a {C:green}#3# in #4#{} chance to give {C:money}#5#'
            }
        },
        bicycle = {
            name = 'Bicycle',
            text = {
                '{C:mult}+#1#{} Mult if played {C:attention}#2#',
                'contains an {C:attention}#3#{} and a {C:attention}#4#',
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
                '{C:blue}+#1#{} Chips, {C:red}+#2#{} Mult, or earn {C:money}#3#{}',
                'on {C:attention}first hand{} of round'
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
        kettlebell = {
            name = 'Kettlebell',
            text = {
                {
                    '{C:mult}+#1#{} Mult'
                },{
                    'This Joker gains {C:mult}+#2#{} Mult',
                    'if you exit a shop',
                    '{C:attention}without buying{} any cards'
                }
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
        metronome = {
            name = 'Metronome',
            text = {
                'Gives {C:chips}+#1#{} Chips or {C:mult}+#2#{} Mult',
                '{C:attention}Switches{} after every hand',
                '{C:inactive}(Currently {V:1}#3#{C:inactive})'
            }
        },
    }
}

return Monarchy.prefix_loc_table(descriptions, loc_table)