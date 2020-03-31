--[[ Soulstone Indicator ]]--


--[[

Compressed String

!vx13Vjooq4)wU(0DsTi(rPBF5EGTlO2kkfHZU90jKbt8KeRASZg7qHvNYF73m2bO3U3d7l3dNaLyg)nJN5B(gdVhpHZu8z9gCt)ED5mhN1VtVB6CdNTLZK0xeqQvBRWfZ6f(2p8Cq4510tpND45Smh45tUA41dhm8ddg8HBVTBVBUTpp7QRhYzctAHTAUvzq0jppF64jHiB1s7Bg2BQsG)r0qTZB3Ma79FUuk8aNv3((i0XYCGVbZ6uRH8WxPYZHkxm)sozGww7GzITHalQRegCDlogZwRXJYau2d7akTUheAFbYc1BcwMxbzQ9i25JNofnxcA9dskc(ZGy1zbqRUBelzflz0c6GnkesPwCate2XZfn5pG1ziz6JKlSbDojy6(XtNp5Ztjm1MZLGNmis9QDqs04twjWNDf2TWDq2eQmc9xqcqH8XS(yN7vakhHjBQFHWRSezjmQT0AdXkoVOYtlKyAqgxfZkhGukwETjPPLC2kuMFE0zkJYv8tJ3tSGt4jSH2ksRlGC0TwcRau5fEuUH8L2kc6rQ2O3BR1E1rskvlCUFWkQawzW(uvi2QVbFpcetv48ITHGQ6KwJ0HFs5eB0GKcW(wv(S(dPHfqN99c6VzTB5Z6sTyVnipTP7o2CUT7GU4wk57LFSSkuEGQwHxeuMcDzbUQBhCQ5nLefKHIhdioa9CP)m3utrcM8LSx86bp81)K0d0HfisSqYu5rGKak615MpkjDICOT78Y9pGQ8fy3WUQDhk7pcc7ryyo9BAzCsLAkPcDZ62DAw)7nRViPqyETz9bBDZ6mBvZAFbUJ7yn)lx08yRBPchQGdErdfRaZUoyk6HoXDOX3MhvzNrkmYZ)O5V(rhPzVGB0PAAEerf(WaJ8UcH)PyM(RTz8Lx0w7xCPrPVmg5FR5reDGnWS2eA(462AgjMOvQDHMZ123qe)d1))L07thEhz2SUq4Awd7lvvG8)Hu7j2K9aDBwMifwoskF24w(ciEDeMcULpbsLyjJW5w(r7ELjFufyeblDS55)B9NvPOo0aACCBYFeVUufV47e0nTxEGxnPE3Kv8FRMqtMX7fy3Ty84z04Jk91dFQ9QTytFhQdUUp93G8)(p

]]--

-- Soulstone Indicator
{
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["yOffset"] = -154.99987792969,
    ["anchorPoint"] = "TOPLEFT",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["type"] = "aura2",
                ["subeventSuffix"] = "_CAST_START",
                ["auranames"] = {
                    [1] = "Soulstone",
                },
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["useName"] = true,
                ["names"] = {
                },
                ["unit"] = "player",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
        },
        ["activeTriggerMode"] = -10,
    },
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
    ["desaturate"] = false,
    ["subRegions"] = {
    },
    ["height"] = 32,
    ["load"] = {
        ["class"] = {
            ["multi"] = {
            },
        },
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["use_never"] = false,
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["regionType"] = "icon",
    ["cooldownTextDisabled"] = false,
    ["authorOptions"] = {
    },
    ["actions"] = {
        ["start"] = {
            ["message_type"] = "WHISPER",
            ["do_message"] = true,
            ["message_dest"] = "",
            ["do_glow"] = false,
            ["custom"] = "local message = \\\"Thank you for the soulstone!\\\"\\nlocal caster = aura_env.state.casterName\\nif caster and caster ~= aura_env.state.unitName then\\n    SendChatMessage(message,\\\"WHISPER\\\",nil,caster)\\nend",
            ["do_sound"] = false,
            ["message"] = "",
            ["sound"] = 1,
            ["do_custom"] = true,
        },
        ["init"] = {
            ["do_custom"] = false,
        },
        ["finish"] = {
            ["message_type"] = "WHISPER",
            ["do_message"] = true,
            ["message_dest"] = "",
            ["message"] = "",
            ["custom"] = "local message = \\\"My soulstone has expired!\\\"\\nlocal caster = aura_env.state.casterName\\nif caster and caster ~= aura_env.state.unitName then\\n    SendChatMessage(message,\\\"WHISPER\\\",nil,caster)\\nend",
            ["do_sound"] = true,
            ["do_custom"] = true,
            ["sound"] = "Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Sounds\\\\BoxingArenaSound.ogg",
            ["sound_channel"] = "SFX",
        },
    },
    ["zoom"] = 0,
    ["auto"] = true,
    ["stickyDuration"] = false,
    ["id"] = "Soulstone",
    ["width"] = 32,
    ["alpha"] = 0.5,
    ["anchorFrameType"] = "SCREEN",
    ["uid"] = "eFVfWtl3IqZ",
    ["config"] = {
    },
    ["inverse"] = false,
    ["frameStrata"] = 1,
    ["conditions"] = {
    },
    ["selfPoint"] = "TOPLEFT",
    ["xOffset"] = 250,
}

-- EOF

