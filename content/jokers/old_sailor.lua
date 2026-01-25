Monarchy.Joker({
    key = "old_sailor",
    pos = {x = 4, y = 1},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {dollars = 4, mult = 60, dol_odds = 5, mult_odds = 20}},
    loc_vars = function(self, info_queue, card)
        local d_num, d_denom = SMODS.get_probability_vars(card, 1, card.ability.extra.dol_odds, 'monarchy_old_sailor_dollars')
        local m_num, m_denom = SMODS.get_probability_vars(card, 1, card.ability.extra.mult_odds, 'monarchy_old_sailor_mult')
        return {vars = {localize({set = 'Enhanced', key = 'm_lucky', type = 'name_text'}), localize('$')..card.ability.extra.dollars, d_num, d_denom, card.ability.extra.mult, m_num, m_denom}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_lucky') then
            local dollar_check = SMODS.pseudorandom_probability(card, 'monarchy_old_sailor_dollars', 1, card.ability.extra.dol_odds)
            local mult_check = SMODS.pseudorandom_probability(card, 'monarchy_old_sailor_mult', 1, card.ability.extra.mult_odds)
            if dollar_check or mult_check then
                return {
                    dollars = dollar_check and card.ability.extra.dollars,
                    extra = {
                        mult = mult_check and card.ability.extra.mult
                    }
                }
            end
        end
    end,
})