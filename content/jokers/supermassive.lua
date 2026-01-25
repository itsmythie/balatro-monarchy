Monarchy.Joker({
    key = "supermassive",
    pos = {x = 1, y = 4},
    rarity = 3,
    cost = 6,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {xmult = 1, gain = 1, level = 5}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.gain, card.ability.extra.level, card.ability.extra.xmult + card.ability.extra.gain * self:count_poker_hands(card)}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult + card.ability.extra.gain * self:count_poker_hands(card)
            }
        end
    end,
    count_poker_hands = function(self, card)
        local count = 0
        for name, hand in pairs(G.GAME and G.GAME.hands or {}) do
            if SMODS.is_poker_hand_visible(name) and hand.level >= card.ability.extra.level then
                count = count + 1
            end
        end
        return count
    end
})