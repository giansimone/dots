-- giansimone's ~/.config/nvim/init.lua
-- 2025 Giansimone Perrino

--------------------------------------------------------------------------------
-- Color Scheme
--------------------------------------------------------------------------------

vim.cmd("colorscheme habamax")

--------------------------------------------------------------------------------
-- Indentation Settings
--------------------------------------------------------------------------------

vim.opt.softtabstop = 4		-- Treat 4 spaces as a tab for backspace
vim.opt.shiftwidth = 4		-- Indent width for >> and <<
vim.opt.expandtab = true	-- Use spaces instead of tabs

--------------------------------------------------------------------------------
-- Search Rules
--------------------------------------------------------------------------------

vim.opt.incsearch = true	-- Highlight search matches while typing
vim.opt.ignorecase = true	-- Ignore case when searching...
vim.opt.smartcase = true	-- ...unless an uppercase letter is used
vim.opt.ruler = true		-- Show cursor position in bottom right
vim.opt.showmode = true		-- Show mode (INSERT, VISUAL) at bottom
vim.opt.autoindent = true	-- New lines inherit indentation
vim.opt.backspace = "indent,eol,start" -- Allow backspacing over everything

--------------------------------------------------------------------------------
-- Clipboard
--------------------------------------------------------------------------------

vim.opt.clipboard = "unnamedplus"

--------------------------------------------------------------------------------
-- Status Line
--------------------------------------------------------------------------------

vim.opt.laststatus = 2                       -- Always show the status line

vim.api.nvim_set_hl(0, "StatusBrown", {
    fg = "brown",
    bg = "black",
    ctermfg = "brown",
    ctermbg = "black",
})

vim.api.nvim_set_hl(0, "StatusDarkYellow", {
    fg = "darkyellow",
    bg = "black",
    ctermfg = "darkyellow",
    ctermbg = "black",
})

vim.api.nvim_set_hl(0, "StatusRed", {
    fg = "red",
    bg = "black",
    ctermfg = "red",
    ctermbg = "black",
})

vim.api.nvim_set_hl(0, "StatusDarkCyan", {
    fg = "darkcyan",
    bg = "black",
    ctermfg = "darkcyan",
    ctermbg = "black",
})

vim.api.nvim_set_hl(0, "StatusWhite", {
    fg = "white",
    bg = "black",
    ctermfg = "white",
    ctermbg = "black",
})

vim.opt.statusline = 
    "%#StatusDarkCyan#%n %*" ..              -- Buffer number
    "%#StatusDarkYellow#%{&ff}%*" ..         -- File format
    "%#StatusRed#%y%*" ..                    -- File type
    "%#StatusWhite# %<%F%*" ..               -- Full path with truncation point
    "%#StatusRed#%m%r%h%*" ..                -- Modified + ReadOnly + Help flags
    "%#StatusWhite#%=%5l%*" ..               -- Current line
    "%#StatusBrown#/%L%*" ..                 -- Total lines
    "%#StatusWhite#%4v %*" ..                -- Virtual column
    "%#StatusDarkYellow#0x%04B %*"           -- Hex character under the cursor
