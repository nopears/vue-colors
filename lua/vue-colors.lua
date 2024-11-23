local M = {}

function M.highlight_vue_blocks()
	vim.cmd([[
    syntax region VueScript start=+<script[^>]*>+ end=+</script>+ contains=ALL
    syntax region VueTemplate start=+<template[^>]*>+ end=+</template>+ contains=ALL
    syntax region VueStyle start=+<style[^>]*>+ end=+</style>+ contains=ALL

    highlight VueScript guibg=#005f5f
    highlight VueTemplate guibg=#5f0000
    highlight VueStyle guibg=#005f00

  ]])
end

return M
