Monarchy.Joker({
    key = "key_card",
    pos = {x = 1, y = 0},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {dollars = 1, faces = 3, faces_left = 0}},
    loc_vars = function(self, info_queue, card)
        return {vars = {localize('$')..card.ability.extra.dollars, card.ability.extra.faces}}
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            card.ability.extra.faces_left = 0
            for _, p_card in ipairs(G.deck.cards) do
                if p_card:is_face() then card.ability.extra.faces_left = card.ability.extra.faces_left + 1 end
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return math.floor(card.ability.extra.faces_left / card.ability.extra.faces) * card.ability.extra.dollars
    end,
})