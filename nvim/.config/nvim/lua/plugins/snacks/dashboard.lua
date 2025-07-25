return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                            #####                                             
                            #####                                #####        
                                                                 #####        
                                                                              
              #######       #######      ######                       ##      
            ##########    ##########   #########         ###      ######      
            ##### #####   ###   ####  ####  #####      #####      ######      
         ###########################  ##################################      
        ############################  #################################       
       ############################     #################  ############       
       #####                              ######                              
       ######                           #######                               
       ######                          #######     #### ####                  
       ######                          ######      #### ####                  
        #####                                                                
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                           ]],
      },
      formats = {
        header = {
          align = "center",
        },
      },
      sections = {
        {
          section = "header",
          padding = 4,
        },
        {
          pane = 2,
          {
            { section = "keys", gap = 1, padding = 2 },
            { section = "startup" },
          },
        },
      },
    },
  },
  init = function()
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#ffffff" })
  end,
}
