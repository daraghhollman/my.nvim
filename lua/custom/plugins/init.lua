-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = function()
    vim.keymap.set('n', '<Leader>no', '<cmd>Neorg index<CR><cmd>setlocal spell<CR><cmd>set conceallevel=2<CR>', { desc = 'Open Neorg' })

    require('neorg').setup {
      load = {
        ['core.defaults'] = {}, -- loads default behaviour
        ['core.concealer'] = { -- pretty icons
          config = {
            folds = false,
            icon_preset = 'diamond',
          },
        },
        ['core.dirman'] = { -- manages Neorg worksppaces
          config = {
            workspaces = {
              Main = '~/Main/neorg',
            },
            default_workspace = 'Main',
          },
        },
      },
    }
  end,
}
