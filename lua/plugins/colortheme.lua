return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Load the colorscheme (pick from: nightfox, dawnfox, dayfox, duskfox, nordfox, terafox, carbonfox)
    vim.cmd("colorscheme terafox")

    -- Optional: Transparency toggle for background (like in your nord config)
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      if bg_transparent then
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi NormalFloat guibg=NONE ctermbg=NONE")
      else
        vim.cmd("colorscheme terafox") -- reload theme to reset bg
      end
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
