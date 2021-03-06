#!/usr/bin/env resty
-- It is unfortunate that this script has to exist.
-- Copied from: https://github.com/thibaultcha/lua-resty-busted
-- In short: resty adds a bunch of lua libs to the path. This hack
-- allows us to run busted in a lua-nginx context so that these libs are
-- available when our tests run.

if ngx ~= nil then
  ngx.exit = function()end
end

-- Busted command-line runner
require 'busted.runner'({ standalone = false })
