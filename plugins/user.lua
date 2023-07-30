return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end
  -- }
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
  --   end,
  -- },
  {
    "taketwo/vim-ros",
    cmd = {"A", "Rosed", "TabRosed", "SpRosed", "VspRosed"},
    ft = "launch",
  },
  {
    "kynan/dokuvimki",
    init = function()
      vim.g.DokuVimKi_USER = "marc.thieme"
      vim.g.DokuVimKi_PASS = "Plastik-LDAP675"
      vim.g.DokuVimKi_URL = "https://wiki.kitcar-team.de"
    end,
    cmd = "DokuVimKi",
  },
  {
    "lervag/vimtex",
    ft = "tex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_view_forward_search_on_start = false
      vim.g.vimtex_view_automatic = 0
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
          "-shell-escape"
        },
        -- build_dir = "build",
      }
      -- vim.b.texlab_settings = {
      --   build = {
      --     logFile = {
      --       vim.fn.expand('%:r')..'.log'
      --     }
      --   }
      -- }
    end
  },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "justinmk/vim-sneak",
    lazy = false,
    init = function()
      vim.g['sneak#label'] = 1
    end
  }
}
