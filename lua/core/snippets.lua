-- Custom LuaSnip snippet loader

local ok, luasnip = pcall(require, "luasnip")
if not ok then
  return
end

-- Load VSCode-style snippets (optional, from friendly-snippets)
require("luasnip.loaders.from_vscode").lazy_load()

-- Path to snippets directory
local snippet_path = vim.fn.stdpath("config") .. "/lua/snippets/"
local files = vim.fn.globpath(snippet_path, "*.lua", false, true)

for _, file in ipairs(files) do
  local lang = vim.fn.fnamemodify(file, ":t:r") -- filename without extension
  local snippets = dofile(file)
  if snippets then
    luasnip.add_snippets(lang, snippets, { key = lang })
  end
end
