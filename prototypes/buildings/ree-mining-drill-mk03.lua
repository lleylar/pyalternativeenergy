RECIPE {
    type = "recipe",
    name = "ree-mining-drill-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "ree-mining-drill-mk02", amount = 1},
        {type = "item", name = "titanium-plate",        amount = 20},
        {type = "item", name = "super-steel",           amount = 20},
        {type = "item", name = "nbti-alloy",            amount = 20},
        {type = "item", name = "tin-plate",             amount = 20},
        {type = "item", name = "ns-material",           amount = 20},
        {type = "item", name = "processing-unit",       amount = 10},
        {type = "item", name = "mechanical-parts-03",   amount = 2},
    },
    results = {
        {type = "item", name = "ree-mining-drill-mk03", amount = 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "ree-mining-drill-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/ree-mining-drill-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "ree-mining-drill-mk03",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "ree-mining-drill-mk03",
    icon = "__pyalternativeenergygraphics__/graphics/icons/ree-mining-drill-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "ree-mining-drill-mk03"},
    fast_replaceable_group = "ree-mining-drill",
    max_health = 700,
    resource_categories = {"ree"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    input_fluid_box = {
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        volume = 200,
        pipe_connections = {
            {flow_direction = "input-output", position = {-2.0, 2}, direction = defines.direction.west},
            {flow_direction = "input-output", position = {2.0, 2},  direction = defines.direction.east},
        }
    },
    module_slots = 0,
    --allowed_effects = {"consumption", "speed", "pollution"},
    mining_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1000kW",
    mining_power = 1,
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -2.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_connector = circuit_connector_definitions["ree-mining-drill-mkxx"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/ree-mining-drill/ree-mining-drill-mk03.png",
                    width = 160,
                    height = 184,
                    line_length = 10,
                    frame_count = 90,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-0, -16),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/ree-mining-drill/sh.png",
                    width = 172,
                    height = 144,
                    line_length = 10,
                    frame_count = 90,
                    draw_as_shadow = true,
                    animation_speed = 0.3,
                    shift = util.by_pixel(8, 5),
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/borax-mine.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/borax-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
