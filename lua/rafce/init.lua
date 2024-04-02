local utils = require('rafce.utils')

vim.api.nvim_create_user_command(
  "Rafce", 
  function()
    local filename = vim.api.nvim_buf_get_name(0)
    componentName = utils.getComponentName(filename)
    utils.writeRafceComponent(componentName)
  end,
  {bang = true, desc = "Command to create boilerplate code of a React functional component with arrow function and export at bottom."}
)

vim.api.nvim_create_user_command(
  "Rfce", 
  function()
    local filename = vim.api.nvim_buf_get_name(0)
    componentName = utils.getComponentName(filename)
    utils.writeRfceComponent(componentName)
  end,
  {bang = true, desc = "Command to create boilerplate code of a React functional component with export at bottom."}
)

vim.api.nvim_create_user_command(
  "Rfc", 
  function()
    local filename = vim.api.nvim_buf_get_name(0)
    componentName = utils.getComponentName(filename)
    utils.writeRfcComponent(componentName)
  end,
  {bang = true, desc = "Command to create boilerplate code of a React functional component."}
)
