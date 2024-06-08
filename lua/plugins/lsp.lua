return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                features = "all",
              },
              checkOnSave = true,
              check = { command = "clippy" },
              completion = {
                autoimport = {
                  enable = false,
                },
              },
              imports = {
                granularity = {
                  group = "module",
                },
              },
              inlayHints = {
                bindingModeHints = {
                  enable = true,
                },
                closureReturnTypeHints = {
                  enable = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
