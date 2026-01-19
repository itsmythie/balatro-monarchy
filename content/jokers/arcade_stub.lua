Monarchy.Joker({
    key = "arcade_stub",
    pos = {x = 2, y = 5},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 25, gain = 25}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.gain, (G.vouchers and #G.vouchers.cards or 0) * card.ability.extra.gain + card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = (G.vouchers and #G.vouchers.cards or 0) * card.ability.extra.gain + card.ability.extra.chips
            }
        end
        if context.buying_card and context.card.ability.set == 'Voucher' then
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.BLUE
            }
        end
    end,
})