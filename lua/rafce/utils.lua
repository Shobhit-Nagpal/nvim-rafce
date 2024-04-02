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
  componentName = currentFilename[1]
  return componentName

end

local function writeComponent(componentName)

  lines = {
  "import React from 'react';",
  "",
  "const " ..componentName.. " = () => {", 
  "  return <div>" ..componentName.. "</div>;",
  "}",
  "",
  "export default " ..componentName .. ";",
  }

  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

end

return {
  getComponentName = getComponentName,
  writeComponent = writeComponent
}
