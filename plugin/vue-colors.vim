" Prevent reloading the plugin if it's already loaded
if exists("g:loaded_vue_colors")
  finish
endif
let g:loaded_vue_colors = 1

" Command to run the highlighting function
command! -nargs=* VueColors lua require('vue-colors').highlight_vue_blocks()

