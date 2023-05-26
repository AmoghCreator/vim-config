-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/amogh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/amogh/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/amogh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/amogh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/amogh/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-terminal"] = {
    config = { "\27LJ\2\2X\0\0\2\0\6\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18nvim-terminal\frequire\vhidden\6o\bvim\0" },
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/nvim-terminal",
    url = "https://github.com/s1n7ax/nvim-terminal"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\2Â\r\0\0\5\0\29\0)6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\0015\2\b\0004\3\a\0005\4\t\0>\4\1\0035\4\n\0>\4\2\0035\4\v\0>\4\3\0035\4\f\0>\4\4\0035\4\r\0>\4\5\0035\4\14\0>\4\6\3=\3\5\2=\2\15\0015\2\16\0005\3\17\0=\3\5\2=\2\18\0015\2\19\0005\3\20\0=\3\21\2=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\1B\0\2\1K\0\1\0\nparts\1\4\0\0\vheader\tbody\vfooter\vcolors\1\0\2\15background\f#1f2227\19folded_section\f#56b6c2\rmappings\1\0\5\17open_section\n<TAB>\14open_help\6?\20execute_command\t<CR>\14open_file\6o\20open_file_split\n<c-o>\foptions\rpaddings\1\5\0\0\3\1\3\3\3\3\3\0\1\0\4\17mapping_keys\2!empty_lines_between_mappings\2\18cursor_column\4\0€€€ÿ\3\24disable_statuslines\2\vfooter\1\2\0\0\17startup.nvim\1\0\t\17fold_section\1\ntitle\vFooter\14highlight\vNumber\ttype\ttext\nalign\vcenter\18default_color\5\vmargin\3\5\20oldfiles_amount\3\0\23oldfiles_directory\1\tbody\1\4\0\0\17ï…› New File$lua require'startup'.new_file()\15<leader>nf\1\4\0\0\21îˆ« Colorschemes\26Telescope colorscheme\15<leader>cs\1\4\0\0\21îˆ‰ File Browser\27Telescope file_browser\15<leader>fb\1\4\0\0\21ï‘¤ Recent Files\23Telescope oldfiles\15<leader>of\1\4\0\0\18ï¡ˆ Find Word\24Telescope live_grep\15<leader>lg\1\4\0\0\18ï…œ Find File\25Telescope find_files\15<leader>ff\1\0\t\17fold_section\1\ntitle\19Basic Commands\14highlight\vString\ttype\fmapping\nalign\vcenter\18default_color\5\vmargin\3\5\20oldfiles_amount\3\0\23oldfiles_directory\1\vheader\1\0\0\fcontent\1\a\0\0P       ________          _____  _____  _____       _________               P      //      \\\\        //   \\\\//   \\\\//   \\\\     //\\      \\\\/   \\\\  ______P     //        \\\\      //     ||     ||     ||   //  \\____/ \\\\   // //     P    //          \\\\    //      ||     ||     ||  //           \\\\ //  \\\\____ R    //\\\\         //   //       ||     ||     || //\\\\          //           \\\\R \\_//  \\\\_______//\\\\_//        ||     ||     ||//  \\\\________//       _____//\1\0\t\17fold_section\1\ntitle\vHeader\14highlight\14Statement\ttype\ttext\nalign\vcenter\18default_color\5\vmargin\3\5\20oldfiles_amount\3\0\23oldfiles_directory\1\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-sunbather"] = {
    loaded = true,
    path = "/home/amogh/.local/share/nvim/site/pack/packer/start/vim-sunbather",
    url = "https://github.com/nikolvs/vim-sunbather"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\2Â\r\0\0\5\0\29\0)6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\0015\2\b\0004\3\a\0005\4\t\0>\4\1\0035\4\n\0>\4\2\0035\4\v\0>\4\3\0035\4\f\0>\4\4\0035\4\r\0>\4\5\0035\4\14\0>\4\6\3=\3\5\2=\2\15\0015\2\16\0005\3\17\0=\3\5\2=\2\18\0015\2\19\0005\3\20\0=\3\21\2=\2\22\0015\2\23\0=\2\24\0015\2\25\0=\2\26\0015\2\27\0=\2\28\1B\0\2\1K\0\1\0\nparts\1\4\0\0\vheader\tbody\vfooter\vcolors\1\0\2\15background\f#1f2227\19folded_section\f#56b6c2\rmappings\1\0\5\17open_section\n<TAB>\14open_help\6?\20execute_command\t<CR>\14open_file\6o\20open_file_split\n<c-o>\foptions\rpaddings\1\5\0\0\3\1\3\3\3\3\3\0\1\0\4\17mapping_keys\2!empty_lines_between_mappings\2\18cursor_column\4\0€€€ÿ\3\24disable_statuslines\2\vfooter\1\2\0\0\17startup.nvim\1\0\t\17fold_section\1\ntitle\vFooter\14highlight\vNumber\ttype\ttext\nalign\vcenter\18default_color\5\vmargin\3\5\20oldfiles_amount\3\0\23oldfiles_directory\1\tbody\1\4\0\0\17ï…› New File$lua require'startup'.new_file()\15<leader>nf\1\4\0\0\21îˆ« Colorschemes\26Telescope colorscheme\15<leader>cs\1\4\0\0\21îˆ‰ File Browser\27Telescope file_browser\15<leader>fb\1\4\0\0\21ï‘¤ Recent Files\23Telescope oldfiles\15<leader>of\1\4\0\0\18ï¡ˆ Find Word\24Telescope live_grep\15<leader>lg\1\4\0\0\18ï…œ Find File\25Telescope find_files\15<leader>ff\1\0\t\17fold_section\1\ntitle\19Basic Commands\14highlight\vString\ttype\fmapping\nalign\vcenter\18default_color\5\vmargin\3\5\20oldfiles_amount\3\0\23oldfiles_directory\1\vheader\1\0\0\fcontent\1\a\0\0P       ________          _____  _____  _____       _________               P      //      \\\\        //   \\\\//   \\\\//   \\\\     //\\      \\\\/   \\\\  ______P     //        \\\\      //     ||     ||     ||   //  \\____/ \\\\   // //     P    //          \\\\    //      ||     ||     ||  //           \\\\ //  \\\\____ R    //\\\\         //   //       ||     ||     || //\\\\          //           \\\\R \\_//  \\\\_______//\\\\_//        ||     ||     ||//  \\\\________//       _____//\1\0\t\17fold_section\1\ntitle\vHeader\14highlight\14Statement\ttype\ttext\nalign\vcenter\18default_color\5\vmargin\3\5\20oldfiles_amount\3\0\23oldfiles_directory\1\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
-- Config for: nvim-terminal
time([[Config for nvim-terminal]], true)
try_loadstring("\27LJ\2\2X\0\0\2\0\6\0\n6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\1\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18nvim-terminal\frequire\vhidden\6o\bvim\0", "config", "nvim-terminal")
time([[Config for nvim-terminal]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
