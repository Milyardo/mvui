local U = unpack(select(2,...))
local name = "TinyDPSSkin"
local function SkinTinyDps(self)
	local s = U.s
	local c = U.c
	local frame = tdpsFrame
	local anchor = tdpsAnchor
	local status = tdpsStatusBar
	local tdps = tdps
	local font = tdpsFont
	local position = tdpsPosition
	local template
	U.SkinFrame(frame)
	if(tdps) then
		tdps.width = TukuiMinimap:GetWidth()
	end
	if(status) then
		tdpsStatusBar:SetBackdrop( {
			bgFile = c["media"].normTex,
			edgeFile = c["media"].blank,
			tile = false,
			tileSize = 0,
			edgeSize = 1,
			insets = {
				left = 0,
				right = 0,
				top = 0,
				bottom = 0
			}
		})
		tdpsStatusBar:SetStatusBarTexture(c["media"].normTex)
	end
end

U.RegisterSkin(name,SkinTinyDps)

function EmbedTDPS()
	if not IsAddOnLoaded("TinyDPS") then U.DisableOption("EmbedTDPS") return end
	if TukuiChatBackgroundRight then tdpsFrame:SetParent(TukuiChatBackgroundRight) end
	U.SkinFrameD(tdpsFrame)
	tdpsFrame:SetFrameStrata("MEDIUM")
	tdpsFrame.spacing = 0
	tdpsFrame.barHeight = 14
	tdpsVisibleBars = 9
	EmbedTDPSResize()
	tdpsAnchor:Point("TOPLEFT", EmbeddingWindow, "TOPLEFT", 0, 0)

	tdpsRefresh()
	if (U.CheckOption("EmbedOoC")) then
		if (U.CheckOption("EmbedTDPS")) then
			tdpsFrame:Hide()
		end
	end
end

function EmbedTDPSResize()
	tdpsFrame:SetWidth(EmbeddingWindow:GetWidth())
	tdpsRefresh()
end

local TinyDPS_Embed = CreateFrame("Frame",nil)
	TinyDPS_Embed:RegisterEvent("PLAYER_ENTERING_WORLD")
	TinyDPS_Embed:SetScript("OnEvent", function(self)
		if(U.CheckOption("EmbedTDPS")) then
			EmbedTDPS()
		end
	end)