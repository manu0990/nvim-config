local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("main", {
    t({
      "public class Main {",
      "  public static void main(String[] args) {",
      "    ",
    }),
    i(0),
    t({
      "",
      "  }",
      "}",
    }),
  }),
}
