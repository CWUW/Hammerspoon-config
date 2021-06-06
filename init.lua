local hyper = {"cmd", "alt", "ctrl", "shift"}

hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)

hs.notify.new({
  title="Hammerspoon",
  informativeText="Config has been reloaded."
}):send()

local applicationHotkeys = {
  b = 'Google Chrome',
  t = "iTerm",
  i = "IntelliJ IDEA",
  w = "WebStorm",
  m = "Mail"
}

for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end
