return {
  {
    "hashivim/vim-terraform",
    ft = "terraform",
    config = function()
      vim.g.terraform_align = 1
      vim.g.terraform_fold_sections = 1
      vim.g.terraform_fmt_on_save = 1
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "terraform", "hcl" })
      end
      
      -- Custom highlight groups for Terraform
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "terraform",
        callback = function()
          -- Define custom highlight groups
          vim.api.nvim_set_hl(0, "TerraformResource", { fg = "#7aa2f7", bold = true })
          vim.api.nvim_set_hl(0, "TerraformVariable", { fg = "#9ece6a" })
          vim.api.nvim_set_hl(0, "TerraformOutput", { fg = "#bb9af7" })
          vim.api.nvim_set_hl(0, "TerraformProvider", { fg = "#f7768e", bold = true })
          vim.api.nvim_set_hl(0, "TerraformData", { fg = "#e0af68" })
          
          -- Apply syntax highlighting
          vim.cmd([[
            syntax match TerraformResource /\v<resource>/
            syntax match TerraformVariable /\v<variable>/
            syntax match TerraformOutput /\v<output>/
            syntax match TerraformProvider /\v<provider>/
            syntax match TerraformData /\v<data>/
          ]])
        end,
      })
    end,
  },
}