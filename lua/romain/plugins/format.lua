local function organize_imports()
  local params = {
    command = '_typescript.organizeImports',
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = '',
  }
  vim.lsp.buf.execute_command(params)
end

return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- local organize_imports_types = { 'js', 'ts', 'svelte' }
      -- if vim.tbl_contains(organize_imports_types, vim.bo[bufnr].filetype) then
      -- organize_imports()
      -- end

      vim.lsp.buf.format(nil, 1000)

      return {
        timeout_ms = 500,
        lsp_fallback = true,
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { 'prettierd' },
      typescript = { 'prettierd' },
      svelte = { 'prettierd' },
      css = { 'prettierd' },
      html = { 'prettierd' },
      json = { 'prettierd' },
      yaml = { 'prettierd' },
      markdown = { 'prettierd' },
      graphql = { 'prettierd' },
    },
  },
  keys = {
    {
      '<leader>f',
      function()
        vim.lsp.buf.format(nil, 1000)
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
}
