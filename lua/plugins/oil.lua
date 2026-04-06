return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false, -- carrega no início (recomendado para file explorer)
  keys = {
    { "-", "<CMD>Oil<CR>", desc = "Abrir diretório pai (Oil)" },
  },
  opts = {
    default_file_explorer = true,

    columns = {
      "icon",
      -- "permissions",
      -- "size",
      "mtime",
    },

    -- Configuração do buffer
    buf_options = {
      buflisted = false,
      bufhidden = "hide",
    },

    -- Configuração da janela
    win_options = {
      wrap = false,
      signcolumn = "no",
      cursorcolumn = false,
      foldcolumn = "0",
      spell = false,
      list = false,
      conceallevel = 3,
      concealcursor = "nvic",
    },

    -- Não confirmar antes de ações destrutivas
    delete_to_trash = false,
    skip_confirm_for_simple_edits = false,
    prompt_save_on_select_new_entry = true,
    cleanup_delay_ms = 2000,

    -- Keymaps dentro do buffer do oil
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-s>"] = "actions.select_vsplit",
      ["<C-h>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },

    use_default_keymaps = true,

    view_options = {
      -- Mostrar arquivos ocultos (dotfiles)
      show_hidden = false,
      -- Função para determinar se um arquivo é oculto
      is_hidden_file = function(name, bufnr)
        return vim.startswith(name, ".")
      end,
      is_always_hidden = function(name, bufnr)
        return false
      end,
      sort = {
        { "type", "asc" },
        { "name", "asc" },
      },
    },

    -- Janela flutuante (opcional)
    float = {
      padding = 2,
      max_width = 0,
      max_height = 0,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
    },

    -- Preview
    preview = {
      max_width = 0.9,
      min_width = { 40, 0.4 },
      width = nil,
      max_height = 0.9,
      min_height = { 5, 0.1 },
      height = nil,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
    },
  },
}
