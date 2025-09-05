local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- This is a normal main function boilerplate for cpp
  s("main", {
    t({
      "#include <iostream>",
      "using namespace std;",
      "",
      "int main() {",
      "  ",
    }),
    i(0),
    t({
      "",
      "  return 0;",
      "}",
    }),
  }),

  -- This is a typical codeforces question solving boilerplate
  s("cp", {
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "void solve() {",
      "  ",
    }),
    i(0),
    t({
      "",
      "}",
      "",
      "int main() {",
      "  ios::sync_with_stdio(false);",
      "  cin.tie(nullptr);",
      "",
      "  int t; cin >> t;",
      "  while (t--) solve();",
      "  return 0;",
      "}",
    }),
  }),
}
