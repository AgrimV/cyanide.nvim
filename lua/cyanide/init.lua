local M = {}

M.setup = function()
  vim.cmd("highlight clear")
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "cyanide"

  local Palette = {
    -- Background = "none",
    Background = "#191919",
    White = "#F8F8F8",

    Find = "#FFE792",
    Selection = "#444444",
    Line = "#555555",
    Highlight = "#333333",
    Special = "#7FB11B",
    -- #FFA940 Params
    -- #FFC140 Params

    Comment = "#696969",
    Constant = "#BE84FF",
    String = "#F6AA11",
    Function = "#AEE837",
    Keyword = "#FF4083",
    Type = "#66D9EF",

    Error = "#D90202",
    Warning = "#F48D17",
    Info = "#FFD739",
    Hint = "#3570D7",

    Add = "#22CB00",
    Remove = "#C30000",
  }

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
    CurSearch = { bg = Palette.Find, fg = Palette.Background },
    Cursor = { reverse = true },
    CursorColumn = { bg = Palette.Line },
    CursorLine = { link = "CursorColumn" },
    Directory = { fg = Palette.Type },
    DiffAdd = { bg = Palette.Add },
    DiffChange = { bg = Palette.Hint },
    DiffDelete = { bg = Palette.Remove },
    DiffText = { underline = true },
    TermCursor = { link = "Cursor" },
    ErrorMsg = { fg = Palette.Error },
    WarningMsg = { fg = Palette.Warning },
    SignColumn = { bg = Palette.Background },
    IncSearch = { bg = Palette.Selection },
    Substitute = { link = "IncSearch" },
    LineNr = { fg = Palette.Comment },
    CursorLineNr = { fg = Palette.White },
    MatchParen = { link = "IncSearch" },
    Normal = { fg = Palette.White, bg = Palette.Background },
    CompMatchIns = { link = "IncSearch" },
    QuickFixLine = { fg = Palette.Constant },
    Search = { link = "IncSearch" },
    TabLine = { bg = Palette.Background },
    Visual = { bg = Palette.Line },

    -- Basic Syntax
    Comment = { fg = Palette.Comment, italic = true },
    Constant = { fg = Palette.Constant },
    String = { fg = Palette.String },
    Character = { fg = Palette.String },
    Number = { fg = Palette.Constant },
    Boolean = { fg = Palette.Constant },
    Float = { fg = Palette.Constant },
    Identifier = { fg = Palette.White },
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
    StorageClass = { fg = Palette.Keyword },
    Structure = { fg = Palette.Keyword },
    Typedef = { fg = Palette.Keyword },
    Underlined = { underline = true },
    Error = { fg = Palette.Error },
    Todo = { fg = Palette.White, bg = Palette.Special },
    Added = { fg = Palette.Add },
    Changed = { fg = Palette.Info },
    Removed = { fg = Palette.Remove },

    -- Diagnostics
    DiagnosticError = { fg = Palette.Error },
    DiagnosticWarn = { fg = Palette.Warning },
    DiagnosticInfo = { fg = Palette.Info },
    DiagnosticHint = { fg = Palette.Hint },

    -- Treesitter
  }

  for highlight_group, highlight_value in pairs(highlight_map) do
    vim.api.nvim_set_hl(0, highlight_group, highlight_value)
  end
end

return M
