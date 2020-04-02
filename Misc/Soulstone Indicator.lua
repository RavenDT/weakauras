--[[ Soulstone Indicator ]]--


--[[

Compressed String

!9E1wZjUnu4Fl1pLmdLeiHSTpKhieZM0HBdYjBNUZASITSrncjQLCwiT1)27rs2yULanpSdm2MJoNVZnzD(WVHVNpI6pOXfx1SX5(iPpQz9gxv)kF0mFuK(lOGse(cjvsfC)b)Y5xCoO4RcXm)bWdyE4urA3u8mI3Y5eFeQZyx3b(OqbtKcwpOH5BtZ1lmxVuFv5JwmmowsuWIT0iLPaKgoxb(rAnu7BdOkrscdUNjj3sKH(p5JEMSeIxrgpYLJFIrGGLdbHpAedVmpaPxjpqWZdCxmNMI1Wc5djgNXu(34J(onsn1gjq0TYvscJecb3lywgPioq9XsfjvRhc19315bQFMKgQZfu7zprj8qI)Gw(OBPyMirNDvbyNPyoNWgKnBJmWgUfbAHovrO2xRfIaG4WYsdsQWPk4bqAmLtLtTpdpALcpVSS4(ZnA1QSpnsq5WAEdh1ZTlGtkjbG024OH6cuOqWIeFNd(geEJgtiZ5y2JL7aAELwlEmnXejR3bUz3egsdvfQUrjeDQB8fOTkLMKaax1UTcQAh4SuCt7n5CcJrJk7jnp)tN)jn4Kxi6K6ocMbvlKm7jJKrPKy6cOapYTxpqS267nwRmTb3fqbfzLQJLmDXdnh29a(30Ck0TequwSbWjDAJ8MG8Ap2t3UEceBRG352Bu3h6zWNxLjQQDyvz3BeL2KomtQG3VwDpoJB69NymPwEq961pn)3YdSFOX5bMvYdU(68aNod7FtBVj9g(5jUp6oWBYdd6EFpp3XU36KhOMs4v2w(HjcXS8aiSClqc(H5vHtAUJd32irwAizauXw3SwhYSiIuTTr)6b9LPHD76204GbOTPUYxpaDA9poXXUGZESuxtR8fyKz72U6H1V8Ub(xVwMDy1Z)NR3OaUJf7VDTryw1Z0DFZoPI9Op0PJlc5Ciu2QCb78L4eBTYXdEx(58GLIS8GyrQbkteZG9MCYp5CyyreZrcQ(wCpPa)AoF5U7HODStnoLvRQiC6BdjHjjVzo3(HXTNm2T)WhFNn6hto3F5AzyEWuSe8SEkcj6hC(UEFwFg4ec)L62tFRV(rVhB2UvwhU6GAtIVxpuDy()B4x3EJd(7JhIYpo2zVo1(aMcZQ)q2zMT)HSSKlWhYyl3bNJ3Y)94vvZkYq1OlLbh8DVEQEmoKCw7OOHC5zFHGFUTEi7z9jru8zgDLNDJybLN0oLWXgj1bIyo1wVV(1Q9qF7i2idVA8oVDVVf3q4MAS6PuIklfO6PsZGJqbLoWuBZkaz33zsz503j2rYfKm2IRrHktPrvtT3Z0Fuev(NMz4VSZ0DpRM9ejaDYQj9Qt3t291gFRi7WgSkSTVaCVLsnMnFkgiMxVvfPlpYc1TuPLIMH5mzEBy2wOASMvSwemjnEBUH0id5u7HGg65cnnPynvFGjdwHn0WGzDyi8WkdXomNoZs1EnwQOOml)7jLuSHZxaMyfSD4A8bppdt5hV2R49EC6R7k6m6uHW7ZN86Lz)XFP52Q)FnMah2Um2qgUG03ucnzkWB7IMg2Uruv1Amb28)I01q99zaFDAzRoKHLYDKkPVs2wOAfb)lmKKFbQNx2u3g9)Vd

]]--

-- Soulstone Indicator
{
    ["desaturate"] = false,
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["anchorPoint"] = "TOPLEFT",
    ["authorOptions"] = {
        [1] = {
            ["type"] = "toggle",
            ["key"] = "soundEnabled",
            ["useDesc"] = false,
            ["default"] = true,
            ["name"] = "Play Sound on Expiration",
            ["width"] = 1,
        },
        [2] = {
            ["type"] = "select",
            ["key"] = "soundChannelNum",
            ["values"] = {
                [1] = "Master",
                [2] = "SFX",
                [3] = "Music",
                [4] = "Ambience",
                [5] = "Dialog",
            },
            ["default"] = 2,
            ["name"] = "Sound Channel",
            ["useDesc"] = false,
            ["width"] = 1,
        },
    },
    ["xOffset"] = 250,
    ["zoom"] = 0,
    ["yOffset"] = -155,
    ["regionType"] = "icon",
    ["icon"] = true,
    ["cooldownSwipe"] = true,
    ["cooldownTextDisabled"] = false,
    ["uid"] = ")ooTG(z4uZq",
    ["cooldownEdge"] = false,
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
        },
        ["finish"] = {
        },
    },
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["type"] = "aura2",
                ["subeventSuffix"] = "_CAST_START",
                ["auraspellids"] = {
                    [1] = "20707",
                },
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["useExactSpellId"] = true,
                ["names"] = {
                },
                ["unit"] = "player",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
        },
        [2] = {
            ["trigger"] = {
                ["custom_hide"] = "custom",
                ["type"] = "custom",
                ["custom"] = "function(event, ...)\\n    if event == \\\"COMBAT_LOG_EVENT_UNFILTERED\\\" then\\n        local subEvent = select(2, ...)\\n        local sourceName = select(5, ...)\\n        local destName = select(9, ...)\\n        local spellID = select(12, ...)\\n        local playerName = UnitName(\\\"player\\\")\\n        if spellID == 20707\\n        and playerName == destName\\n        and playerName ~= sourceName\\n        then\\n            if subEvent == \\\"SPELL_CAST_SUCCESS\\\" then\\n                local message = \\\"Thank you for the soulstone!\\\"\\n                SendChatMessage(message,\\\"WHISPER\\\",nil,sourceName)\\n            elseif subEvent == \\\"SPELL_AURA_REMOVED\\\" then\\n                local message = \\\"My soulstone has expired!\\\"\\n                SendChatMessage(message,\\\"WHISPER\\\",nil,sourceName)\\n                if aura_env.config.soundEnabled then\\n                    local channelNum = aura_env.config.soundChannelNum\\n                    local soundChannel = {\\n                        \\\"Master\\\",\\n                        \\\"SFX\\\",\\n                        \\\"Music\\\",\\n                        \\\"Ambience\\\",\\n                        \\\"Dialog\\\"\\n                    }\\n                    PlaySoundFile(\\\"Interface/AddOns/WeakAuras/Media/Sounds/BoxingArenaSound.ogg\\\",soundChannel[channelNum])\\n                end\\n            end\\n        end\\n    end\\n    \\n    return true\\nend",
                ["subeventSuffix"] = "_CAST_START",
                ["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
                ["custom_type"] = "event",
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "custom",
        ["customTriggerLogic"] = "function(t)\\n    return t[1]\\nend",
        ["activeTriggerMode"] = 1,
    },
    ["selfPoint"] = "TOPLEFT",
    ["internalVersion"] = 26,
    ["keepAspectRatio"] = false,
    ["animation"] = {
        ["start"] = {
            ["type"] = "none",
            ["duration_type"] = "seconds",
        },
        ["main"] = {
            ["type"] = "none",
            ["duration_type"] = "seconds",
        },
        ["finish"] = {
            ["type"] = "none",
            ["duration_type"] = "seconds",
        },
    },
    ["id"] = "Soulstone",
    ["auto"] = true,
    ["frameStrata"] = 1,
    ["width"] = 32,
    ["alpha"] = 0.5,
    ["config"] = {
        ["soundEnabled"] = true,
        ["soundChannelNum"] = 2,
    },
    ["inverse"] = false,
    ["subRegions"] = {
    },
    ["height"] = 32,
    ["conditions"] = {
    },
    ["load"] = {
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["class"] = {
            ["multi"] = {
            },
        },
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["anchorFrameType"] = "SCREEN",
}

-- EOF
