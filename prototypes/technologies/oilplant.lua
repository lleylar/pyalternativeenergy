TECHNOLOGY {
    type = "technology",
    name = "oilplant-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/technology/oilplant-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'thermal-mk01'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'oilplant-mk02',
    icon = '__pyalternativeenergygraphics__/graphics/technology/oilplant-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk02','oilplant-mk01'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'oilplant-mk03',
    icon = '__pyalternativeenergygraphics__/graphics/technology/oilplant-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk03','oilplant-mk02'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'oilplant-mk04',
    icon = '__pyalternativeenergygraphics__/graphics/technology/oilplant-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'thermal-mk04','oilplant-mk03'},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}