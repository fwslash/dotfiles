local function tg()
  local path=vim.fn.expand("%")
  require("nvterm.terminal").send(
    string.format('terragrunt apply --terragrunt-config %s', path), 'horizontal'
  )
end

return {
  tg = tg
}
