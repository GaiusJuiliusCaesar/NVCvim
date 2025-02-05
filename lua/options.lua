-- lua/options.lua

require "nvchad.options"

-- add yours here!

local opt = vim.opt

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- Set Encoding
opt.encoding = "utf-8"
-- Set ColorColumn
opt.colorcolumn = "80"
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
