local M = {
  Background = "#191919",
  Text = "#F8F8F8",

  Find = "#FFE792",
  Selection = "#444444",
  Line = "#555555",
  Highlight = "#333333",
  Poison = "#7FB11B",

  Comment = "#696969",
  Constant = "#BE84FF",
  Function = "#AEE837",
  Keyword = "#FF4083",
  String = "#FFE792",
  Params = "#FFA940",
  Type = "#66D9EF",

  Error = "#D90202",
  Warning = "#F48D17",
  Info = "#FFD739",
  Hint = "#3570D7",

  Add = "#22CB00",
  Remove = "#C30000",
}

M.setup = function(opts)
  opts = opts or {}

  for key, value in pairs(M) do
    if opts[key] == nil then
      M[key] = value
    else
      M[key] = opts[key]
    end
  end
end

return M
