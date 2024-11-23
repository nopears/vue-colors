-- Define a function to highlight Vue blocks
local function highlight_vue_blocks()
  require('vue-colors').highlight_vue_blocks()
end

-- Create an autocommand group
vim.api.nvim_create_augroup('VueHighlight', { clear = true })

-- Add the autocommand to the group
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'vue',
  callback = highlight_vue_blocks,
  group = 'VueHighlight',
})

