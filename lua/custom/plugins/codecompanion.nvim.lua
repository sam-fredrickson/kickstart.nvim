return {
  'olimorris/codecompanion.nvim',
  opts = {},
  config = function()
    require('codecompanion').setup {
      adapters = {
        local_ollama = function()
          return require('codecompanion.adapters').extend('openai_compatible', {
            schema = {
              model = {
                default = 'qwen3:8b',
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'local_ollama',
        },
        inline = {
          adapter = 'local_ollama',
        },
      },
    }
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
