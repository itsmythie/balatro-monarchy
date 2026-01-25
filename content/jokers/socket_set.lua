Monarchy.Joker({
    key = "socket_set",
    pos = {x = 5, y = 1},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {mult = 6}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult, card.ability.extra.rank and localize(card.ability.extra.rank, 'ranks') or localize('monarchy_socket_set_default')}}
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.rank = card.ability.extra.rank or Monarchy.rank_from_deck(nil, true)
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval then
            card.ability.extra.rank = Monarchy.rank_from_deck(nil, true)
            return {
                message = localize(card.ability.extra.rank, 'ranks')
            }
        end
        if context.individual and context.cardarea == G.play and context.other_card:get_id() == SMODS.Ranks[card.ability.extra.rank].id then
            return {
                mult = card.ability.extra.mult
            }
        end
    end,
})