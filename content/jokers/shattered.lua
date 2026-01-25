Monarchy.Joker({
    key = "shattered",
    pos = {x = 5, y = 2},
    soul_pos = {x = 6, y = 2},
    soul_pos_2 = {x = 7, y = 2},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {xmult = 2.5, odds = 3}},
    loc_vars = function(self, info_queue, card)
        local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'monarchy_shattered')
        return {vars = {localize({set = 'Enhanced', key = 'm_glass', type = 'name_text'}), card.ability.extra.xmult, num, denom}}
    end,
    set_sprites = function(self, card)
        card.children.floating_sprite_2 = SMODS.create_sprite(card.T.x, card.T.y, card.T.w, card.T.h, self.atlas, self.soul_pos_2)
        card.children.floating_sprite_2.role.draw_major = card
        card.children.floating_sprite_2.states.hover.can = false
        card.children.floating_sprite_2.states.click.can = false
    end,
    add_to_deck = function(self, card, from_debuff)
        for _, _card in ipairs(G.playing_cards) do
            if SMODS.has_enhancement(_card, 'm_glass') then
                _card.ability.Xmult = card.ability.extra.xmult
                _card.ability.x_mult = card.ability.extra.xmult
                _card.ability.extra = card.ability.extra.odds
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, _card in ipairs(G.playing_cards) do
            if SMODS.has_enhancement(_card, 'm_glass') then
                _card.ability.x_mult = G.P_CENTERS.m_glass.config.Xmult
                _card.ability.Xmult = G.P_CENTERS.m_glass.config.Xmult
                _card.ability.extra = G.P_CENTERS.m_glass.config.extra
            end
        end
    end,
    calculate = function(self, card, context)
        if context.setting_ability and context.new == 'm_glass' then
            context.other_card.ability.Xmult = card.ability.extra.xmult
            context.other_card.ability.x_mult = card.ability.extra.xmult
            context.other_card.ability.extra = card.ability.extra.odds
        end
    end,
})

SMODS.draw_ignore_keys.floating_sprite_2 = true

SMODS.DrawStep {
    key = 'floating_sprite_2',
    order = 60,
    func = function(self)
        if self.children.floating_sprite_2 then
            local scale_mod = 0.07 + 0.02*math.sin(1.3*G.TIMERS.REAL) + 0.00*math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL))*math.pi*14)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^3
            local rotate_mod = 0.05*math.sin(2.124*G.TIMERS.REAL) + 0.00*math.sin((G.TIMERS.REAL)*math.pi*4)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^2

            self.children.floating_sprite_2:draw_shader('dissolve',0, nil, nil, self.children.center,scale_mod, rotate_mod,nil, 0.1 + 0.03*math.sin(1.8*G.TIMERS.REAL),nil, 0.6)
            self.children.floating_sprite_2:draw_shader('dissolve', nil, nil, nil, self.children.center, scale_mod, rotate_mod)
            
            if self.edition then 
                local edition = G.P_CENTERS[self.edition.key]
                if edition.apply_to_float and self.children.floating_sprite_2 then
                    self.children.floating_sprite_2:draw_shader(edition.shader, nil, nil, nil, self.children.center, scale_mod, rotate_mod)                    
                end
            end
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}