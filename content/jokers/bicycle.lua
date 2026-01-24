Monarchy.Joker({
    key = "bicycle",
    pos = {x = 4, y = 4},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {hand = 'Straight', ranks = {'Ace', '5'}, mult = 20}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult, localize(card.ability.extra.hand, 'poker_hands'), localize(card.ability.extra.ranks[1], 'ranks'), localize(card.ability.extra.ranks[2], 'ranks')}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.hand]) then
            if Monarchy.hand_contains_rank(context.scoring_hand, card.ability.extra.ranks[1]) and Monarchy.hand_contains_rank(context.scoring_hand, card.ability.extra.ranks[2]) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
})