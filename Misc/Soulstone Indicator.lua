--[[ Soulstone Indicator ]]--


--[[

Compressed String

!9Ev3YjUnu4NL6RsMHsaYpBVjxqio7MoGHb5KTt3zfwylBuJrIAjZcPT(zVhjzh7eij0CrhyW2sNZ35xRZh4UyFmIH96E6f962bJKyuV2DVO9fy0smks)feqjcxtZKmbh79lDoTdi4MXXXsQc717CTA004jcgxHr(JNm09gqPhfILypytsUAHiB8kfOVeGZZyu12vunYjjPW1Cj9AQmephJEGUfauKZJC5K5PuTtqJj5Pk8vyeNSeeFskzBraslurGGxe4UzflJOTag9dwKAH2kAVR2uGpsdbhCnjnNw6hOrePIMPLdHU53WENclLlzHyVZWO(lNZO8qk27Cm6AgjvKay2WbhSGW50uV8L1(OgkRtw6ELc9SySHlcagksfzwhs)TN53tn)EMvOkfofaFBvM)N7Eo4xeEiKDFzYpJMa5cFtGZc1zLqHins8doafSiKjZzqM9yHW)Zh94z5)(FwlIpDJ6AM0M8NxVUBucv)mjSQuIKksMcUbSnJZkVlgUvUWCp8KkJLKaDp1vE7c1vgsEgPN9ICfnnLfvvE615tD(Kge6AQo((cLKc5bKmFUzLjz0y2givpXD4qyzT23A0geox7qOvqRcymD23Dd45iRmv9sLYwbikp2a4Sb9r(Zq(9N6RlTZHLTjZV4oCYn3n0IFDKOQB2QJUWCPsSC2cweT6HQqU6PQRX5Cts9iJx0QiOD72hx8Rfb2pS4IaZofbxEzrGZGXJUQV)SHJ)8m37D98NDN3n3o03DQ71ofbQfuETUvFsfHK0IaisDlrcEW8oXr92XGVujrEwi1dYxnv783vntU(6M6091T1RcJTe(K1VdQR6hoYXUHZEWsNWQToOKPtAx5i63qBIFXFF5Zc3D0y)j3Nz36mSUwz6nl7NUBWaxeY59q5fXp0Lkjj2G3Xhoo5HIGTI8IGyrMbkJhNcDsC6p58(WIOMJUuJS4Euj(TC(6xUf82PoT4S0w1jHJFDiPPs6RgZ9VBA)ztDhn((3OT8qI5rBBeHfblisWY6t8Pr)phVnRZ6ZRMr5RBdNVgZsA3CM1HgTViQdFAGIjW3RfQh68Fg(M6BmWFD4qu9XXoY0P1hqvye7hspZi5pKMvJW)qkBh57C4A(phUOAgmgcc3WsHtYULd50ysi9K(rrJ5Yt(kL8qF9aXtgrJyKtmYkp5kXggpPFgLtmR0g4p50QzD9B19qF)aAKHxnEJ3U33MpBXNlXt3Lrv5zaTmvwoCeki07mH1SdW98nMR904u7a0scbheVG9mRgfXK)HzM76DMg7BLCOib4bwpzwD8EIVV197LXhXGvPUJeWiFlZnd7RR00JGkmNKEFfr6ExyOgl0Bs4SLw2Rn4uvsvGdN5b(BULE7SkYSaSarhWaljm(Hl9tCZom51bqKHkR9Wxn7x6Q(WO1q1uTkA(GXzWHMaXhIIyyTfrLeLgrlBX0vlG170(Cnts95yMGSjb)R2LpnqMYWPu))omWaL2PgsTLm2wqzjluwkXAVLPQ3lvqm)VfTBQVUeiMZQQ8HPePCNvLShPVCrvf76B0bOL)hAWuxxp9wRHy9SE6Am(F)

]]--

-- Soulstone Indicator
{
    ["xOffset"] = 250,
    ["yOffset"] = -155,
    ["anchorPoint"] = "TOPLEFT",
    ["cooldownSwipe"] = true,
    ["cooldownEdge"] = false,
    ["icon"] = true,
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
                ["custom"] = "function(event, ...)\\n    if event == \\\"COMBAT_LOG_EVENT_UNFILTERED\\\" then\\n        local subEvent = select(2, ...)\\n        local sourceName = select(5, ...)\\n        local spellID = select(12, ...)\\n        \\n        local playerName = UnitName(\\\"player\\\")\\n        if spellID == 20707\\n        and playerName ~= sourceName\\n        then\\n            if subEvent == \\\"SPELL_CAST_SUCCESS\\\" then\\n                local message = \\\"Thank you for the soulstone!\\\"\\n                SendChatMessage(message,\\\"WHISPER\\\",nil,sourceName)\\n            elseif subEvent == \\\"SPELL_AURA_REMOVED\\\" then\\n                local message = \\\"My soulstone has expired!\\\"\\n                SendChatMessage(message,\\\"WHISPER\\\",nil,sourceName)\\n                if aura_env.config.soundEnabled then\\n                    local channelNum = aura_env.config.soundChannelNum\\n                    local soundChannel = {\\n                        \\\"Master\\\",\\n                        \\\"SFX\\\",\\n                        \\\"Music\\\",\\n                        \\\"Ambience\\\",\\n                        \\\"Dialog\\\"\\n                    }\\n                    PlaySoundFile(\\\"Interface/AddOns/WeakAuras/Media/Sounds/BoxingArenaSound.ogg\\\",soundChannel[channelNum])\\n                end\\n            end\\n        end\\n    end\\n    \\n    return true\\nend",
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
    ["internalVersion"] = 26,
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
    ["desaturate"] = false,
    ["subRegions"] = {
    },
    ["height"] = 32,
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
    ["regionType"] = "icon",
    ["alpha"] = 0.5,
    ["width"] = 32,
    ["cooldownTextDisabled"] = false,
    ["auto"] = true,
    ["authorOptions"] = {
        [1] = {
            ["type"] = "toggle",
            ["key"] = "soundEnabled",
            ["useDesc"] = false,
            ["name"] = "Play Sound on Expiration",
            ["default"] = true,
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
            ["useDesc"] = false,
            ["name"] = "Sound Channel",
            ["default"] = 2,
            ["width"] = 1,
        },
    },
    ["id"] = "Soulstone",
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["config"] = {
        ["soundEnabled"] = true,
        ["soundChannelNum"] = 2,
    },
    ["inverse"] = false,
    ["uid"] = ")ooTG(z4uZq",
    ["conditions"] = {
    },
    ["zoom"] = 0,
    ["selfPoint"] = "TOPLEFT",
}

-- EOF
