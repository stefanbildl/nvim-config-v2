vim.api.nvim_create_user_command('SMSPost', function()
  local handle = io.popen("bash -c '~/sms/post.sh " .. vim.fn.expand '%' .. " 2>&1' | jq")
  if handle == nil then
    print 'handle is nil'
    return
  end
  local result = handle:read '*a'
  handle:close()
  print(result)
end, { nargs = 0 })

vim.api.nvim_create_user_command('SMSPut', function()
  local handle = io.popen("bash -c '~/sms/put.sh " .. vim.fn.expand '%' .. "  2>&1' | jq")
  if handle == nil then
    print 'handle is nil'
    return
  end
  local result = handle:read '*a'
  handle:close()
  print(result)
end, { nargs = 0 })

vim.api.nvim_create_user_command('SMSPostProd', function()
  local handle = io.popen("bash -c '~/sms/post.sh " .. vim.fn.expand '%' .. " prod 2>&1' | jq")
  if handle == nil then
    print 'handle is nil'
    return
  end
  local result = handle:read '*a'
  handle:close()
  print(result)
end, { nargs = 0 })

vim.api.nvim_create_user_command('SMSPutProd', function()
  local handle = io.popen("bash -c '~/sms/put.sh " .. vim.fn.expand '%' .. " prod 2>&1' | jq")
  if handle == nil then
    print 'handle is nil'
    return
  end
  local result = handle:read '*a'
  handle:close()
  print(result)
end, { nargs = 0 })
