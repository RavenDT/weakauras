--[[ Soul Power ]]--


--[[

Compressed String

!DA16ZPnoq8)xYmDM0BAOyEM8H7decu4Uutk2PpU5gdcBzSAmwmYYKhFG)2VDxjJDi5UlthsaPv7lT7VDxf4e4h4TjWlc)dwMVLPU7BIiDsGRtt7(zXX5C93dCbcpy2qRdlY1Yn(8h0bEXfzHAHm703V)p2V08jvgYs3VmprE)G8B4QqEME)YFF)swHITGNTRrOmlwSUXZ54y5f5xXZ1kjj6PFIR92YdfSuXtm0ItZILVK6PV)9a)GaT61)LUuyH6g59CfPYBZeAA3PNSnL9ixDYh6)HsJ(sz3WE4vK9ZShEBIJMwfAdeL(Xhlv6V50SzLivReXVioQt4z1y1(rX1fQSkZ0OXjV7Kk24zrVM6Rlf6gGu7x(X9lpPrJQRBPqgDaFc8ESenCwhNUbESSWejObrgGigoY1F0CleAUutPfc3OHnP3OG0vEjPvSW7wRKfzrdLPsfafDDWdCBrF3M(Ud8DJUbGU1kX61CvUHp)deOLpULxInl)DHHyo4ef5hiMiIaIAXgoa)ZlwX3bbwVI4yXdbElgoWZFHN)G5GoPtc8MWzPqLHxgBdhTTUuvxbaA66vvh0OrJFfCNwvW)fXChj6X50puPgyjYmLklVcEAifaXgmHXttNgzVGfG1c8mwb4nHhEhqCBetxlk)VCRlDHAgRmmdPFkm7DZORVgA(WxbXDFklnz013m(2RngVkXQrcrI8Fs2AhhHBpcFrB8nS9zjKrDpd6Cb8kGUllcRbNCi4KdbNCi4KdXxMMRYyPFfaueESvpWp5PXhbKxXu1aNJ750PxZZp)IMTB1UBZ2ndIpRBB0cJ70RxRUDB2QzRoD740JoPdA1X9BEXf9Va4VD)29B603ktPNeXZbaQcdTRGyUsUwXZZFELsToY)WqOy1C(A44AvduCe7Yc(8c4Fq5GJHNanRxKNWIK3)9YAxNsbanPPM5exMLVl0XU)nejj(ILyqBSs80(LFPGfbxh2(L(p34)3v5vkZW9po0MP0zQLEgCR)ml1DqyAvkp4YAUIbt5kZ4wIpRj1ux3rZxuMHnh9JAJ4ij(jGYfXpwHeuy3mUzWN7m3rLs(9JLeDapXtaM0PdMdAxLDGG9kPkclQm)ADmy76dKYjzB19aH3qsWYzTyHLcpAny3lHjKpXur7xoimra1IBOPjFtkJoWP0Eno3u0LWfRt0g)GLUnHryMujJEYqroFryklphnfUzlxVIP1PeigjSJNict53koIaUfA2esVbPivlkRYnQdFoIiBnWN33gm)6zd)ZJyJIohjR2wHCzk0UHAh4n4QRiZoictK8iEe04eTnltSX022NMnO04IiBV8YzgCOnc0m0M2YqGeyKnmr2BN7yrMip5nZV20wZusFWZQRhQTLqFisSrk1j3yByyte1UVGVc3xf1MWVEZbtxstIaIAiKUqbhpf7jgZc5)9qga(ZwFjt933o9SQDN5Hcy7YMttsNp9tt8rvRbC8ST6xPNKwUMsOG7bpqken8DCOY6zVTbBegZGKkEmoRfgtaNdi289lpWZ92xPAIaca96jlGzL0eo79zIf522wqs3TYkaaNrp)KIXpZ(Rqn(KeMSDOJl6kAz4UYzeNdD8lpBIikIdZ(Dh9vS7G1XA1fopwbUp86eOhiv0yQXhJun5bVHZhnY1QOH))v3f4fDY4S7)c)P72OEeXbOtrftqKxIjFPsaxd7lsMmB(0)AMR)GRPlCKOmVOp6Tz2QfQDA1t7V1oQ3oYhfkWRvdNEnGPK7WgBTqhl4Fc

]]--

-- Soul Power (Bar)
{
    ["sparkWidth"] = 10,
    ["sparkOffsetX"] = 0,
    ["xOffset"] = 0,
    ["customText"] = "function()\\n    local showAsPercent = aura_env.config.showAsPercent\\n    local isDestro = (GetSpecializationInfo(GetSpecialization()) == 267)\\n    local curPower = UnitPower(\\\"player\\\",7,isDestro)\\n    local maxPower = UnitPowerMax(\\\"player\\\",7,isDestro)\\n    local curPrcnt = curPower/maxPower*100\\n    \\n    if showAsPercent then\\n        return curPrcnt..\\\"%\\\"\\n    end\\n    \\n    return curPower..\\\" / \\\"..maxPower    \\nend\\n\\n\\n",
    ["yOffset"] = -415,
    ["anchorPoint"] = "CENTER",
    ["customTextUpdate"] = "update",
    ["sparkRotation"] = 0,
    ["sparkRotationMode"] = "AUTO",
    ["backgroundColor"] = {
        [1] = 0,
        [2] = 0,
        [3] = 0,
        [4] = 0.5,
    },
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["type"] = "custom",
                ["custom_type"] = "status",
                ["names"] = {
                },
                ["unit"] = "player",
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["customDuration"] = "function(...)\\n    local curPower = UnitPower(\\\"player\\\",7,true)\\n    local maxPower = UnitPowerMax(\\\"player\\\",7,true)\\n    return curPower, maxPower, true\\nend",
                ["spellIds"] = {
                },
                ["custom"] = "function(...)\\n    return true\\nend",
                ["debuffType"] = "HELPFUL",
                ["check"] = "update",
                ["customStacks"] = "",
                ["subeventSuffix"] = "_CAST_START",
                ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "any",
        ["activeTriggerMode"] = -10,
    },
    ["icon_color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["internalVersion"] = 26,
    ["selfPoint"] = "CENTER",
    ["totalPrecision"] = 0,
    ["barColor"] = {
        [1] = 0.68235294117647,
        [2] = 0.25882352941176,
        [3] = 0.78823529411765,
        [4] = 1,
    },
    ["desaturate"] = false,
    ["progressPrecision"] = 0,
    ["sparkOffsetY"] = 0,
    ["subRegions"] = {
        [1] = {
            ["type"] = "aurabar_bar",
        },
        [2] = {
            ["text_shadowXOffset"] = 1,
            ["type"] = "subtext",
            ["text_text"] = "%c1",
            ["text_color"] = {
                [1] = 1,
                [2] = 1,
                [3] = 1,
                [4] = 1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowColor"] = {
                [1] = 0,
                [2] = 0,
                [3] = 0,
                [4] = 1,
            },
            ["text_shadowYOffset"] = -1,
            ["text_selfPoint"] = "AUTO",
            ["rotateText"] = "NONE",
            ["text_fontType"] = "None",
            ["text_anchorPoint"] = "INNER_CENTER",
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["text_fontSize"] = 14,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
        },
        [3] = {
            ["border_offset"] = 8,
            ["border_anchor"] = "bg",
            ["type"] = "subborder",
            ["border_color"] = {
                [1] = 1,
                [2] = 1,
                [3] = 1,
                [4] = 1,
            },
            ["border_visible"] = true,
            ["border_edge"] = "Blizzard Achievement Wood",
            ["border_size"] = 25,
        },
    },
    ["height"] = 25,
    ["load"] = {
        ["use_petbattle"] = false,
        ["use_vehicle"] = false,
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["use_class"] = true,
        ["use_vehicleUi"] = false,
        ["class"] = {
            ["single"] = "WARLOCK",
            ["multi"] = {
            },
        },
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["sparkBlendMode"] = "ADD",
    ["useAdjustededMax"] = false,
    ["uid"] = "HFnwQezkmry",
    ["smoothProgress"] = true,
    ["useAdjustededMin"] = false,
    ["regionType"] = "aurabar",
    ["icon"] = false,
    ["anchorFrameType"] = "SCREEN",
    ["icon_side"] = "RIGHT",
    ["zoom"] = 0,
    ["sparkHeight"] = 30,
    ["texture"] = "Blizzard",
    ["spark"] = false,
    ["sparkTexture"] = "Interface\\\\CastingBar\\\\UI-CastingBar-Spark",
    ["auto"] = true,
    ["sparkHidden"] = "NEVER",
    ["id"] = "Soul Power",
    ["sparkColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["frameStrata"] = 1,
    ["width"] = 250,
    ["alpha"] = 1,
    ["config"] = {
        ["showAsPercent"] = false,
    },
    ["inverse"] = false,
    ["authorOptions"] = {
        [1] = {
            ["type"] = "toggle",
            ["key"] = "showAsPercent",
            ["useDesc"] = false,
            ["name"] = "Show As Percent",
            ["default"] = false,
            ["width"] = 1,
        },
    },
    ["orientation"] = "HORIZONTAL",
    ["conditions"] = {
    },
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
        },
        ["finish"] = {
        },
    },
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
}

-- EOF
