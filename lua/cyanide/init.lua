local M = {}

M.setup = function(opts)
  if opts ~= nil then
    require("cyanide.colors").setup(opts)
  end

  vim.cmd("highlight clear")
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "cyanide"

  local set_highlight = function(highlight_group, highlight_value)
    vim.api.nvim_set_hl(0, highlight_group, highlight_value)
  end

  local Palette = require("cyanide.colors")

  -- INFO: Possible values for highlight_value table
  -- fg
  -- bg
  -- bold
  -- underline
  -- strikethrough
  -- italic
  -- reverse
  -- link

  local highlight_map = {
    -- Editor
    CurSearch = { bg = Palette.String, fg = Palette.Background },
    Cursor = { reverse = true },
    CursorColumn = { bg = Palette.Line },
    CursorLine = { link = "CursorColumn" },
    Directory = { fg = Palette.Type },
    DiffAdd = { fg = Palette.Add },
    DiffChange = { fg = Palette.Hint },
    DiffDelete = { fg = Palette.Remove },
    DiffText = { underline = true },
    TermCursor = { link = "Cursor" },
    ErrorMsg = { fg = Palette.Error },
    WarningMsg = { fg = Palette.Warning },
    SignColumn = { bg = Palette.Background },
    IncSearch = { bg = Palette.Selection },
    Substitute = { link = "IncSearch" },
    LineNrAbove = { fg = Palette.Comment },
    LineNr = { fg = Palette.Text },
    LineNrBelow = { fg = Palette.Comment },
    CursorLineNr = { fg = Palette.Text },
    MatchParen = { link = "IncSearch" },
    Normal = { fg = Palette.Text, bg = Palette.Background },
    CompMatchIns = { link = "IncSearch" },
    QuickFixLine = { fg = Palette.Constant },
    Search = { link = "IncSearch" },
    TabLine = { bg = Palette.Background },
    Visual = { bg = Palette.Line },
    WildMenu = { reverse = true },

    -- Basic Syntax
    Comment = { fg = Palette.Comment, italic = true },
    Constant = { fg = Palette.Constant },
    String = { fg = Palette.String },
    Character = { fg = Palette.String },
    Number = { fg = Palette.Constant },
    Boolean = { fg = Palette.Constant },
    Float = { fg = Palette.Constant },
    Identifier = { fg = Palette.Text },
    Function = { fg = Palette.Function },
    Statement = { fg = Palette.Keyword },
    Conditional = { fg = Palette.Keyword },
    Repeat = { fg = Palette.Keyword },
    Label = { fg = Palette.Keyword },
    Operator = { fg = Palette.Keyword },
    Keyword = { fg = Palette.Keyword },
    Exception = { fg = Palette.Keyword },
    PreProc = { fg = Palette.Type },
    Include = { fg = Palette.Type },
    Define = { fg = Palette.Type },
    PreCondit = { fg = Palette.Type },
    Type = { fg = Palette.Type },
    StorageClass = { fg = Palette.Type },
    Structure = { fg = Palette.Type },
    Typedef = { fg = Palette.Type },
    Underlined = { underline = true },
    Error = { fg = Palette.Error },
    Todo = { fg = Palette.Text, bg = Palette.Function },
    Added = { fg = Palette.Add },
    Changed = { fg = Palette.Info },
    Removed = { fg = Palette.Remove },

    -- Diagnostics
    DiagnosticError = { fg = Palette.Error },
    DiagnosticWarn = { fg = Palette.Warning },
    DiagnosticInfo = { fg = Palette.Info },
    DiagnosticHint = { fg = Palette.Hint },
  }

  for highlight_group, highlight_value in pairs(highlight_map) do
    set_highlight(highlight_group, highlight_value)
  end

  -- Treesitter
  set_highlight("@variable", { fg = Palette.Text })
  set_highlight("@variable.builtin", { fg = Palette.Text, bold = true })
  set_highlight("@variable.parameter", { fg = Palette.Params })
  set_highlight("@variable.parameter.builtin", { fg = Palette.Params, bold = true })
  set_highlight("@variable.member", { fg = Palette.Params })

  set_highlight("@constant", { fg = Palette.Constant })
  set_highlight("@constant.builtin", { fg = Palette.Constant, bold = true })
  set_highlight("@constant.macro", { fg = Palette.Constant })

  set_highlight("@module", { fg = Palette.Text })
  set_highlight("@module.builtin", { fg = Palette.Text, bold = true })
  set_highlight("@label", { fg = Palette.Keyword })

  set_highlight("@string", { fg = Palette.String })
  set_highlight("@string.documentation", { fg = Palette.String })
  set_highlight("@string.regexp", { fg = Palette.Constant })
  set_highlight("@string.escape", { fg = Palette.Constant })
  set_highlight("@string.special", { fg = Palette.String })
  set_highlight("@string.special.symbol", { fg = Palette.String })
  set_highlight("@string.special.path", { fg = Palette.String })
  set_highlight("@string.special.url", { fg = Palette.String, underline = true })

  set_highlight("@character", { fg = Palette.String })
  set_highlight("@character.special", { fg = Palette.Keyword })

  set_highlight("@boolean", { fg = Palette.Constant })
  set_highlight("@number", { fg = Palette.Constant })
  set_highlight("@number.float", { fg = Palette.Constant })

  set_highlight("@type", { fg = Palette.Type })
  set_highlight("@type.builtin", { fg = Palette.Type, bold = true })
  set_highlight("@type.definition", { fg = Palette.Type })

  set_highlight("@attribute", { fg = Palette.Params, italic = true })
  set_highlight("@attribute.builtin", { fg = Palette.Params, bold = true })
  set_highlight("@property", { fg = Palette.Params })

  set_highlight("@function", { fg = Palette.Function })
  set_highlight("@function.builtin", { fg = Palette.Function, bold = true })
  set_highlight("@function.call", { fg = Palette.Function })
  set_highlight("@function.macro", { fg = Palette.Function })

  set_highlight("@function.method", { fg = Palette.Function })
  set_highlight("@function.method.call", { fg = Palette.Function })

  set_highlight("@constructor", { fg = Palette.Type })
  set_highlight("@operator", { fg = Palette.Keyword })

  set_highlight("@keyword", { fg = Palette.Keyword })
  set_highlight("@keyword.coroutine", { fg = Palette.Keyword })
  set_highlight("@keyword.function", { fg = Palette.Keyword })
  set_highlight("@keyword.operator", { fg = Palette.Keyword })
  set_highlight("@keyword.import", { fg = Palette.Keyword })
  set_highlight("@keyword.type", { fg = Palette.Type, bold = true })
  set_highlight("@keyword.modifier", { fg = Palette.Keyword })
  set_highlight("@keyword.repeat", { fg = Palette.Keyword })
  set_highlight("@keyword.return", { fg = Palette.Keyword })
  set_highlight("@keyword.debug", { fg = Palette.Keyword })
  set_highlight("@keyword.exception", { fg = Palette.Keyword })

  set_highlight("@keyword.conditional", { fg = Palette.Keyword })
  set_highlight("@keyword.conditional.ternary", { fg = Palette.Keyword })

  set_highlight("@keyword.directive", { fg = Palette.Type })
  set_highlight("@keyword.directive.define", { fg = Palette.Type })

  set_highlight("@punctuation.delimiter", { fg = Palette.Type })
  set_highlight("@punctuation.bracket", { fg = Palette.Type })
  set_highlight("@punctuation.special", { fg = Palette.Type })

  set_highlight("@comment", { fg = Palette.Comment, italic = true })
  set_highlight("@comment.documentation", { fg = Palette.Comment, italic = true })

  set_highlight("@comment.error", { fg = Palette.Text, bg = Palette.Error, italic = true })
  set_highlight("@comment.warning", { fg = Palette.Text, bg = Palette.Warning, italic = true })
  set_highlight("@comment.todo", { fg = Palette.Text, bg = Palette.Function, italic = true })
  set_highlight("@comment.note", { fg = Palette.Text, bg = Palette.Info, italic = true })

  set_highlight("@diff.plus", { fg = Palette.Add })
  set_highlight("@diff.minus", { fg = Palette.Remove })
  set_highlight("@diff.delta", { fg = Palette.Info })

  set_highlight("@tag", { fg = Palette.Type })
  set_highlight("@tag.builtin", { fg = Palette.Type, bold = true })
  set_highlight("@tag.attribute", { fg = Palette.Type })
  set_highlight("@tag.delimiter", { fg = Palette.Type })
end

return M
