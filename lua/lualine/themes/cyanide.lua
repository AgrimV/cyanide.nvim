local Parent = require("cyanide.colors")

local Palette = {
  Background = Parent.Background,

  -- Mode
  Normal = "#1E4875",
  Insert = "#7FB11B",
  Visual = "#533F5E",
  VisualFG = "#F5D9FF",
  Command = "#A3C9FE",
  Replace = "#F061A8",

  -- Text
  Text = "#F8F8F8",
  InactiveText = "#696969",
}

return {
  normal = {
    a = { bg = Palette.Normal, fg = Palette.Text, gui = "bold" },
    b = { bg = Palette.Background, fg = Palette.Normal },
    c = { bg = Palette.Background, fg = Palette.InactiveText },
  },
  insert = {
    a = { bg = Palette.Insert, fg = Palette.Background, gui = "bold" },
    b = { bg = Palette.Background, fg = Palette.Insert },
  },
  visual = {
    a = { bg = Palette.Visual, fg = Palette.VisualFG, gui = "bold" },
    b = { bg = Palette.Background, fg = Palette.Visual },
  },
  command = {
    a = { bg = Palette.Command, fg = Palette.Background, gui = "bold" },
    b = { bg = Palette.Background, fg = Palette.Command },
  },
  replace = {
    a = { bg = Palette.Replace, fg = Palette.Background, gui = "bold" },
    b = { bg = Palette.Background, fg = Palette.Replace },
  },
  terminal = {
    a = { bg = Palette.Command, fg = Palette.ModeText, gui = "bold" },
    b = { bg = Palette.Background, fg = Palette.Command },
  },
  inactive = {
    a = { bg = Palette.Background, fg = Palette.Command },
    b = { bg = Palette.Background, fg = Palette.InactiveText },
    c = { bg = Palette.Background, fg = Palette.InactiveText },
  },
}
