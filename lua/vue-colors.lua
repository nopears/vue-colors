local M = {}

function M.highlight_vue_blocks()
	vim.cmd([[
    syntax region VueScript start=+<script[^>]*>+ end=+</script>+ containedin=ALL contained
    syntax region VueTemplate start=+<template[^>]*>+ end=+</template>+ containedin=ALL contained
    syntax region VueStyle start=+<style[^>]*>+ end=+</style>+ containedin=ALL contained

    highlight default link VueScript Normal
    highlight default link VueTemplate Normal
    highlight default link VueStyle Normal

    highlight VueScript guibg=#005f5f
    highlight VueTemplate guibg=#5f0000
    highlight VueStyle guibg=#005f00
  ]])
end

return M
