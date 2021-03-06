local U = unpack(select(2,...))
local name = "ArkInventorySkin"
local function SkinArkInventory(self)
local ArkInventory = LibStub("AceAddon-3.0"):GetAddon("ArkInventory")
	local _G = _G
	local s = U.s
	local c = U.c
	ArkInventory.Frame_Main_Paint_ = ArkInventory.Frame_Main_Paint
	ArkInventory.Frame_Main_Paint = function(frame)
		if not ArkInventory.ValidFrame(frame, true) then return	end
		for i = 1, select("#",frame:GetChildren()) do
			local subframe = select(i,frame:GetChildren())
			local name = subframe:GetName()
			if name then
				if _G[name.."ArkBorder"] then _G[name.."ArkBorder"]:Hide() end
				if _G[name.."Background"] then _G[name.."Background"]:Hide() end
			end
			U.SkinFrame(subframe)
		end
	end

	ArkInventory.Frame_Container_Draw_ = ArkInventory.Frame_Container_Draw
	ArkInventory.Frame_Container_Draw = function(frame)
		local loc_id = frame.ARK_Data.loc_id
		return ArkInventory.Frame_Container_Draw_(frame)
	end

	ArkInventory.Frame_Main_Anchor_Set_ = ArkInventory.Frame_Main_Anchor_Set
	ArkInventory.Frame_Main_Anchor_Set = function(loc_id)
		ArkInventory.Frame_Main_Anchor_Set_(loc_id)
		local frame = ArkInventory.Frame_Main_Get(loc_id)
		frame = frame:GetName()
		local title = _G[frame..ArkInventory.Const.Frame.Title.Name]
		local search = _G[frame..ArkInventory.Const.Frame.Search.Name]
		local container = _G[frame..ArkInventory.Const.Frame.Container.Name]
		local changer = _G[frame..ArkInventory.Const.Frame.Changer.Name]
		local status = _G[frame..ArkInventory.Const.Frame.Status.Name]
		title:ClearAllPoints()
		title:SetPoint("TOPLEFT")
		title:SetPoint("TOPRIGHT")
		search:ClearAllPoints()
		search:SetPoint("TOPLEFT",title,"BOTTOMLEFT",0,-2)
		search:SetPoint("TOPRIGHT",title,"BOTTOMRIGHT",0,-2)
		container:ClearAllPoints()
		container:SetPoint("TOPLEFT",search,"BOTTOMLEFT",0,-2)
		container:SetPoint("TOPRIGHT",search,"BOTTOMRIGHT",0,-2)
		changer:ClearAllPoints()
		changer:SetPoint("TOPLEFT",container,"BOTTOMLEFT",0,-2)
		changer:SetPoint("TOPRIGHT",container,"BOTTOMRIGHT",0,-2)
		status:ClearAllPoints()
		status:SetPoint("TOPLEFT",changer,"BOTTOMLEFT",0,-2)
		status:SetPoint("TOPRIGHT",changer,"BOTTOMRIGHT",0,-2)
		ARKINV_Frame4ChangerWindowPurchaseInfo:ClearAllPoints()
		ARKINV_Frame4ChangerWindowPurchaseInfo:SetPoint("TOP", ARKINV_Frame4ChangerWindowGoldAvailable, "BOTTOM", 0, -12)

		_G[status:GetName().."EmptyText"]:SetPoint("LEFT",2,0)
		_G[status:GetName().."EmptyText"]:SetFont(c["media"].font, 12)

		_G[status:GetName().."GoldCopperButton"]:SetPoint("RIGHT",-1,0)
		_G[status:GetName().."GoldCopperButtonText"]:SetFont(c["media"].font,12)

		_G[status:GetName().."GoldSilverButton"]:SetPoint("RIGHT",_G[status:GetName().."GoldCopperButtonText"],"LEFT",-1,0)
		_G[status:GetName().."GoldSilverButtonText"]:SetFont(c["media"].font,12)
		
		_G[status:GetName().."GoldGoldButton"]:SetPoint("RIGHT",_G[status:GetName().."GoldSilverButtonText"],"LEFT",-1,0)
		_G[status:GetName().."GoldGoldButtonText"]:SetFont(c["media"].font,12)
	end

	ArkInventory.Frame_Bar_Paint_ = ArkInventory.Frame_Bar_Paint
	ArkInventory.Frame_Bar_Paint = function(bar)

		local loc_id = bar.ARK_Data.loc_id
		ArkInventory.LocationOptionSet(loc_id, "bar", "name", "height", 18)
		ArkInventory.Frame_Bar_Paint_(bar)
		if not bar then return end
		local name = bar:GetName()
		if _G[name.."ArkBorder"] then _G[name.."ArkBorder"]:Hide() end
		if _G[name.."Background"] then _G[name.."Background"]:Hide() end
		U.SkinFrame(bar)

		if ArkInventory.Global.Mode.Edit then
			bar:SetBackdropBorderColor(1,0,0,1)
			bar:SetBackdropColor(1,0,0,.1)
		end
	end

	ArkInventory.SetItemButtonTexture_ = ArkInventory.SetItemButtonTexture
	ArkInventory.SetItemButtonTexture = function(frame, texture, r, g, b)
		if not frame or not _G[frame:GetName().."IconTexture"] then return end
		local obj = _G[frame:GetName().."IconTexture"]
		if not texture then
			obj:Hide()
		else
			obj:SetTexture(texture)
			obj:SetTexCoord(.08, .92, .08, .92)
			obj:SetVertexColor(r or 1, r and g or 1, r and b or 1)
			obj:ClearAllPoints()
			obj:SetPoint("TOPLEFT",2,-2)
			obj:SetPoint("BOTTOMRIGHT",-2,2)
		end
	end

	ArkInventory.Frame_Item_Update_Border_ = ArkInventory.Frame_Item_Update_Border
	ArkInventory.Frame_Item_Update_Border = function(frame)
		ArkInventory.Frame_Item_Update_Border_(frame)
		if not frame or not _G[frame:GetName().."ArkBorder"] then return end
		local obj = _G[frame:GetName().."ArkBorder"]
		local r,g,b,a = obj:GetBackdropBorderColor()
		obj:Hide()
		frame:SetTemplate("Transparent")
		frame:SetBackdropBorderColor(r,g,b,a)
	end

end

U.RegisterSkin(name,SkinArkInventory)