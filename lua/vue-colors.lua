local M = {}

function M.highlight_vue_blocks()
  vim.cmd([[
    syntax region VueScript start=+<script[^>]*>+ end=+</script>+ contains=ALL
    syntax region VueTemplate start=+<template[^>]*>+ end=+</template>+ contains=ALL
    syntax region VueStyle start=+<style[^>]*>+ end=+</style>+ contains=ALL

    highlight default link VueScript Normal
    highlight default link VueTemplate Normal
    highlight default link VueStyle Normal

    highlight VueScript guibg=#005f5f
    highlight VueTemplate guibg=#5f0000
    highlight VueStyle guibg=#005f00
  ]])
end

local function setup()
  local augroup = vim.api.nvim_create_augroup("VueHighlighting", { clear = true })
  vim.api.nvim_create_autocmd("BufReadPost,BufNewFile", {
    group = augroup,
    pattern = "*.vue",
    desc = "Highlight Vue blocks on opening a Vue file",
    callback = M.highlight_vue_blocks
  })
end

return { setup = setup }

