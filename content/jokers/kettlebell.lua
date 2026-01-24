Monarchy.Joker({
    key = "kettlebell",
    pos = {x = 0, y = 1},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {mult = 0, gain = 5}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult, card.ability.extra.gain}}
    end,
    calculate = function(self, card, context)
        if context.starting_shop then
            card.ability.extra.no_bought = true
            print('set')
            juice_card_until(card, function() return card.ability.extra.no_bought end)
        end
        if context.buying_card then
            card.ability.extra.no_bought = nil
        end
        if context.ending_shop and card.ability.extra.no_bought then
            card.ability.extra.no_bought = nil
            SMODS.scale_card(card,{
                ref_table = card.ability.extra,
                ref_value = 'mult',
                scalar_value = 'gain',
                message_key = 'a_mult',
                message_colour = G.C.RED
            })
            return nil, true
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,
})