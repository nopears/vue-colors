local M = {}

function M.highlight_vue_blocks()
	vim.cmd([[
    syntax match VueScript /\<script\>/ containedin=ALL
    syntax match VueTemplate /\<template\>/ containedin=ALL
    syntax match VueStyle /\<style\>/ containedin=ALL

    highlight VueScript guibg=#FFDDDD
    highlight VueTemplate guibg=#DDFFDD
    highlight VueStyle guibg=#DDDDFF
  ]])
end

return M
