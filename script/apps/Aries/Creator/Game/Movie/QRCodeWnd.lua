--[[
Title: minimap UI window
Author(s): 
Date: 
Desc: 
use the lib:
------------------------------------------------------------
NPL.load("(gl)script/apps/Aries/Creator/Game/Movie/QRCodeWnd.lua");
local QRCodeWnd = commonlib.gettable("MyCompany.Aries.Game.Movie.QRCodeWnd");
QRCodeWnd:Show();
-------------------------------------------------------
]]
NPL.load("(gl)script/ide/System/Windows/Window.lua");
local Window = commonlib.gettable("System.Windows.Window");
local QRCodeWnd = commonlib.inherit(nil, commonlib.gettable("MyCompany.Aries.Game.Movie.QRCodeWnd"));

function QRCodeWnd:Show(width, height)
	width = width or 128;
	height = height or 128;
	if(not self.window) then
		local window = Window:new();
		window:EnableSelfPaint(true);
		window:SetAutoClearBackground(false);
		self.window = window;
	end
	
	self.window:Show({
		name="QRCodeWnd", 
		url="script/apps/Aries/Creator/Game/Movie/QRCodeWnd.html",
		alignment="_ct", left=-width/2, top=-height/2 - 30, width = width, height = height, zorder = 100,
	});
end

function QRCodeWnd:Hide()
	self.window:hide();
end
