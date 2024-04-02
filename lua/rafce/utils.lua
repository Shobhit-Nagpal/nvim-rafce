local extensions = {"js", "ts", "jsx", "tsx"};

local function split (inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end

local function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

local function getComponentName(filename)

  fileParts = split(filename, "/")
  currentFilename = split(fileParts[#fileParts], ".")
  fileExtension = currentFilename[#currentFilename]

  local found = false

  for _, exten in ipairs(extensions) do
    if fileExtension == exten then
      found = true
    end
  end

  if not found then
    error("Error: Current file is not a jsx or tsx file.")
  end

  componentName = currentFilename[1]
  return componentName

end

local function writeRafceComponent(componentName)

  lines = {
  "import React from 'react';",
  "",
  "const " ..componentName.. " = () => {", 
  "  return <div>" ..componentName.. "</div>;",
  "};",
  "",
  "export default " ..componentName .. ";",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

end

local function writeRafcComponent(componentName)

  lines = {
  "import React from 'react';",
  "",
  "export default const " ..componentName.. " = () => {", 
  "  return <div>" ..componentName.. "</div>;",
  "};",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

end

local function writeRfceComponent(componentName)

  lines = {
  "import React from 'react';",
  "",
  "function " ..componentName.. "() {", 
  "  return <div>" ..componentName.. "</div>;",
  "};",
  "",
  "export default " ..componentName .. ";",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

end

local function writeRfcComponent(componentName)

  lines = {
  "import React from 'react';",
  "",
  "export default function " ..componentName.. "() {", 
  "  return <div>" ..componentName.. "</div>;",
  "};",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

end
return {
  getComponentName = getComponentName,
  writeRafceComponent = writeRafceComponent,
  writeRafcComponent = writeRafcComponent,
  writeRfceComponent = writeRfceComponent,
  writeRfcComponent = writeRfcComponent,
}
