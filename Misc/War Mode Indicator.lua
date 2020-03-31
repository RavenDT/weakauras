--[[ War Mode Indicator ]]--


--[[

Compressed String

!nF5xVjooqa8VlR0j1(qrj8)Es3daf0rfLYItV2NcysmG3gI5SD6FqRYN9DgNesOBOLQRpCIUSjtNXEgpZ8BCDTDDCjkxs1k2nR00LSXL4J)asxq9E0xk22teiKGGX2MFQA(UM576UJTQ0WvdklK(mz3utCjDd472rL(XZDeIanherJ0RfYB3Q5IqfSE7TYDHl51BxUuX0UdABzvVE92xwVHDRMnA10D5f1Rdgh6bgprWdbZ61FSt)PzMt47yOBL(Ar31Y4Uwg31Y4U25B7WqCdbjKxY28lAxTEZAvBDz9wvVSzRMTXDVgS7EzonrPPsDI3Zd5PpTeEuT28m8MwYxTIjvjoHZEb4J(Sfrlx686wMl5V7pAYG7gb)EZR0ijfIc1wwqWq)0tiv0c2tSqnbSI)IlzwVoeNzeNotHflcDaY2a6RWItcPByPwzmb2agnqVoFrMizMfHmP)OrOErH5UMoX5toB67Vc8iY)grLS45dIccINF)AUMHrTMjdPb)deHWHcCcdLns2k45KWALuebPBTW7PmvABvZYcmfkTUNkJNFJWhumcFx49Wk66V)4d16cNJsigGJlQMI5S0S(auAYAt6nTF)Xqe5rdyMCNNiCjFvXYP0KjKTXaFQXZspxOH8numvwmtME8hkcHV9HKaQWSeHkgS(qUaSDdLhE6AVVI400xBceFEHEJab10ggPyZ8cOkf2MafhEOWnrqpvw9wYV9TsvyBXBeIIzbltBJ6ERJZT3mQ)aZ(5TVCvePd4O7E7DoJgoUp6BVhcW0t5fP0InoSxWGpk00WCwLkvop(645jF4lJN3B2KNMuzOckdWIGRykUK5F25XZ1RzH56M9rdly88)kE(3(P3YLww4)6pUt3r9V6NYVLRplqX(iRBBHFUAiPeZd9ly9(NKmDKmmDDUgukhub8KYHs5he3T1NIDmrP)paafy5N39CFSTSd8(XylfikzCgIVywYIdvcFiOblBObptFvPLrm3UPswOeYfM2VUhqmEhUu6EcWIuSIMVH5NjpRuwt1rQ3IKsnO3AkKgUHPuueR8jiCznmUe7Ch5iLx7twq8MMSkh8r8wZ8EmpVGhmg)UBQhdXX(WBn3p)mOeKjXNR(HXHEctXHVUVcirTrIvCVpJptnlvQ1Mm14lSTsQdkH8wos7iGMIWOciTtt7CK2jPpAHaZ(dK8DXZ)Ee1h56WfcC(DWCgS7iOSYOEywdRinxF4iWo0bsUEGD9dhsPnGQ3YC)bK54lHuObk(HJWGyXSmpdZDUxsHHE3V)PdgLz)oJYkoadQLWwNKvD)28NXZ)dp7sq353CbPrqfoZpbTmUk6RLCHlZi3Pp84KbEoT7DgEjaGM7Cse(9KVwhJ8b30Zx8Ci5z(wdFjtG52eqwIdXkk)94whYCkLXCqNzkm6KUXZ7ZAkqd)8KMelgIb4x54p8eZmaZUEJgTVS2hnWlx)AvRzBFYd4m2LgjhchpewFiEVSHgFbis9xkG8rgBBhKGONIqlSo8)Zxd0NPGQCjE2V435KRz8vRXE2g5mZ)73jSiy00JcDWjyKgfqm2itjRLgruxXv0fbq33IK72yAT)qKzspsjSPtMy(5(RXmiVowdOd3DU9lxFgQj6IMZ3IW3c41CI2HZhObBxN4C7eaFySvYw8eoFPkcjD)1d

]]--


-- Dynamic Group
{
    ["backdropColor"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 0.5,
    },
    ["controlledChildren"] = {
        [1] = "War Mode Text",
        [2] = "War Mode Icon",
    },
    ["borderBackdrop"] = "Blizzard Tooltip",
    ["scale"] = 1,
    ["preferToUpdate"] = false,
    ["border"] = false,
    ["yOffset"] = 455.00024414063,
    ["anchorPoint"] = "CENTER",
    ["borderSize"] = 2,
    ["borderColor"] = {
        [1] = 0,
        [2] = 0,
        [3] = 0,
        [4] = 1,
    },
    ["borderEdge"] = "Square Full White",
    ["xOffset"] = -937.49894714355,
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["type"] = "aura2",
                ["subeventSuffix"] = "_CAST_START",
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["names"] = {
                },
                ["unit"] = "player",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
        },
    },
    ["regionType"] = "group",
    ["borderOffset"] = 4,
    ["config"] = {
    },
    ["selfPoint"] = "BOTTOMLEFT",
    ["id"] = "War Mode",
    ["authorOptions"] = {
    },
    ["frameStrata"] = 3,
    ["anchorFrameType"] = "SCREEN",
    ["internalVersion"] = 26,
    ["borderInset"] = 1,
    ["tocversion"] = 80300,
    ["subRegions"] = {
    },
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
    ["conditions"] = {
    },
    ["load"] = {
        ["use_class"] = false,
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
    ["uid"] = "ocXgahQkX3B",
}

-- War Mode Text
{
    ["outline"] = "OUTLINE",
    ["parent"] = "War Mode",
    ["displayText"] = "War Mode: %c1",
    ["customText"] = "function(...)\\n    if C_PvP.IsWarModeDesired() then\\n        text = \\\"|cff00ff00ENABLED|r\\\"\\n    else\\n        text = \\\"|cff808080DISABLED|r\\\"\\n    end\\n    \\n    return text\\nend",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["customTextUpdate"] = "update",
    ["automaticWidth"] = "Auto",
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
            ["do_custom"] = false,
        },
        ["finish"] = {
        },
    },
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["use_alwaystrue"] = true,
                ["duration"] = "1",
                ["subeventPrefix"] = "SPELL",
                ["debuffType"] = "HELPFUL",
                ["type"] = "custom",
                ["subeventSuffix"] = "_CAST_START",
                ["custom"] = "function(...)\\n    return true\\nend",
                ["names"] = {
                },
                ["event"] = "Chat Message",
                ["custom_hide"] = "custom",
                ["unevent"] = "timed",
                ["use_absorbMode"] = true,
                ["events"] = "",
                ["use_unit"] = true,
                ["check"] = "update",
                ["spellIds"] = {
                },
                ["unit"] = "player",
                ["custom_type"] = "status",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "any",
        ["customTriggerLogic"] = "function(...)\\n    return true\\nend",
        ["activeTriggerMode"] = -10,
    },
    ["internalVersion"] = 26,
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
    ["font"] = "Friz Quadrata TT",
    ["subRegions"] = {
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
        ["use_never"] = false,
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["fontSize"] = 14,
    ["regionType"] = "text",
    ["selfPoint"] = "BOTTOM",
    ["preferToUpdate"] = false,
    ["justify"] = "LEFT",
    ["tocversion"] = 80300,
    ["id"] = "War Mode Text",
    ["config"] = {
    },
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["uid"] = "RXkPFcT8C(L",
    ["authorOptions"] = {
    },
    ["xOffset"] = 0,
    ["fixedWidth"] = 200,
    ["wordWrap"] = "WordWrap",
    ["conditions"] = {
    },
}

-- War Mode Icon
{
    ["color"] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 1,
    },
    ["preferToUpdate"] = false,
    ["yOffset"] = 7,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        [1] = {
            ["trigger"] = {
                ["type"] = "custom",
                ["custom_type"] = "status",
                ["custom"] = "function(...)\\n    return true\\nend",
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["names"] = {
                },
                ["unit"] = "player",
                ["spellIds"] = {
                },
                ["customIcon"] = "function(...)\\n    if C_PvP.IsWarModeDesired() then\\n        icon = 1455893\\n    else\\n        icon = 132311\\n    end\\n    \\n    return icon\\nend",
                ["check"] = "update",
                ["debuffType"] = "HELPFUL",
                ["subeventSuffix"] = "_CAST_START",
                ["custom_hide"] = "timed",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "any",
        ["customTriggerLogic"] = "function(t)\\n    return true\\nend",
        ["activeTriggerMode"] = -10,
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
    ["height"] = 25,
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
    ["parent"] = "War Mode",
    ["uid"] = "A0FaIz)1xJ(",
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["frameStrata"] = 1,
    ["cooldownTextDisabled"] = false,
    ["auto"] = true,
    ["tocversion"] = 80300,
    ["id"] = "War Mode Icon",
    ["zoom"] = 0,
    ["alpha"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["selfPoint"] = "CENTER",
    ["config"] = {
    },
    ["inverse"] = false,
    ["authorOptions"] = {
    },
    ["conditions"] = {
    },
    ["xOffset"] = 100,
    ["width"] = 25,
}

-- EOF

