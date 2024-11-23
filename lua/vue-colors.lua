local function highlight_vue_blocks()
  vim.cmd([[
    syntax region VueScript start=+<script[^>]*>+ end=+</script>+ contains=ALL
    syntax region VueTemplate start=+<template[^>]*>+ end=+</template>+ contains=ALL
    syntax region VueStyle start=+<style[^>]*>+ end=+</style>+ contains=ALL

    highlight VueScript guibg=#005f5f
    highlight VueTemplate guibg=#5f0000
    highlight VueStyle guibg=#005f00
  ]])
end

local function setup()
  local augroup = vim.api.nvim_create_augroup("VueHighlight", { clear = true })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "vue",
    group = augroup,
    desc = "Highlight Vue.js code blocks",
    callback = highlight_vue_blocks,
  })
end

return { setup = setup }

