require('packer').startup(function()
  use 'wakatime/vim-wakatime'
end)

vim.g.wakatime_api_key = 'your_api_Key'
