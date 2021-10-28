
-- Import libraries
local GUI = require("GUI")
local system = require("System")

---------------------------------------------------------------------------------

-- Add a new window to MineOS workspace
local workspace, window, menu = system.addWindow(GUI.filledWindow(1, 1, 50, 40, 0xE1E1E1))

-- Get localization table dependent of current system language
local localization = system.getCurrentScriptLocalization()

-- Add single cell layout to window
local layout = window:addChild(GUI.layout(1, 1, window.width, window.height, 1, 1))

-- Add nice gray text object to layout
layout:addChild(GUI.text(1, 1, 0x4B4B4B, localization.greeting .. system.getUser()))
layout:addChild(GUI.text(2, 2, 0x4B4B4B, localization.infoscripts))
layout:addChild(GUI.text(3, 3, 0x4B4B4B, "WANNACRY | maxduhmin3"))
layout:addChild(GUI.text(4, 4, 0x4B4B4B, "Virus. | McMaarten"))
layout:addChild(GUI.text(5, 5, 0x4B4B4B, "Вирус Anarchy | ReDect"))
layout:addChild(GUI.text(6, 6, 0x4B4B4B, "virus + | maxduhmine"))
layout:addChild(GUI.text(7, 7, 0x4B4B4B, "ram killer | jirka086"))
layout:addChild(GUI.text(8, 8, 0x4B4B4B, "ESC Virus | debiloid"))
layout:addChild(GUI.text(9, 9, 0x4B4B4B, localization.infolibs))
layout:addChild(GUI.text(10, 10, 0x4B4B4B, "-"))
layout:addChild(GUI.text(11, 11, 0x4B4B4B, localization.infoapps))
layout:addChild(GUI.text(12, 12, 0x4B4B4B, "Solaris virus | KKosty4ka"))
layout:addChild(GUI.text(13, 13, 0x4B4B4B, "ScramDisk - ORIGINAL | KKosty4ka"))
layout:addChild(GUI.text(14, 14, 0x4B4B4B, "Гоблинский перевод | KKosty4ka"))
layout:addChild(GUI.text(15, 15, 0x33DB40, "Version 1.04 | Lase base update: 28.10.2021"))

-- Customize MineOS menu for this application by your will
menu:addItem("×").onTouch = function()
	window:remove()
end

-- You can also add items without context menu
menu:addItem("?").onTouch = function()
	GUI.alert(localization.info)
end

-- Create callback function with resizing rules when window changes its' size
window.onResize = function(newWidth, newHeight)
  window.backgroundPanel.width, window.backgroundPanel.height = newWidth, newHeight
  layout.width, layout.height = newWidth, newHeight
end

---------------------------------------------------------------------------------

-- Draw changes on screen after customizing your window
workspace:draw()
