Monarchy.Joker({
    key = "gift_receipt",
    pos = {x = 2, y = 0},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 0}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.selling_card and context.card.ability.set == 'Joker' then
            SMODS.scale_card(card, {
                ref_table = card.ability.extra,
                ref_value = 'chips',
                scalar_table = context.card,
                scalar_value = 'cost',
                scaling_message = {
                    message = localize('monarchy_returned'),
                    colour = G.C.BLUE
                }
            })
            return nil, true
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
})