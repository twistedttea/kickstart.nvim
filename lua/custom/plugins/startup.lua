return {
    {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()

   local logo = [[
                                                       d8,              
                                                      `8P               
                                                                        
  88bd8b,d88b  d8888b d8888b  ?88   d8P  d8P?88   d8P  88b  88bd8b,d88b 
  88P'`?8P'?8bd8b_,dPd8P' ?88 d88  d8P' d8P'd88  d8P'  88P  88P'`?8P'?8b
 d88  d88  88P88b    88b  d88 ?8b ,88b ,88' ?8b ,88'  d88  d88  d88  88P
d88' d88'  88b`?888P'`?8888P' `?888P'888P'  `?888P'  d88' d88' d88'  88b
                                                                       
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
    theme = 'hyper',
    config = {
      footer = {"lets all love lain !!"},
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
        }

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
  },
} 
