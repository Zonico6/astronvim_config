plugins = {
  'aklt/plantuml-syntax',
  'tyru/open-browser.vim',
  'weirongxu/plantuml-previewer.vim',
}

for i, url in pairs(plugins) do
  plugins[i] = {
    url,
    ft = {'puml', 'plantuml'},
    cmd = {'PlantumlOpen'},
    init = function()
      vim.g['plantuml_previewer#plantuml_jar_path'] = '/usr/local/share/java/plantuml.jar'
    end,
  }
end

return plugins
