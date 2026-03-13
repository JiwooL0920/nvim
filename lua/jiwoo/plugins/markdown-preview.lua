return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = "cd app && npm install",
  config = function()
    vim.g.mkdp_auto_close = 0 -- Don't close preview when switching buffers
    vim.g.mkdp_browser = "" -- Use system default browser
  end,
}
