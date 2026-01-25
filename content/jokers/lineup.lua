Monarchy.Joker({
    key = "lineup",
    pos = {x = 0, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {requirement = 3}},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.requirement, localize('k_face_cards'), localize({set = 'Tarot', key = 'c_hanged_man', type = 'name_text'})}}
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            juice_card_until(card, function() return G.GAME.current_round.discards_used == 0 end, true)
        end
        if context.pre_discard and G.GAME.current_round.discards_used == 0 then
            local faces = 0
            for _, p_card in ipairs(context.full_hand) do
                if p_card:is_face() then faces = faces + 1 end
            end
            if faces >= card.ability.extra.requirement then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after', delay = 0.4,
                    func = function()
                        SMODS.add_card({set = 'Tarot', key = 'c_hanged_man'})
                        return true
                    end
                }))
                return {
                    message = localize('monarchy_lineup_trigger'),
                    colour = G.ARGS.LOC_COLOURS.tarot
                }
            end
        end
    end,
})