local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
ls.add_snippets("lua", {
  s("h", t("hello world")),
})
-- ls.add_snippets("all", {
--  s("ce", t("\\ce{"), i(1), t("}")),
-- })
ls.add_snippets("all", {
  s(
    "ce",
    fmt(
      [[
      \ce{<>}
    ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),
  s("z", fmt([[$<>$]], { i(1) }, { delimiters = "<>" })),
  s("zz", fmt([[$$<>$$]], { i(1) }, { delimiters = "<>" })),
  s("b", fmt([[\bond{<>}]], { i(1) }, { delimiters = "<>" })),
})
