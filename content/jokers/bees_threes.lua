Monarchy.Joker({
    key = "bees_threes",
    pos = {x = 3, y = 0},
    rarity = 1,
    cost = 3,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {rank = 3, chips = 33, chance = 3, dollars = 3}},
    loc_vars = function(self, info_queue, card)
        local num, den = SMODS.get_probability_vars(card, 1, card.ability.extra.chance, 'monarchy_bees_threes')
        return {vars = {localize(tostring(card.ability.extra.rank), 'ranks'), card.ability.extra.chips, num, den, localize('$')..card.ability.extra.dollars}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == card.ability.extra.rank then
            local ret = {chips = card.ability.extra.chips}
            if SMODS.pseudorandom_probability(card, 'monarchy_bees_threes', 1, card.ability.extra.chance) then
                G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.dollars
                G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = G.GAME.dollar_buffer - card.ability.extra.dollars; return true end)}))
                ret.dollars = card.ability.extra.dollars
            end          
            return ret
        end
    end,
})