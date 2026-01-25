Monarchy.Joker({
    key = "subway_map",
    pos = {x = 8, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chips = 0, gain = 6}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.gain, card.ability.extra.chips}}
    end,
    count_suits = function(self, hand)
        local suits = {}
        for _, pcard in ipairs(hand) do
            if not SMODS.has_no_suit(pcard) then suits[pcard.base.suit] = (suits[pcard.base.suit] or 0) + 1 end
        end
        local count = 0
        for _, _ in pairs(suits) do
            count = count + 1
        end
        return count
    end,
    calculate = function(self, card, context)
        if context.before then
            local suits = self:count_suits(context.scoring_hand)
            if suits > 1 then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = 'chips',
                    scalar_value = 'gain',
                    operation = function(ref_table, ref_value, initial, scaling)
                        ref_table[ref_value] = initial + (suits-1)*scaling
                    end,
                    scaling_message = {
                        message = localize{type = 'variable', key = 'a_chips', vars = {card.ability.extra.gain * (suits - 1)}},
                        colour = G.C.BLUE,
                    }
                })
                return nil, true
            elseif suits == 1 then
                card.ability.extra.chips = 0
                return {
                    message = localize('k_reset')
                }
            end
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
})