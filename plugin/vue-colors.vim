augroup VueHighlight
  autocmd!
  autocmd FileType vue lua require'vue-colors'.highlight_vue_blocks()
augroup END
