--[[
# Copyright (c) 2014-2016, latyas <latyas@gmail.com>
]]--

module("luci.controller.mac", package.seeall)

function index()
	
	if not nixio.fs.access("/etc/config/mac") then
		return
	end

	local page
	
	page = entry({"admin", "services", "mac"}, cbi("mac"), _("MAC Cloning"), 45)
	page.dependent = true
end
