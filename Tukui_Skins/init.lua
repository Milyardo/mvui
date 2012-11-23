-- init for Tukui_Skins

local addon,Engine = ...

local AddOn = {};

Engine[1] = AddOn
UISkins = Engine

AddOn.FrameLocks = {}
AddOn.ColorFrame = {}
AddOn.ColorScroll = {}
AddOn.ColorSlider = {}
AddOn.ColorBackdrop = {}

local T, C, L = unpack(Tukui)
AddOn.s = T
AddOn.c = C
AddOn.ccolor = T.myclass
