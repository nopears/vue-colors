local function highlight_vue_blocks()
	require("vue-colors").highlight_vue_blocks()
end

vim.api.nvim_create_augroup("VueHighlight", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "vue",
	callback = function()
		highlight_vue_blocks()
	end,
	group = "VueHighlight",
})
