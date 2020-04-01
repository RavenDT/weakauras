--[[ Soulstone Indicator ]]--


--[[

Compressed String

!9A1wVPooq4FlBEIk1fbPxo7l9bo00tBfeqXHUs7QtiUjojEpgB2yhk0hYV9DSDcx7TNwbIe7mZ3mFJhMVe1pkmcrJ87FX1U97fHKri3U9VU71rOfrOu9xWaLizfPusf8i))O3f9adXvQcr5KLkytjyJcmLiXQQsSIe9maAcy93JqRNKLjjQiF3Ra3semrjyUFFZxxZVxy(9s9VkTjcwQ4fEizT6wQe)mJKQbCtlq)E)RUkcvsYHqhUzjPjwimpbsPPckhqjCY0rE3fUdo0luWuiH(fHSCGCjjrfGHSxdn4Egn3YIw79sZn8aN0srKuHlvwROCAZDzWTYcZ9WkvjnphkvwkgUDdZTMCfdvix7fijymAAJXi3EFR330Gqwr0u4EcMPkGWw9SzNPLKm66ieAQ3OrW2AVFiTP4xPti0sgEdemuLK4TgYCK1gnT54fKgBBbevLzaC(WbOW5OWbbH6tXNHTT1179gn9UzJS4VJjAMchDhYUKkPsSyEbnL0UOLYTRAVMvXnf1oMS4864UD7Ew9J1X2p0S6yZtQJV5M6yNHtg)9bHZhn5hZ9EYZpC(m)7EyuOxG3To1XQccFNVTFyIemRogyQxdsWccdo074Esap2jrvzcXhQx772vFQBMA9T77t)3pwVlm2JWTrFgCUQx0XX(aN3alDbBx0bNmDsNAhMNEe(3CaBpXH3U2Eqy3vG1hvMwZM2Pzdh6HqoFgkhrFOjvIZTC3jSaZ)vD8grvDCMO0aLjJzqJeN8BoFoSicpDybwn2IBNg8p35pV)biBdCoNtzNVRiC27djHjjVlNhmlyW8aVXtE6d6k)kCE8M9yyDCbwcrE9sAjj9)B(cTlp(HBEOfBVRKaYaCOiuwbnvGrFYihZtaLNp4p6BNVyNO0mH8lnO8ngEHsPY)XmeA1jJNcTwosKtt2BuL6S3GF)D)F2WpSbRgFhlGzGwXmyqq2XksWksjhZEQvs19AJEQqpMgZPl0Ys89fCAMJYHoci31sSGbnLcjbuVavaiclWu(x36TcxFn71IEarrTTMrOxfqvZhe1ZkHgjqlaRWgHSxOPWXH)fAzo2YcyZEDbf7kT)NjeH)OZRxw9x)RUsOFTcJmlC2fyu0B0Oki08cLfeDkq37fnycS51s0I46RlQykA7rBcdlLNSRK(k54nvTVYWD683Q4Hgg455RF0kGkx6QpeJ(V)

]]--

-- Soulstone Indicator
{
    ["width"] = 32,
    ["authorOptions"] = {
    },
    ["regionType"] = "icon",
    ["xOffset"] = 250,
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["yOffset"] = -155,
    ["anchorPoint"] = "TOPLEFT",
    ["internalVersion"] = 26,
    ["cooldownSwipe"] = true,
    ["auto"] = true,
    ["uid"] = ")ooTG(z4uZq",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["type"] = "aura2",
                ["subeventSuffix"] = "_CAST_START",
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["auraspellids"] = {
                    [1] = "20707",
                },
                ["unit"] = "player",
                ["names"] = {
                },
                ["useExactSpellId"] = true,
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
        },
        [2] = {
            ["trigger"] = {
                ["subeventPrefix"] = "SPELL",
                ["type"] = "custom",
                ["custom"] = "function(event, ...)\\n    if event == \\\"COMBAT_LOG_EVENT_UNFILTERED\\\" then\\n        local subEvent = select(2, ...)\\n        local sourceName = select(5, ...)\\n        local spellID = select(12, ...)\\n        \\n        local playerName = UnitName(\\\"player\\\")\\n        if spellID == 20707\\n        and playerName == sourceName\\n        then\\n            if subEvent == \\\"SPELL_CAST_SUCCESS\\\" then\\n                local message = \\\"Thank you for the soulstone!\\\"\\n                SendChatMessage(message,\\\"WHISPER\\\",nil,sourceName)\\n            elseif subEvent == \\\"SPELL_AURA_REMOVED\\\" then\\n                local message = \\\"My soulstone has expired!\\\"\\n                SendChatMessage(message,\\\"WHISPER\\\",nil,sourceName)\\n            end\\n        end\\n    end\\n    \\n    return true\\nend",
                ["subeventSuffix"] = "_CAST_START",
                ["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
                ["custom_type"] = "event",
                ["event"] = "Health",
                ["custom_hide"] = "custom",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "custom",
        ["customTriggerLogic"] = "function(t)\\n    return t[1]\\nend",
        ["activeTriggerMode"] = 1,
    },
    ["alpha"] = 0.5,
    ["cooldownTextDisabled"] = false,
    ["keepAspectRatio"] = false,
    ["animation"] = {
        ["start"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
        ["main"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
        ["finish"] = {
            ["duration_type"] = "seconds",
            ["type"] = "none",
        },
    },
    ["id"] = "Soulstone",
    ["zoom"] = 0,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["selfPoint"] = "TOPLEFT",
    ["config"] = {
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
    ["desaturate"] = false,
}

-- EOF
