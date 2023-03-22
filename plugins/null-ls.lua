return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.goimports,
      null_ls.builtins.formatting.format_r,
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.scalafmt,
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.formatting.yamlfmt,
      null_ls.builtins.formatting.black,  -- autopep8, autoflake, black, blue (isort for sorting imports) pyflyby? ruff
      null_ls.builtins.formatting.pyflyby,
      null_ls.builtins.formatting.jq,
    }
    return config -- return final config table
  end,
}
