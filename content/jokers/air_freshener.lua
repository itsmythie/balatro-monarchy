Monarchy.Joker({
    key = "air_freshener",
    pos = {x = 5, y = 4},
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {gain = 2}},
    set_sprites = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function() 
                card.ability.extra.x_pos = card.ability.extra.x_pos or math.random(5, 9)
                card.ability.extra.y_pos = card.ability.extra.y_pos or math.random(4, 6)
                card.children.center:set_sprite_pos({x=card.ability.extra.x_pos, y=card.ability.extra.y_pos})
                return true
            end
        }))
    end,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.gain, localize('monarchy_air_freshener_flavour_'..card.ability.extra.x_pos..card.ability.extra.y_pos)}}
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            for _, p_card in ipairs(G.deck.cards) do
                SMODS.scale_card(p_card, {
                    ref_table = p_card.ability,
                    ref_value = 'perma_bonus',
                    scalar_table = card.ability.extra,
                    scalar_value = 'gain',
                    no_message = true
                })
            end
            return {
                message = localize('k_upgrade_ex'),
                message_card = G.deck.cards[1],
                juice_card = card
            }
        end 
    end,
})