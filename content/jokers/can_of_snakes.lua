Monarchy.Joker({
    key = "can_of_snakes",
    pos = {x = 4, y = 0},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 100, mult = 12, dollars = 4}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips, card.ability.extra.mult, localize('$')..card.ability.extra.dollars}}
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            juice_card_until(card, function() return G.GAME.current_round.hands_played == 0 end, true)
        end
        if context.joker_main and G.GAME.current_round.hands_played == 0 then
            local key = pseudorandom_element({'chips','mult','dollars'}, 'monarchy_can_of_snakes')
            return {
                [key] = card.ability.extra[key]
            }
        end
    end,
})