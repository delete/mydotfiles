local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local actions = require('telescope.actions')

local map = require('delete.utils').map

telescope.setup({
  defaults = {
    dynamic_preview_title = true,
    path_display = { 'smart' },
    sorting_strategy = 'descending',
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
      '--trim',
    },
    file_ignore_patterns = {
      'dist/.*',
      '%.git/.*',
      '%.vim/.*',
      'node_modules/.*',
      '%.idea/.*',
      '%.vscode/.*',
      '%.history/.*',
    },
    mappings = {
      i = {
        ['<C-n>'] = actions.cycle_history_next,
        ['<C-p>'] = actions.cycle_history_prev,
        ['<C-h>'] = 'which_key',
      },

      n = {
        ['<esc>'] = actions.close,
        ['X'] = actions.delete_buffer,
        ['<CR>'] = actions.select_default,
        ['?'] = actions.which_key,
      },
    },
  },
  pickers = {
    buffers = {
      sort_lastused = true,
    },
    find_files = {
      find_command = {
        'fd',
        '--type',
        'file',
        '--type',
        'symlink',
        '--hidden',
        '--exclude',
        '.git',
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = 'smart_case', -- "ignore_case" or "respect_case" or "smart_case"
    },
  },
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('gh')

-- Files
map('n', ';f', ':Telescope find_files<cr>', { desc = 'Find Files' })
map('n', ';r', ':Telescope live_grep<cr>', { desc = 'Find Grep' })
map(
  'n',
  '<leader>ff',
  ':Telescope current_buffer_fuzzy_find<cr>',
  { desc = 'Find Fuzzy current buffer' }
)
map('n', '<leader>fq', ':Telescope quickfix<cr>', { desc = 'Find Quickfix' })

-- Git
map('n', '<leader>fs', ':Telescope git_status<cr>', { desc = 'Find Status' })
map('n', '<leader>fc', ':Telescope git_commits<cr>', { desc = 'Find Commits' })
map('n', ';g', ':Telescope git_files<cr>', { desc = 'Find Git files' })

-- Neovim
map('n', '<leader>fh', ':Telescope help_tags<cr>', { desc = 'Find Help' })
map('n', '<leader>fo', ':Telescope vim_options<cr>', { desc = 'Find Options' })
map('n', '<leader>fb', ':Telescope buffers<cr>', { desc = 'Find Buffers' })
map('n', '<leader>fk', ':Telescope keymaps<cr>', { desc = 'Find Keymaps' })
map(
  'n',
  '<leader>fd',
  ':Telescope diagnostics<cr>',
  { desc = 'Find Diagnostics' }
)
