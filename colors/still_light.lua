--[[
	Author: MP
	Notes:
		hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
		bg, also set in terminal cfg: #1c2128
]]
local utils = require("utils")

local na = {}
local gray = {
	[0] = "#181A18",
	[1] = "#1c2128",
	[2] = "#222222",
	[3] = "#3b3b3b",
	[4] = "#484848",
	[5] = "#676767",
	[6] = "#DBD3C9",
}

local green = {
	[1] = "#4b8b51",
	[2] = "#8CA576",
	[3] = "#B3C3A4",
}

local blue = {
	[0] = "#0000ff",
	[2] = "#8296b0",
	[3] = "#9aabbc",
}

local red = {
	[0] = "#C3A4B3",
	[1] = "#e26d5c",
	[2] = "#ff0000"
}

local yellow = {
	[0] = "#FEAD4C",
}


-- highlight dictionary
local hl = {}

local function set_hl(hl_tbl)
	for group, opts in pairs(hl_tbl) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end


--------------------------------------------------
-- UI
--------------------------------------------------
hl["ColorColumn"] = na
hl["Cursor"] = { bg = yellow[0] }
hl["CursorLine"] = { fg = yellow[0], bg = utils.shade_color(gray[3], -25) }
hl["CursorLineNr"] = { fg = yellow[0] }
hl["Directory"] = { fg = blue[2] }
hl["Error"] = { fg = red[2] }
hl["ModeMsg"] = { fg = green[3] }
hl["MsgArea"] = na
hl["NonText"] = { fg = gray[4] }
hl["Normal"] = { fg = gray[6], bg = gray[1] }
hl["PmenuSel"] = { bg = gray[4] }
hl["Question"] = { fg = green[3] }
hl["Search"] = { fg = blue[2], bg = gray[3] }
hl["SpecialComment"] = { fg = yellow[0], bold = true }
hl["SpecialKey"] = { fg = yellow[0], bold = true }
hl["StatusLine"] = { bg = gray[3] }
hl["StatusLineNC"] = na
hl["Substitute"] = { fg = red[2], bg = gray[3] }
hl["TabLineFill"] = na
hl["VertSplit"] = { fg = gray[3] }
hl["Visual"] = { bg = utils.shade_color(red[2], -75) }
hl["Conceal"] = { link = "Normal" }
hl["Delimiter"] = { link = "Special" }
hl["EndOfBuffer"] = { link = "NonText" }
hl["ErrorMsg"] = { link = "Error" }
hl["FloatBorder"] = { link = "Pmenu" }
hl["FoldColumn"] = { link = "Folded" }
hl["Folded"] = { link = "NonText" }
hl["IncSearch"] = { link = "Search" }
hl["Label"] = { link = "SpecialComment" }
hl["LineNr"] = { link = "NonText" }
hl["MatchParen"] = { link = "CursorLine" }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["Pmenu"] = { link = "StatusLine" }
hl["PmenuThumb"] = { link = "PmenuSel" }
hl["PmenuSbar"] = { link = "Pmenu" }
hl["QuickFixLine"] = { link = "Search" }
hl["SignColumn"] = { link = "Normal" }
hl["SpecialChar"] = { link = "Special" }
hl["TermCursor"] = { link = "NonText" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { link = "Normal" }


--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Character"] = { fg = green[2] }
hl["Comment"] = { fg = gray[5] }
hl["Constant"] = { fg = red[0] }
hl["Exception"] = { fg = red[2] }
hl["Keyword"] = { fg = blue[2] }
hl["Number"] = { fg = red[1] }
hl["Operator"] = { fg = yellow[0] }
hl["PreProc"] = { bg = gray[1] }
hl["Special"] = na
hl["String"] = { fg = green[3] }
hl["Tag"] = na
hl["Type"] = { fg = blue[3] }
hl["Boolean"] = { link = "Constant" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Function"] = { link = "Normal" }
hl["Identifier"] = { link = "Normal" }
hl["Include"] = { link = "PreProc" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["Repeat"] = { link = "Statement" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Typedef"] = { link = "Type" }


--------------------------------------------------
-- Filetype
--------------------------------------------------
-- diff
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["DiffAdd"] = { bg = "#121c04" }
hl["DiffDelete"] = { bg = utils.shade_color(red[2], -70) }
hl["DiffChange"] = { bg = "#232c4c" }
hl["DiffText"] = { bg = "#3B4A80" }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitDiscardedType"] = { link = "DiffDelete" }
hl["gitcommitHeader"] = { bg = gray[1] }
hl["gitcommitOnBranch"] = { bg = gray[1] }
hl["gitcommitType"] = { fg = red[0] }
hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "DiffAdd" }
hl["gitcommitBranch"] = { link = "DiffAdd" }
hl["gitcommitDiscarded"] = { link = "DiffAdd" }
hl["gitcommitDiscardedFile"] = { link = "DiffAdd" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "DiffAdd" }

-- Gitcommit diffs
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = utils.update(hl["DiffDelete"], { fg = nil })

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl["helpCommand"] = { link = "Normal" }
hl["helpExample"] = { link = "String" }
hl["helpHyperTextEntry"] = { link = "Directory" }
hl["helpOption"] = { link = "Normal" }
hl["helpVim"] = { link = "Normal" }

-- Markdown
-- rules = horizontal bars
hl["markdownRule"] = { link = "NonText" }
hl["markdownHeadingRule"] = { link = "markdownRule" }


--------------------------------------------------
-- Lsp
--------------------------------------------------
for type, color in pairs({
	Error = red[2],
	Warn = yellow[0],
	Info = blue[2],
	Hint = gray[6],
	Ok = green[1]
}) do
	hl["Diagnostic" .. type] = { fg = color }
	hl["DiagnosticSign" .. type] = utils.update(hl["Normal"], { fg = color })
	hl["DiagnosticVirtualText" .. type] = {
		fg = color,
		bg = utils.shade_color(color, -80)
	}
	hl["DiagnosticUnderline" .. type] = { sp = color, underline = true }
end

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = red[2] }


--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@keyword.operator"] = { link = "Operator" }
hl["@namespace"] = { fg = blue[2] }
hl["@property"] = { link = "@field" }
hl["@punctuation.special"] = { link = "Normal" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.regex"] = { fg = green[1] }
hl["@string.special"] = { link = "@string.regex" }
hl["@text.emphasis"] = { reverse = true } -- "Normal" for markup languages
hl["@text.literal"] = { link = "Normal" }
hl["@text.strong"] = { bold = true }
hl["@text.underline"] = { underline = true }
hl["@text.uri"] = { fg = blue[3] }

-- Comment keywords
for type, color in pairs({
	danger = red[2],
	warning = yellow[0],
	todo = yellow[0],
	note = blue[2],
}) do
	hl["@text." .. type] = { fg = color, bold = true }
end


vim.g.colors_name = "still_light"

-- call highlight
set_hl(hl)
