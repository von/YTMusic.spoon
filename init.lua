--- === YTMusic ===
--- Control the YTMusic App (https://ytmusic.app/)
--- Works by sending key events to the app, so if the user interface changes,
--- that will break this app.
---
--- To see all the keyboard shortcuts that YTMusic.app has, use '?' in the app.

local YTMusic = {}


-- Metadata
YTMusic.name="YTMusic"
YTMusic.version="0.1"
YTMusic.author="Von Welch"
-- https://opensource.org/licenses/Apache-2.0
YTMusic.license="Apache-2.0"
YTMusic.homepage="https://github.com/von/YTMusic.spoon"

--- YTMusic:debug(enable)
--- Method
--- Enable or disable debugging
---
--- Parameters:
---  * enable - Boolean indicating whether debugging should be on
---
--- Returns:
---  * Nothing
function YTMusic:debug(enable)
  if enable then
    self.log.setLogLevel('debug')
    self.log.d("Debugging enabled")
  else
    self.log.d("Disabling debugging")
    self.log.setLogLevel('info')
  end
end

--- YTMusic:init()
--- Method
--- Initializes a YTMusic
--- When a user calls hs.loadSpoon(), Hammerspoon will load and execute init.lua
--- from the relevant s.
--- Do generally not perform any work, map any hotkeys, start any timers/watchers/etc.
--- in the main scope of your init.lua. Instead, it should simply prepare an object
--- with methods to be used later, then return the object.
---
--- Parameters:
---  * None
---
--- Returns:
---  * YTMusic object

function YTMusic:init()
  -- Set up logger for spoon
  self.log = hs.logger.new("YTMusic")

  -- Path to this file itself
  -- See also http://www.hammerspoon.org/docs/hs.spoons.html#resourcePath
  self.path = hs.spoons.scriptPath()

  self.appName = "YT Music"

  return self
end

--- YTMusic:bindHotKeys(table)
--- Method
--- The method accepts a single parameter, which is a table. The keys of the table
--- are strings that describe the action performed, and the values of the table are
--- tables containing modifiers and keynames/keycodes. E.g.
---   {
---     next = {{"cmd", "alt"}, "right"},
---     play = {{"cmd", "alt"}, "space"},
---     previous = {{"cmd", "alt"}, "left"},
---     skipAhead = {{"cmd", "alt", "shift"}, "right"},
---     skipBack = {{"cmd", "alt", "shift"}, "left"},
---     mute = {{"cmd", "alt"}, "m"},
---     volumeUp = {{"cmd", "alt"}, "+"},
---     volumeDown = {{"cmd", "alt"}, "="},
---    }
---
---
--- Parameters:
---  * table - Table of action to key mappings
---
--- Returns:
---  * YTMusic object

function YTMusic:bindHotKeys(table)
  for feature,mapping in pairs(table) do
    if feature == "next" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:nextTrack() end)
    elseif feature == "play" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:playPause() end)
    elseif feature == "previous" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:previousTrack() end)
    elseif feature == "skipAhead" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:skipAhead() end)
    elseif feature == "skipBack" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:skipBack() end)
    elseif feature == "mute" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:toggleMute() end)
    elseif feature == "volumeUp" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:volumeUp() end)
    elseif feature == "volumeDown" then
      hs.hotkey.bind(mapping[1], mapping[2], function() self:volumeDown() end)
    else
      self.log.wf("Unrecognized key binding feature '%s'", feature)
    end
  end
  return self
end

--- YTMusic:postEvent
--- Function
--- Post the event hs.eventtap.event to the YTMusic application.
---
--- Parameters:
--- * event: hs.eventtap.event to post
---
--- Returns:
--- * Nothing
function YTMusic:postEvent(event)
  local app = hs.application.get(self.appName)
  if app then
    event:post(app)
  else
    self.log.wf("Application %s not found.", self.appName)
  end
end

--- YTMusic:playPause()
--- Method
--- Play or pause.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:playPause()
  self:postEvent(hs.eventtap.event.newKeyEvent(";", true))
end

--- YTMusic:nextTrack()
--- Method
--- Advance to next track.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:nextTrack()
  -- Sending Cmd-<right> seems to confuse something and break quickly.
  self:postEvent(hs.eventtap.event.newKeyEvent("j", true))
end

--- YTMusic:previousTrack()
--- Method
--- Rewind to begining of current track or previous track if already at begining of
--- current track.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:previousTrack()
  -- Sending Cmd-<left> seems to confuse something and break quickly.
  self:postEvent(hs.eventtap.event.newKeyEvent("k", true))
end

--- YTMusic:skipAhead()
--- Method
--- Skip ahead 10 seconds.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:skipAhead()
  self:postEvent(hs.eventtap.event.newKeyEvent("l", true))
end

--- YTMusic:skipBack()
--- Method
--- Skip back 10 seconds.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:skipBack()
  self:postEvent(hs.eventtap.event.newKeyEvent("h", true))
end

--- YTMusic:toggleMute()
--- Method
--- Toggle the mute state of the application.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:toggleMute()
  self:postEvent(hs.eventtap.event.newKeyEvent("m", true))
end

--- YTMusic:volumeDown()
--- Method
--- Decrease the volume in the app.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:volumeDown()
  self:postEvent(hs.eventtap.event.newKeyEvent("-", true))
end

--- YTMusic:volumeUp()
--- Method
--- Increase the volume in the app.
---
--- Parameters:
--- * None
---
--- Returns:
--- * Nothing
function YTMusic:volumeUp()
  self:postEvent(hs.eventtap.event.newKeyEvent("=", true))
end

return YTMusic
