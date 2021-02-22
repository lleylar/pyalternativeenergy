RECIPE {
    type = "recipe",
    name = "Shit-mk01",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"iron-plate", 1},
    },
    results = {
        {"Shit-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "Shit-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lrf-building-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk03",
    order = "a",
    place_result = "Shit-mk01",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "Shit-mk01",
    icon = "__pyalternativeenergygraphics__/graphics/icons/lrf-building-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "Shit-mk01"},
    fast_replaceable_group = "lrf",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.8, -7.8}, {7.8, 7.8}},
    selection_box = {{-8.0, -8.0}, {8.0, 8.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    --allowed_effects = {"speed"},
    crafting_categories = {"lrf"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.0,
    },
    energy_usage = "400kW",
    animation = {
        north =
            {
                layers = --works the same as normal layers in animations for other buildings. north is the first animation used.
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/r.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/l.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48),
                        draw_as_glow = true,
                    },
                }
            },
            east = -- the secound animation used for the vertical direction
            {
                layers =
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/r.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/l.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48),
                        draw_as_glow = true,
                    },
                }
            },
            south = -- can just be a copy of the northern animation. only real effect will be the pipe input and output will be flip from the start positions.
            {
                layers =
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/r.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/l.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48),
                        draw_as_glow = true,
                    },
                }
            },
            west = -- copy of east with the flipped pipe points like south
            {
                layers =
                {
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/r.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48)
                    },
                    {
                        filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/l.png",
                        width = 512,
                        height = 608,
                        frame_count = 1,
                        shift = util.by_pixel(0, -48),
                        draw_as_glow = true,
                    },
                }
            },

    },
    working_visualisations = {
        {
            north_position = util.by_pixel(140, 17),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            --this works the same as up top. but copy and paste the north to the south animation and east to west.
            north_animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/tela.png",
                frame_count = 200,
                line_length = 25,
                width = 64,
                height = 32,
                animation_speed = 0.5,
                draw_as_glow = true,
            },
            east_animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/tela.png",
                frame_count = 200,
                line_length = 25,
                width = 64,
                height = 32,
                animation_speed = 0.5,
                draw_as_glow = true,
            },
            south_animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/tela.png",
                frame_count = 200,
                line_length = 25,
                width = 64,
                height = 32,
                animation_speed = 0.5,
                draw_as_glow = true,
            },
            west_animation = {
                filename = "__pyalternativeenergygraphics__/graphics/entity/lrf/tela.png",
                frame_count = 200,
                line_length = 25,
                width = 64,
                height = 32,
                animation_speed = 0.5,
                draw_as_glow = true,
            },
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -8.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -8.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 8.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 8.5}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/lrf.ogg", volume = 0.70},
        apparent_volume = 2.5
    }
}
