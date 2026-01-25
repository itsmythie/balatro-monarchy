Monarchy.Joker({
    key = "iron_cross",
    pos = {x = 9, y = 0},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {gain = 0.1}},
    loc_vars = function(self, info_queue, card)
        return {vars = {localize({set = 'Enhanced', key = 'm_steel', type = 'name_text'}), card.ability.extra.gain}}
    end,
    calculate = function(self, card, context)
        if context.before then
            for _, pcard in ipairs(context.scoring_hand) do
                if SMODS.has_enhancement(pcard, 'm_steel') then
                    juice_card(card)
                    SMODS.scale_card(pcard, {
                        ref_table = pcard.ability,
                        ref_value = 'h_x_mult',
                        scalar_table = card.ability.extra,
                        scalar_value = 'gain',
                        message_key = 'a_xmult',
                        message_colour = G.C.RED
                    })
                end
            end
            return nil, true
        end
    end,
})