Monarchy.Joker({
    key = "hailstorm",
    pos = {x = 2, y = 5},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 5}},
    loc_vars = function(self, info_queue, card)
        return {vars = {localize({set = 'Enhanced', key = 'm_bonus', type = 'name_text'}), card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_bonus') and #context.scoring_hand > 1 then
            return {
                func = function()
                    for _, p_card in ipairs(context.scoring_hand) do
                        if p_card ~= context.other_card then
                            juice_card(card)
                            SMODS.calculate_effect({chips = card.ability.extra.chips, message_card = p_card, juice_card = context.other_card}, card)
                        end
                    end
                end
            }
        end
    end,
})