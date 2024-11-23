echom "vue-colors.vim sourced"

augroup VueHighlight
  autocmd!
  autocmd FileType vue echom "FileType vue detected" | lua require'vue-colors'.highlight_vue_blocks()
augroup END

