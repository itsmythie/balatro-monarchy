Monarchy.Joker({
    key = "watercolour",
    pos = {x = 1, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {xmult = 2}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.xmult, card.ability.extra.wild_suit and localize('monarchy_watercolour_wild') or card.ability.extra.last_suit and localize(card.ability.extra.last_suit, 'suits_plural') or localize('monarchy_watercolour_default'), colours = {G.C.SUITS[card.ability.extra.last_suit] or G.ARGS.LOC_COLOURS.inactive}}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local c1 = context.scoring_hand[1]
            local trigger = card.ability.extra.wild_suit or SMODS.has_any_suit(c1) or card.ability.extra.last_suit and not c1:is_suit(card.ability.extra.last_suit)
            card.ability.extra.last_suit = not SMODS.has_no_suit(c1) and c1.base.suit
            card.ability.extra.wild_suit = SMODS.has_any_suit(c1)
            if trigger then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
})