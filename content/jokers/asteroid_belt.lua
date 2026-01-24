Monarchy.Joker({
    key = "asteroid_belt",
    pos = {x = 5, y = 0},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 12, level = 1}},
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.chips, card.ability.extra.level, card.ability.extra.chips * self:count_poker_hands(card)}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips * self:count_poker_hands(card)
            }
        end
    end,
    count_poker_hands = function(self, card)
        local count = 0
        for name, hand in pairs(G.GAME and G.GAME.hands or {}) do
            if SMODS.is_poker_hand_visible(name) and hand.level == card.ability.extra.level then
                count = count + 1
            end
        end
        return count
    end
})