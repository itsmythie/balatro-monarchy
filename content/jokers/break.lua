Monarchy.Joker({
    key = "the_break",
    pos = {x = 9, y = 1},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {low = 15, high = 30, divisor = 10}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.low/card.ability.extra.divisor, card.ability.extra.high/card.ability.extra.divisor}}
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            juice_card_until(card, function() return G.GAME.current_round.hands_played == 0 end, true)
        end
        if context.joker_main and G.GAME.current_round.hands_played == 0 then
            return {
                xmult = pseudorandom('monarchy_break', card.ability.extra.low, card.ability.extra.high)/card.ability.extra.divisor
            }
        end
    end,
})