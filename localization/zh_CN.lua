local loc_table = {
    misc = {
        dictionary = {
            monarchy_returned = '退回！',
            monarchy_enhanced = '增强！',
            monarchy_chips = '筹码',
            monarchy_mult = '倍率',
            monarchy_switched = '切换！',
            monarchy_air_freshener_flavour_54 = '鲜花',
            monarchy_air_freshener_flavour_64 = '金宝',
            monarchy_air_freshener_flavour_74 = '托德',
            monarchy_air_freshener_flavour_84 = '史蒂文',
            monarchy_air_freshener_flavour_94 = '蓝莓',
            monarchy_air_freshener_flavour_55 = '爆米花',
            monarchy_air_freshener_flavour_65 = '香蕉',
            monarchy_air_freshener_flavour_75 = '冰淇淋',
            monarchy_air_freshener_flavour_85 = '拉面',
            monarchy_air_freshener_flavour_95 = '鳗鱼',
            monarchy_air_freshener_flavour_56 = '八〇年代',
            monarchy_air_freshener_flavour_66 = '咖啡',
            monarchy_air_freshener_flavour_76 = '焦煳',
            monarchy_air_freshener_flavour_86 = '汗液',
            monarchy_air_freshener_flavour_96 = '鸡蛋',
            monarchy_socket_set_default = '数字牌',
            monarchy_tag_added = '标签！',
            monarchy_lineup_trigger = '请输入文本',
            monarchy_watercolour_default = '（尚未打出）',
            monarchy_watercolour_wild = '万能花色',
            monarchy_sushi_rolls_set = '请输入文本',
            monarchy_walkman_ante_loss = '底注-1',
            monarchy_clasped_cloak = '莫问出处！',
            monarchy_wild_goose = '大鹅！',
            monarchy_slinky = '断掉了！',
            monarchy_viral_spread = '感染！',
            monarchy_abberant_trigger = '反常！',
            monarchy_anchor_active = '起锚！',
            monarchy_anchor_primed = '下锚！',
        },
        collab_palettes = {
            monarchy_spades = {
                '低对比度色彩',
                '高对比度色彩',
            },
            monarchy_clubs = {
                '低对比度色彩',
                '高对比度色彩',
            },
            monarchy_hearts = {
                '低对比度色彩',
                '高对比度色彩',
            },
            monarchy_diamonds = {
                '低对比度色彩',
                '高对比度色彩',
            }
        }
    },
    descriptions = {}
}

local descriptions = {
    Joker = {
        air_freshener = {
            name = '车载香囊',
            text = {
                '选择{C:attention}盲注{}后',
                '牌组中的每张{C:attention}卡牌',
                '筹码永久{C:blue}+#1#',
                '{C:dark_edition,s:0.8}#2#{C:inactive,s:0.8}香型……'
            }
        },
        anchor = {
            name = '千钧铁锚',
            text = {
                '{C:attention}下半堆{}牌组中的牌',
                '计分时给予{C:mult}+#1#{}倍率'
            }
        },
        arcade_stub = {
            name = '游戏厅彩票',
            text = {
                '本赛局内',
                '每购买过一张{C:attention}优惠券',
                '获得{C:chips}+#1#{}筹码',
                '{C:inactive}（当前为{C:chips}+#2#{C:inactive}筹码）',
            }
        },
        asteroid_belt = {
            name = '小行星带',
            text = {
                '每有一种{C:attention}牌型{}为{C:attention}#2#{}级',
                '给予{C:chips}+#1#{}筹码',
                '{C:inactive}（当前为{C:blue}+#3#{C:inactive}筹码）'
            }
        },
        bees_threes = {
            name = '3人来蜂',
            text = {
                '打出的每张{C:attention}#1#',
                '给予{C:chips}+#2#{}筹码',
                '且有{C:green}#3#/#4#{}的几率',
                '给予{C:money}$#5#'
            }
        },
        bicycle = {
            name = '二轮车',
            text = {
                '若打出的{C:attention}#2#',
                '包含{C:attention}#3#{}和{C:attention}#4#',
                '{C:mult}+#1#{}倍率',
            }
        },
        the_break = {
            name = '开球',
            text = {
                '每回合{C:attention}首次出牌',
                '给予{C:white,X:red}X#1#{}-{C:white,X:red}X#2#{}倍率'
            }
        },
        burn = {
            name = '烧',
            text = {
                '选择{C:attention}盲注{}后',
                '摧毁牌组{C:attention}顶部的牌',
                '并赚取{C:money}#1#'
            }
        },
        can_of_snakes = {
            name = '整蛊蛇筒',
            text = {
                '每回合{C:attention}首次出牌{}时',
                '{C:blue}+#1#{}筹码，或{C:red}+#2#{}倍率',
                '或赚取{C:money}#3#',
            }
        },
        clasped_cloak = {
            name = '黑袍秘客',
            text = {
                '每张{C:attention}留手牌',
                '获得{C:white,X:red}X#1#{}倍率',
                '{C:inactive,s:0.95}（计分后重置）'
            }
        },
        daifugo = {
            name = '大富豪',
            text = {
                '出牌后{C:red}弃掉{}手牌中',
                '点数{C:attention}最小{}的牌',
                '并获得{C:money}#1#'
            }
        },
        defragment = {
            name = '碎片整理',
            text = {
                '弃牌后',
                '手牌上限{C:attention}+#1#',
                '{C:inactive,s:0.9}（回合结束时重置）'
            }
        },
        gift_receipt = {
            name = '皱巴巴小票',
            text = {
                '{C:attention}售出小丑牌{}后',
                '获得等同于其售价之',
                '{C:attention}两倍{}的{C:chips}筹码',
                '{C:inactive}（当前为{C:chips}+#1#{C:inactive}筹码）'
            }
        },
        gold_cables = {
            name = '镀金线缆',
            text = {
                '重新触发',
                '紧邻{C:attention}#1#{}的',
                '所有{C:attention}计分牌'
            }
        },
        gummy_bears = {
            name = '小熊软糖',
            text = {
                '下{C:attention}#1#{}次出牌中的',
                '所有{C:attention}计分{}牌',
                '有{C:green}#2#/#3#{}的几率',
                '获得{C:attention}随机增强'
            }
        },
        gummy_bears_alt = {
            name = '小熊软糖',
            text = {
                '下次出牌中的',
                '所有{C:attention}计分{}牌',
                '有{C:green}#2#/#3#{}的几率',
                '获得{C:attention}随机增强'
            }
        },
        gutshot = {
            name = '卡顺听牌',
            text = {
                '若出牌包含{C:attention}#2#',
                '{C:attention}中位点数{}的牌',
                '会额外触发{C:attention}#1#{}次'
            }
        },
        hailstorm = {
            name = '雹暴',
            text = {
                '{C:attention}#1#{}计分时',
                '{C:attention}其余{}每张{C:attention}计分牌',
                '给予{C:chips}+#2#{}筹码'
            }
        },
        iron_cross = {
            name = '铁十字',
            text = {
                '打出的{C:attention}#1#{}计分时',
                '其加成效果提升{C:white,X:red}X#2#'
            }
        },
        jolie = {
            name = '气质胜皮囊',
            text = {
                '{C:attention}无增强{}的{C:attention}#1#计分{}时',
                '给予{C:white,X:red}X#2#{}倍率'
            }
        },
        kettlebell = {
            name = '壶铃',
            text = {
                    '若离开商店而{C:attention}不购买{}任何商品',
                    '本牌获得{C:mult}+#2#{}倍率',
                    '{C:inactive}（当前为{C:mult}+#1#{C:inactive}倍率）'
            }
        },
        key_card = {
            name = '钥匙卡',
            text = {
                '回合结束时，牌组中',
                '每剩{C:attention}#2#{}张{C:attention}人头{}牌',
                '赚取{C:money}#1#'
            }
        },
        library = {
            name = '借书卡',
            text = {
                '每持有一张{C:attention}消耗牌',
                '{C:mult}+#1#{}倍率',
                '{C:inactive}（当前为{C:mult}+#2#{C:inactive}倍率）'
            }
        },
        lightning_bottle = {
            name = '瓶装闪电',
            text = {
                '{C:attention}#1#',
                '恒出现于{C:attention}起始手牌',
                '且{C:attention}打出{}后会重新触发'
            }
        },
        lineup = {
            name = '排队站好',
            text = {
                '若回合{C:attention}首次弃牌',
                '至少包含{C:attention}#1#{}张{C:attention}#2#',
                '生成一张{C:tarot}#3#'
            }
        },
        mechanics_grip = {
            name = '魔术握牌技',
            text = {
                '{C:attention}出牌{}计分后',
                '有{C:green}#1#/#2#{}的几率',
                '退回{C:attention}手牌'
            }
        },
        meteor_shower = {
            name = '流星雨',
            text = {
                '{C:planet}#2#{}中的牌',
                '有{C:green}#3#/#4#{}的几率替换为',
                '带有{C:dark_edition}版本{}的{C:attention}#1#'
            }
        },
        metronome = {
            name = '节拍器',
            text = {
                '给予{C:chips}+#1#{}筹码或{C:mult}+#2#{}倍率',
                '每次出牌后{C:attention}转换',
                '{C:inactive}（当前为{V:1}#3#{C:inactive}）'
            }
        },
        minted_set = {
            name = '纪念币套装',
            text = {
                '同时拥有{V:1}#2#{}、{V:2}#3#',
                '及{V:3}#4#{C:attention}小丑牌时',
                '{C:white,X:red}X#1#{}倍率'
            }
        },
        negative_film = {
            name = '电影负片',
            text = {
                '相同的{V:1}#1#{}和{V:2}#2#{}',
                '可{C:attention}同时{}出现',
                '且有{C:green}#3#/#4#{}的几率为{C:dark_edition}#5#'
            }
        },
        one_chamber = {
            name = '孤弹决胜',
            text = {
                '{C:white,X:red}X#1#{}倍率',
                '出牌后，{C:blue}出牌次数{C:attention}归零'
            }
        },
        old_sailor = {
            name = '老海员',
            text = {
                '{C:attention}#1#',
                '有{C:green}#3#/#4#{}的几率给予{C:money}$#2#{}',
                '有{C:green}#6#/#7#{}的几率给予{C:red}+#5#{}倍率'
            }
        },
        private_eye = {
            name = '私家侦探',
            text = {
                '击败{C:attention}Boss盲注{}后',
                '随机生成一个{C:attention}标签'
            }
        },
        shattered = {
            name = '破碎小丑',
            text = {
                '{C:attention}#1#{}给予{C:white,X:red}X#2#{}倍率',
                '且有{C:green}#3#/#4#{}的几率被摧毁'
            }
        },
        slinky = {
            name = '彩虹圈小丑',
            text = {
                '打出的每张{C:attention}#1#{}、{C:attention}#2#{}、',
                '{C:attention}#3#{}、{C:attention}#4#{}、{C:attention}#5#{}和{C:attention}#6#',
                '在计分时给予{C:white,X:red}X#7#{}倍率',
                '且有{C:green}#8#/#9#{}的几率被摧毁'
            }
        },
        socket_set = {
            name = '工具套装',
            text = {
                '{C:attention}#2#{}在计分时',
                '给予{C:red}+#1#{}倍率',
                '{C:inactive,s:0.8}（每回合变更点数）'
            }
        },
        subway_map = {
            name = '地铁路线图',
            text = {
                '计分牌每{C:attention}额外{}有一种{C:attention}花色',
                '获得{C:chips}+#1#{}筹码',
                '仅有{C:attention}一种花色{}计分时重置',
                '{C:inactive}（当前为{C:chips}+#2#{C:inactive}筹码）'
            }
        },
        supermassive = {
            name = '超大质量',
            text = {
                '每种{C:attention}牌型{}每高出{C:attention}#2#{}一级',
                '本牌获得{C:white,X:red}X#1#{}倍率',
                '{C:inactive}（当前为{C:white,X:red}X#3#{C:inactive}倍率）'
            }
        },
        sushi_rolls = {
            name = '寿司卷',
            text = {
                '下{C:attention}#1#{}个商店的',
                '{C:green}重掷{}起价为{C:money}#2#'
            }
        },
        sushi_rolls_alt = {
            name = '寿司卷',
            text = {
                '下个商店的',
                '{C:green}重掷{}起价为{C:money}#2#'
            }
        },
        suspicious_tile = {
            name = '赖子牌',
            text = {
                '{C:attention}#1#{}可用以组成',
                '{C:attention}三条{}、{C:attention}四条{}及{C:attention}五条',
            }
        },
        vespertine = {
            name = '暮起望鸮',
            text = {
                '{C:attention}最后一手出牌{}中的',
                '每张牌给予{C:red}+#1#{}倍率'
            }
        },
        walkman = {
            name = '随身听',
            text = {
                '完成{C:attention}#1#{}个底注后',
                '底注{C:red}-#2#',
                '{C:inactive}（当前为#3#/#1#）'
            }
        },
        watercolour = {
            name = '水彩小丑',
            text = {
                '若前后两次出牌中',
                '{C:attention}首张计分牌{}的花色{C:attention}不同',
                '{C:white,X:red}X#1#{}倍率',
                '{C:inactive,s:0.9}（上次花色：{V:1,s:0.9}#2#{C:inactive,s:0.9}）'
            }
        },
        wild_goose = {
            name = '追大鹅',
            text = {
                
                '每次{C:attention}抽牌{}时',
                '{C:attention}随机{}标记一张{C:attention}牌',
                '使其{C:attention}计分{}时给予{C:white,X:red}X#1#{}倍率'
            }
        },
        windchime = {
            name = '绚丽风铃',
            text = {
                '打出{C:attention}#1#{}张{C:attention}增强牌{}后',
                '本牌获得{C:white,X:red}X#2#{}倍率',
                '{C:inactive,s:0.9}（当前为{C:white,X:red,s:0.9}X#3#{C:inactive,s:0.9}倍率）'
            }
        },
        wingman = {
            name = '僚机小丑',
            text = {
                '若出牌为{C:attention}对#2#',
                '本牌获得{C:white,X:red}X#3#{}倍率',
                '击败{C:attention}Boss盲注{}后重置',
                '{C:inactive,s:0.9}（当前为{C:white,X:red,s:0.9}X#4#{C:inactive,s:0.9}倍率）'
            }
        },
    },
    Voucher = {
        frequent_flier = {
            name = '空巴常客',
            text = {
                '跳过{C:attention}盲注{}后',
                '获得{C:money}#1#'
            }
        },
        first_class = {
            name = '航司金卡',
            text = {
                '在一个商店内花费{C:money}$#1#{}后',
                '随机获得一个{C:attention}标签'
            }
        },
        viral = {
            name = '病毒传播',
            text = {
                '{C:attention}增强{}计分时',
                '有{C:green}#1#/#2#{}的几率',
                '传播至紧邻{C:attention}计分牌'
            }
        },
        biohazard = {
            name = '生物危害',
            text = {
                '{C:dark_edition}版本{}和{C:attention}蜡封{}计分时',
                '有{C:green}#1#/#2#{}的几率',
                '传播至紧邻{C:attention}计分牌'
            }
        },
    },
    Tag = {
        sparkle = {
            name = '闪耀标签',
            text = {
                '为牌组中的{C:attention}#1#{}张牌',
                '添加{C:attention}随机增强'
            }
        },
        meal_deal = {
            name = '包饱标签',
            text = {
                '随机生成至多',
                '{C:attention}#1#{}张{C:attention}食物小丑'
            }
        },
        lightning = {
            name = '天雷标签',
            text = {
                '下一手{C:attention}回合首次出牌',
                '重新触发{C:attention}#1#{}次'
            }
        },
    },
    Back = {
        orbit = {
            name = '轨道牌组',
            text = {
                '击败{C:attention}Boss盲注{}后',
                '获得{C:attention}#1#{}个{C:attention,T:tag_orbital}#2#',
                '{s:0.2} ',
                '{C:planet}#3#{}和{C:planet}#4#{}等其他',
                '相关项目将不再出现'
            }
        },
        jetsetter = {
            name = '打飞的牌组',
            text = {
                '开局即拥有{T:v_monarchy_frequent_flier,C:attention}#1#',
                '和{T:v_monarchy_first_class,C:attention}#2#{}优惠券',
                '{s:0.2} ',
                '利息上限提升至{C:money}#3#'
            }
        },
        sparkle = {
            name = '闪耀牌组',
            text = {
                '开局即拥有{T:v_magic_trick,C:attention}#1#',
                '和{T:v_illusion,C:attention}#2#{}优惠券',
                '{s:0.2} ',
                '每回合结束时摧毁{C:attention}#3#{}张{C:attention}牌',
            }
        },
        abberant = {
            name = '反常牌组',
            text = {
                '开局即拥有{C:attention}#1#{}张增强牌',
                '{s:0.2} ',
                '{C:attention}增强牌{}计分时',
                '随机变换其{C:attention}增强'
            }
        },
    },
    Blind = {
        slate = {
            name = '石板',
            text = {
                '削弱所有{C:attention}增强{}牌'
            }
        },
        underdog = {
            name = '弱者',
            text = {
                '削弱所有至少已打出{C:attention}#1#{}次的牌'
            }
        },
        anchor = {
            name = '锚',
            text = {
                '{C:attention}下半堆{}牌组',
                '背面朝上抽取'
            }
        },
        blur = {
            name = '模糊',
            text = {
                '按本赛局跳过盲注次数',
                '提升得分要求'
            }
        },
        loop = {
            name = '回环',
            text = {
                '打出及弃掉的牌',
                '有{C:green}#1#/#2#{}的几率',
                '被削弱并退回手中'
            }
        },
    }
}

return Monarchy.Functions.prefix_loc_table(descriptions, loc_table)
