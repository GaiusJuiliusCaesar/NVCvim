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
-- Backup and Swapfile
opt.backup = false
opt.writebackup = false
opt.swapfile = false
-- Relative Line number
opt.relativenumber = true
