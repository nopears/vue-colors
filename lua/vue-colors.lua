local M = {}

function M.highlight_vue_blocks()
	vim.cmd([[
    syntax region VueScript start=/<script>/ end=/<\/script>/ contains=ALL
    syntax region VueTemplate start=/<template>/ end=/<\/template>/ contains=ALL
    syntax region VueStyle start=/<style>/ end=/<\/style>/ contains=ALL

    highlight VueScript guibg=#FFDDDD
    highlight VueTemplate guibg=#DDFFDD
    highlight VueStyle guibg=#DDDDFF
  ]])
end

return M
