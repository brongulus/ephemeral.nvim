local nord = require("ephemeral.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = ephemeral.ephemeral9_gui }, -- int, long, char, etc.
		StorageClass = { fg = ephemeral.ephemeral9_gui }, -- static, register, volatile, etc.
		Structure = { fg = ephemeral.ephemeral9_gui }, -- struct, union, enum, etc.
		Constant = { fg = ephemeral.ephemeral4_gui }, -- any constant
		Character = { fg = ephemeral.ephemeral14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = ephemeral.ephemeral15_gui }, -- a number constant: 5
		Boolean = { fg = ephemeral.ephemeral9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = ephemeral.ephemeral15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = ephemeral.ephemeral9_gui }, -- any statement
		Label = { fg = ephemeral.ephemeral9_gui }, -- case, default, etc.
		Operator = { fg = ephemeral.ephemeral9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = ephemeral.ephemeral9_gui }, -- try, catch, throw
		PreProc = { fg = ephemeral.ephemeral9_gui }, -- generic Preprocessor
		Include = { fg = ephemeral.ephemeral9_gui }, -- preprocessor #include
		Define = { fg = ephemeral.ephemeral9_gui }, -- preprocessor #define
		Macro = { fg = ephemeral.ephemeral9_gui }, -- same as Define
		Typedef = { fg = ephemeral.ephemeral9_gui }, -- A typedef
		PreCondit = { fg = ephemeral.ephemeral13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = ephemeral.ephemeral4_gui }, -- any special symbol
		SpecialChar = { fg = ephemeral.ephemeral13_gui }, -- special character in a constant
		Tag = { fg = ephemeral.ephemeral4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = ephemeral.ephemeral6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = ephemeral.ephemeral8_gui }, -- special things inside a comment
		Debug = { fg = ephemeral.ephemeral11_gui }, -- debugging statements
		Underlined = { fg = ephemeral.ephemeral14_gui, bg = ephemeral.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = ephemeral.ephemeral1_gui }, -- left blank, hidden
		Error = { fg = ephemeral.ephemeral11_gui, bg = ephemeral.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = ephemeral.ephemeral13_gui, bg = ephemeral.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = ephemeral.none, bg = ephemeral.ephemeral0_gui },

		htmlLink = { fg = ephemeral.ephemeral14_gui, style = "underline" },
		htmlH1 = { fg = ephemeral.ephemeral8_gui, style = "bold" },
		htmlH2 = { fg = ephemeral.ephemeral11_gui, style = "bold" },
		htmlH3 = { fg = ephemeral.ephemeral14_gui, style = "bold" },
		htmlH4 = { fg = ephemeral.ephemeral15_gui, style = "bold" },
		htmlH5 = { fg = ephemeral.ephemeral9_gui, style = "bold" },
		markdownH1 = { fg = ephemeral.ephemeral8_gui, style = "bold" },
		markdownH2 = { fg = ephemeral.ephemeral11_gui, style = "bold" },
		markdownH3 = { fg = ephemeral.ephemeral14_gui, style = "bold" },
		markdownH1Delimiter = { fg = ephemeral.ephemeral8_gui },
		markdownH2Delimiter = { fg = ephemeral.ephemeral11_gui },
		markdownH3Delimiter = { fg = ephemeral.ephemeral14_gui },
	}

	-- Italic comments
	if vim.g.ephemeral_italic == false then
		syntax.Comment = { fg = ephemeral.ephemeral3_gui_bright } -- normal comments
		syntax.Conditional = { fg = ephemeral.ephemeral9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Function = { fg = ephemeral.ephemeral8_gui } -- normal function names
		syntax.Identifier = { fg = ephemeral.ephemeral9_gui } -- any variable name
		syntax.Keyword = { fg = ephemeral.ephemeral9_gui } -- normal for, do, while, etc.
		syntax.Repeat = { fg = ephemeral.ephemeral9_gui } -- normal any other keyword
		syntax.String = { fg = ephemeral.ephemeral14_gui } -- any string
	else
		syntax.Comment = { fg = ephemeral.ephemeral3_gui_bright, bg = ephemeral.none, style = "italic" } -- italic comments
		syntax.Conditional = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.none, style = "italic" } -- italic if, then, else, endif, switch, etc.
		syntax.Function = { fg = ephemeral.ephemeral8_gui, bg = ephemeral.none, style = "italic" } -- italic funtion names
		syntax.Identifier = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.none, style = "italic" } -- any variable name
		syntax.Keyword = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.none, style = "italic" } -- italic for, do, while, etc.
		syntax.Repeat = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.none, style = "italic" } -- italic any other keyword
		syntax.String = { fg = ephemeral.ephemeral14_gui, bg = ephemeral.none, style = "italic" } -- any string
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.float }, -- normal text and background color
		FloatBorder = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.float }, -- normal text and background color
		ColorColumn = { fg = ephemeral.none, bg = ephemeral.ephemeral1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = ephemeral.ephemeral1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = ephemeral.ephemeral5_gui, bg = ephemeral.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = ephemeral.ephemeral7_gui, bg = ephemeral.none }, -- directory names (and other special names in listings)
		DiffAdd = { fg = ephemeral.ephemeral14_gui, bg = ephemeral.none, style = "reverse" }, -- diff mode: Added line
		DiffChange = { fg = ephemeral.ephemeral13_gui, bg = ephemeral.none, style = "reverse" }, --  diff mode: Changed line
		DiffDelete = { fg = ephemeral.ephemeral11_gui, bg = ephemeral.none, style = "reverse" }, -- diff mode: Deleted line
		DiffText = { fg = ephemeral.ephemeral15_gui, bg = ephemeral.none, style = "reverse" }, -- diff mode: Changed text within a changed line
		EndOfBuffer = { fg = ephemeral.ephemeral1_gui },
		ErrorMsg = { fg = ephemeral.none },
		Folded = { fg = ephemeral.ephemeral3_gui_bright, bg = ephemeral.none, style = "italic" },
		FoldColumn = { fg = ephemeral.ephemeral7_gui },
		IncSearch = { fg = ephemeral.ephemeral6_gui, bg = ephemeral.ephemeral10_gui },
		LineNr = { fg = ephemeral.ephemeral3_gui_bright },
		CursorLineNr = { fg = ephemeral.ephemeral4_gui },
		MatchParen = { fg = ephemeral.ephemeral15_gui, bg = ephemeral.none, style = "bold" },
		ModeMsg = { fg = ephemeral.ephemeral4_gui },
		MoreMsg = { fg = ephemeral.ephemeral4_gui },
		NonText = { fg = ephemeral.ephemeral1_gui },
		Pmenu = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral2_gui },
		PmenuSel = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral10_gui },
		PmenuSbar = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral2_gui },
		PmenuThumb = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral4_gui },
		Question = { fg = ephemeral.ephemeral14_gui },
		QuickFixLine = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "reverse" },
		qfLineNr = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "reverse" },
		Search = { fg = ephemeral.ephemeral10_gui, bg = ephemeral.ephemeral6_gui, style = "reverse" },
		SpecialKey = { fg = ephemeral.ephemeral9_gui },
		SpellBad = { fg = ephemeral.ephemeral11_gui, bg = ephemeral.none, style = "italic,undercurl" },
		SpellCap = { fg = ephemeral.ephemeral7_gui, bg = ephemeral.none, style = "italic,undercurl" },
		SpellLocal = { fg = ephemeral.ephemeral8_gui, bg = ephemeral.none, style = "italic,undercurl" },
		SpellRare = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.none, style = "italic,undercurl" },
		StatusLine = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral2_gui },
		StatusLineNC = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui },
		StatusLineTerm = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral2_gui },
		StatusLineTermNC = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui },
		TabLineFill = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none },
		TablineSel = { fg = ephemeral.ephemeral1_gui, bg = ephemeral.ephemeral9_gui },
		Tabline = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui },
		Title = { fg = ephemeral.ephemeral14_gui, bg = ephemeral.none, style = "bold" },
		Visual = { fg = ephemeral.none, bg = ephemeral.ephemeral2_gui },
		VisualNOS = { fg = ephemeral.none, bg = ephemeral.ephemeral2_gui },
		WarningMsg = { fg = ephemeral.ephemeral15_gui },
		WildMenu = { fg = ephemeral.ephemeral12_gui, bg = ephemeral.none, style = "bold" },
		CursorColumn = { fg = ephemeral.none, bg = ephemeral.cursorlinefg },
		CursorLine = { fg = ephemeral.none, bg = ephemeral.cursorlinefg },
		ToolbarLine = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui },
		ToolbarButton = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "bold" },
		NormalMode = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "reverse" },
		InsertMode = { fg = ephemeral.ephemeral14_gui, bg = ephemeral.none, style = "reverse" },
		ReplacelMode = { fg = ephemeral.ephemeral11_gui, bg = ephemeral.none, style = "reverse" },
		VisualMode = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.none, style = "reverse" },
		CommandMode = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "reverse" },
		Warnings = { fg = ephemeral.ephemeral15_gui },

		healthError = { fg = ephemeral.ephemeral11_gui },
		healthSuccess = { fg = ephemeral.ephemeral14_gui },
		healthWarning = { fg = ephemeral.ephemeral15_gui },

		-- dashboard
		DashboardShortCut = { fg = ephemeral.ephemeral7_gui },
		DashboardHeader = { fg = ephemeral.ephemeral9_gui },
		DashboardCenter = { fg = ephemeral.ephemeral8_gui },
		DashboardFooter = { fg = ephemeral.ephemeral14_gui, style = "italic" },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = ephemeral.ephemeral0_gui },
		BufferLineFill = { bg = ephemeral.ephemeral0_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.ephemeral_disable_background then
		editor.Normal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none } -- normal text and background color
		editor.SignColumn = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none }
	else
		editor.Normal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral0_gui } -- normal text and background color
		editor.SignColumn = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral0_gui }
	end

	-- Remove window split borders
	if vim.g.ephemeral_borders then
		editor.VertSplit = { fg = ephemeral.ephemeral2_gui }
	else
		editor.VertSplit = { fg = ephemeral.ephemeral0_gui }
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = ephemeral.ephemeral1_gui
	vim.g.terminal_color_1 = ephemeral.ephemeral11_gui
	vim.g.terminal_color_2 = ephemeral.ephemeral14_gui
	vim.g.terminal_color_3 = ephemeral.ephemeral13_gui
	vim.g.terminal_color_4 = ephemeral.ephemeral9_gui
	vim.g.terminal_color_5 = ephemeral.ephemeral15_gui
	vim.g.terminal_color_6 = ephemeral.ephemeral8_gui
	vim.g.terminal_color_7 = ephemeral.ephemeral5_gui
	vim.g.terminal_color_8 = ephemeral.ephemeral3_gui
	vim.g.terminal_color_9 = ephemeral.ephemeral11_gui
	vim.g.terminal_color_10 = ephemeral.ephemeral14_gui
	vim.g.terminal_color_11 = ephemeral.ephemeral13_gui
	vim.g.terminal_color_12 = ephemeral.ephemeral9_gui
	vim.g.terminal_color_13 = ephemeral.ephemeral15_gui
	vim.g.terminal_color_14 = ephemeral.ephemeral7_gui
	vim.g.terminal_color_15 = ephemeral.ephemeral6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = ephemeral.ephemeral12_gui }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSConstructor = { fg = ephemeral.ephemeral9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = ephemeral.ephemeral13_gui }, -- For constants
		TSFloat = { fg = ephemeral.ephemeral15_gui }, -- For floats
		TSNumber = { fg = ephemeral.ephemeral15_gui }, -- For all number

		TSAttribute = { fg = ephemeral.ephemeral15_gui }, -- (unstable) TODO: docs
		TSVariable = { fg = ephemeral.ephemeral4_gui, style = "bold" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin = { fg = ephemeral.ephemeral4_gui, style = "bold" },
		TSBoolean = { fg = ephemeral.ephemeral9_gui, style = "bold" }, -- For booleans.
		TSConstBuiltin = { fg = ephemeral.ephemeral7_gui, style = "bold" }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = ephemeral.ephemeral7_gui, style = "bold" }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = ephemeral.ephemeral11_gui }, -- For syntax/parser errors.
		TSException = { fg = ephemeral.ephemeral15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = ephemeral.ephemeral7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = ephemeral.ephemeral9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = ephemeral.ephemeral15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = ephemeral.ephemeral9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = ephemeral.ephemeral10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = ephemeral.ephemeral10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = ephemeral.ephemeral8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = ephemeral.ephemeral8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = ephemeral.ephemeral8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = ephemeral.ephemeral15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = ephemeral.ephemeral9_gui }, -- For types.
		TSTypeBuiltin = { fg = ephemeral.ephemeral9_gui }, -- For builtin types.
		TSTag = { fg = ephemeral.ephemeral4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = ephemeral.ephemeral15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = ephemeral.ephemeral4_gui }, -- For strings consideephemeral11_gui text in a markup language.
		TSTextReference = { fg = ephemeral.ephemeral15_gui }, -- FIXME
		TSEmphasis = { fg = ephemeral.ephemeral10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none, style = "underline" }, -- For text to be represented with an underline.
		TSTitle = { fg = ephemeral.ephemeral10_gui, bg = ephemeral.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = ephemeral.ephemeral4_gui }, -- Literal text.
		TSURI = { fg = ephemeral.ephemeral14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = ephemeral.ephemeral11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	if vim.g.ephemeral_italic == false then
		-- Comments
		treesitter.TSComment = { fg = ephemeral.ephemeral3_gui_bright }
		-- Conditionals
		treesitter.TSConditional = { fg = ephemeral.ephemeral9_gui } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = ephemeral.ephemeral8_gui } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = ephemeral.ephemeral7_gui } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = ephemeral.ephemeral8_gui }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = ephemeral.ephemeral4_gui } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = ephemeral.ephemeral4_gui } -- For fields in literals
		treesitter.TSProperty = { fg = ephemeral.ephemeral10_gui } -- Same as `TSField`
		-- Language keywords
		treesitter.TSKeyword = { fg = ephemeral.ephemeral9_gui } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = ephemeral.ephemeral8_gui }
		treesitter.TSKeywordReturn = { fg = ephemeral.ephemeral8_gui }
		treesitter.TSKeywordOperator = { fg = ephemeral.ephemeral8_gui }
		treesitter.TSRepeat = { fg = ephemeral.ephemeral9_gui } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = ephemeral.ephemeral14_gui } -- For strings.
		treesitter.TSStringRegex = { fg = ephemeral.ephemeral7_gui } -- For regexes.
		treesitter.TSStringEscape = { fg = ephemeral.ephemeral15_gui } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = ephemeral.ephemeral14_gui } -- For characters.
	else
		-- Comments
		treesitter.TSComment = { fg = ephemeral.ephemeral3_gui_bright, style = "italic" }
		-- Conditionals
		treesitter.TSConditional = { fg = ephemeral.ephemeral9_gui, style = "italic" } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = ephemeral.ephemeral8_gui, style = "italic" } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = ephemeral.ephemeral7_gui, style = "italic" } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = ephemeral.ephemeral8_gui, style = "italic" }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = ephemeral.ephemeral4_gui, style = "italic" } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = ephemeral.ephemeral4_gui, style = "italic" } -- For fields.
		treesitter.TSProperty = { fg = ephemeral.ephemeral10_gui, style = "italic" } -- Same as `TSField`, but when accessing, not declaring.
		-- Language keywords
		treesitter.TSKeyword = { fg = ephemeral.ephemeral9_gui, style = "italic" } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = ephemeral.ephemeral8_gui, style = "italic" }
		treesitter.TSKeywordReturn = { fg = ephemeral.ephemeral8_gui, style = "italic" }
		treesitter.TSKeywordOperator = { fg = ephemeral.ephemeral8_gui, style = "italic" }
		treesitter.TSRepeat = { fg = ephemeral.ephemeral9_gui, style = "italic" } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = ephemeral.ephemeral14_gui, style = "italic" } -- For strings.
		treesitter.TSStringRegex = { fg = ephemeral.ephemeral7_gui, style = "italic" } -- For regexes.
		treesitter.TSStringEscape = { fg = ephemeral.ephemeral15_gui, style = "italic" } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = ephemeral.ephemeral14_gui, style = "italic" } -- For characters.
	end

	return treesitter
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = ephemeral.ephemeral11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = ephemeral.ephemeral11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = ephemeral.ephemeral11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = ephemeral.ephemeral11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = ephemeral.ephemeral11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = ephemeral.ephemeral15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = ephemeral.ephemeral15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = ephemeral.ephemeral15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = ephemeral.ephemeral15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = ephemeral.ephemeral15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = ephemeral.ephemeral10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = ephemeral.ephemeral10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = ephemeral.ephemeral10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = ephemeral.ephemeral10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = ephemeral.ephemeral10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = ephemeral.ephemeral9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = ephemeral.ephemeral9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = ephemeral.ephemeral9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = ephemeral.ephemeral9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = ephemeral.ephemeral10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = ephemeral.ephemeral4_gui },
		LspTroubleCount = { fg = ephemeral.ephemeral9_gui, bg = ephemeral.ephemeral10_gui },
		LspTroubleNormal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.sidebar },

		-- Diff
		diffAdded = { fg = ephemeral.ephemeral14_gui },
		diffRemoved = { fg = ephemeral.ephemeral11_gui },
		diffChanged = { fg = ephemeral.ephemeral15_gui },
		diffOldFile = { fg = ephemeral.yelow },
		diffNewFile = { fg = ephemeral.ephemeral12_gui },
		diffFile = { fg = ephemeral.ephemeral7_gui },
		diffLine = { fg = ephemeral.ephemeral3_gui },
		diffIndexLine = { fg = ephemeral.ephemeral9_gui },

		-- Neogit
		NeogitBranch = { fg = ephemeral.ephemeral10_gui },
		NeogitRemote = { fg = ephemeral.ephemeral9_gui },
		NeogitHunkHeader = { fg = ephemeral.ephemeral8_gui },
		NeogitHunkHeaderHighlight = { fg = ephemeral.ephemeral8_gui, bg = ephemeral.ephemeral1_gui },
		NeogitDiffContextHighlight = { bg = ephemeral.ephemeral1_gui },
		NeogitDiffDeleteHighlight = { fg = ephemeral.ephemeral11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = ephemeral.ephemeral14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = ephemeral.ephemeral14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = ephemeral.ephemeral15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = ephemeral.ephemeral11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = ephemeral.ephemeral14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = ephemeral.ephemeral14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = ephemeral.ephemeral14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = ephemeral.ephemeral15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = ephemeral.ephemeral15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = ephemeral.ephemeral15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = ephemeral.ephemeral11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = ephemeral.ephemeral11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = ephemeral.ephemeral11_gui }, -- diff mode: Deleted line |diff.txt|

		-- Telescope
		TelescopePromptBorder = { fg = ephemeral.ephemeral8_gui },
		TelescopeResultsBorder = { fg = ephemeral.ephemeral9_gui },
		TelescopePreviewBorder = { fg = ephemeral.ephemeral14_gui },
		TelescopeSelectionCaret = { fg = ephemeral.ephemeral9_gui },
		TelescopeSelection = { fg = ephemeral.ephemeral9_gui },
		TelescopeMatching = { fg = ephemeral.ephemeral8_gui },

		-- NvimTree
		NvimTreeRootFolder = { fg = ephemeral.ephemeral7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = ephemeral.ephemeral15_gui },
		NvimTreeGitNew = { fg = ephemeral.ephemeral14_gui },
		NvimTreeImageFile = { fg = ephemeral.ephemeral15_gui },
		NvimTreeExecFile = { fg = ephemeral.ephemeral14_gui },
		NvimTreeSpecialFile = { fg = ephemeral.ephemeral9_gui, style = "underline" },
		NvimTreeFolderName = { fg = ephemeral.ephemeral10_gui },
		NvimTreeEmptyFolderName = { fg = ephemeral.ephemeral1_gui },
		NvimTreeFolderIcon = { fg = ephemeral.ephemeral4_gui },
		NvimTreeIndentMarker = { fg = ephemeral.ephemeral1_gui },
		LspDiagnosticsError = { fg = ephemeral.ephemeral11_gui },
		LspDiagnosticsWarning = { fg = ephemeral.ephemeral15_gui },
		LspDiagnosticsInformation = { fg = ephemeral.ephemeral10_gui },
		LspDiagnosticsHint = { fg = ephemeral.ephemeral9_gui },

		-- WhichKey
		WhichKey = { fg = ephemeral.ephemeral4_gui, style = "bold" },
		WhichKeyGroup = { fg = ephemeral.ephemeral4_gui },
		WhichKeyDesc = { fg = ephemeral.ephemeral7_gui, style = "italic" },
		WhichKeySeperator = { fg = ephemeral.ephemeral4_gui },
		WhichKeyFloating = { bg = ephemeral.float },
		WhichKeyFloat = { bg = ephemeral.float },

		-- LspSaga
		DiagnosticError = { fg = ephemeral.ephemeral11_gui },
		DiagnosticWarning = { fg = ephemeral.ephemeral15_gui },
		DiagnosticInformation = { fg = ephemeral.ephemeral10_gui },
		DiagnosticHint = { fg = ephemeral.ephemeral9_gui },
		DiagnosticTruncateLine = { fg = ephemeral.ephemeral4_gui },
		LspFloatWinNormal = { bg = ephemeral.ephemeral2_gui },
		LspFloatWinBorder = { fg = ephemeral.ephemeral9_gui },
		LspSagaBorderTitle = { fg = ephemeral.ephemeral8_gui },
		LspSagaHoverBorder = { fg = ephemeral.ephemeral10_gui },
		LspSagaRenameBorder = { fg = ephemeral.ephemeral14_gui },
		LspSagaDefPreviewBorder = { fg = ephemeral.ephemeral14_gui },
		LspSagaCodeActionBorder = { fg = ephemeral.ephemeral7_gui },
		LspSagaFinderSelection = { fg = ephemeral.ephemeral14_gui },
		LspSagaCodeActionTitle = { fg = ephemeral.ephemeral10_gui },
		LspSagaCodeActionContent = { fg = ephemeral.ephemeral9_gui },
		LspSagaSignatureHelpBorder = { fg = ephemeral.ephemeral13_gui },
		ReferencesCount = { fg = ephemeral.ephemeral9_gui },
		DefinitionCount = { fg = ephemeral.ephemeral9_gui },
		DefinitionIcon = { fg = ephemeral.ephemeral7_gui },
		ReferencesIcon = { fg = ephemeral.ephemeral7_gui },
		TargetWord = { fg = ephemeral.ephemeral8_gui },

		-- Sneak
		Sneak = { fg = ephemeral.ephemeral0_gui, bg = ephemeral.ephemeral4_gui },
		SneakScope = { bg = ephemeral.ephemeral1_gui },

		-- Cmp
		CmpItemKind = { fg = ephemeral.ephemeral15_gui },
		CmpItemAbbrMatch = { fg = ephemeral.ephemeral5_gui, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = ephemeral.ephemeral5_gui, style = "bold" },
		CmpItemAbbr = { fg = ephemeral.ephemeral4_gui },
		CmpItemMenu = { fg = ephemeral.ephemeral14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = ephemeral.ephemeral3_gui },
		IndentBlanklineContextChar = { fg = ephemeral.ephemeral10_gui },

		-- Illuminate
		illuminatedWord = { bg = ephemeral.ephemeral3_gui },
		illuminatedCurWord = { bg = ephemeral.ephemeral3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = ephemeral.ephemeral14_gui },
		DapStopped = { fg = ephemeral.ephemeral15_gui },

		-- Hop
		HopNextKey = { fg = ephemeral.ephemeral4_gui, style = "bold" },
		HopNextKey1 = { fg = ephemeral.ephemeral8_gui, style = "bold" },
		HopNextKey2 = { fg = ephemeral.ephemeral4_gui },
		HopUnmatched = { fg = ephemeral.ephemeral3_gui },

		-- Fern
		FernBranchText = { fg = ephemeral.ephemeral3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = ephemeral.ephemeral15_gui },
		rainbowcol2 = { fg = ephemeral.ephemeral13_gui },
		rainbowcol3 = { fg = ephemeral.ephemeral11_gui },
		rainbowcol4 = { fg = ephemeral.ephemeral7_gui },
		rainbowcol5 = { fg = ephemeral.ephemeral8_gui },
		rainbowcol6 = { fg = ephemeral.ephemeral15_gui },
		rainbowcol7 = { fg = ephemeral.ephemeral13_gui },

		-- lightspeed
		LightspeedLabel = { fg = ephemeral.ephemeral8_gui, style = "bold" },
		LightspeedLabelOverlapped = { fg = ephemeral.ephemeral8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = ephemeral.ephemeral15_gui, style = "bold" },
		LightspeedLabelDistantOverlapped = { fg = ephemeral.ephemeral15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = ephemeral.ephemeral10_gui, style = "bold" },
		LightspeedShortcutOverlapped = { fg = ephemeral.ephemeral10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral2_gui, style = "bold" },
		LightspeedGreyWash = { fg = ephemeral.ephemeral3_gui_bright },
		LightspeedUnlabeledMatch = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.ephemeral1_gui },
		LightspeedOneCharMatch = { fg = ephemeral.ephemeral8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = ephemeral.ephemeral3_gui, bg = ephemeral.none },

		-- Statusline
		StatusLineDull = { fg = ephemeral.ephemeral3_gui, bg = ephemeral.ephemeral1_gui },
		StatusLineAccent = { fg = ephemeral.ephemeral0_gui, bg = ephemeral.ephemeral13_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.ephemeral_disable_background then
		plugins.NvimTreeNormal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none }
	else
		plugins.NvimTreeNormal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.sidebar }
	end

	if vim.g.ephemeral_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.sidebar }
	else
		plugins.NvimTreeNormal = { fg = ephemeral.ephemeral4_gui, bg = ephemeral.none }
	end

	return plugins
end

return theme
