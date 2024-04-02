local utils = require('rafce.utils')

vim.api.nvim_create_user_command(
  "Rafce", 
  function()
    local filename = vim.api.nvim_buf_get_name(0)
    componentName = utils.getComponentName(filename)
    utils.writeComponent(componentName)
  end,
  {bang = true, desc = "A command to create boilerplate code of a React functional component."}
)
