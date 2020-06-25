
Quando("eu seleciono o {string}") do |perfil|
  @simulator_page = SimulatorPage.new
  @simulator_page.user(perfil)
end

Quando("Informo o valor da applicacao: {string}, o valor mensal: {string} e tempo mes: {string}") do |application, investment, time_month|
  @simulator_page = SimulatorPage.new
  @simulator_page.application_field(application)
  @simulator_page.investment_field(investment)
  @simulator_page.time_field(time_month)
end

Quando("Clico em Simular") do
  @simulator_page.simulate
end

#Esta foi a solução mas perto do esperado, embora ela abra e fecha o navegador algumas vezes.
Então("devo imprimir a tabela de {int} , {string}") do |id, mes_valor|
  @table_page = TablePage.new
  @table_page.table_list
  expect(@table_page.table_list[id]).to have_text mes_valor
end

Então("devo ver a mensagem do campo aplicacao: {string}") do |application_error|
  log application_error
  label_application_error = @simulator_page.label_application_error.text
  log label_application_error
  expect(label_application_error).to eql(application_error)
end

Então("devo ver a mensagem do campo de investimento: {string}") do |investment_error|
  log investment_error
  label_invest_error = @simulator_page.label_invest_error.text
  log label_invest_error
  expect(label_invest_error).to eql(investment_error)
end

Então("devo ver a mensagem do campo de mes ou ano : {string}") do |month_year_error|
  label_month_year = @simulator_page.label_tempo_error.text
  expect(label_month_year).to eql(month_year_error)
end

Quando("Clico em Limpar") do
  @simulator_page.link_limpar_form.click
end

#Então("devo ver a tabela de resultado com o valor {string}") do |valor|
#  @table_page = TablePage.new
#  @table_page.text_table_time
#  expect(@table_page.text_table_time).to eql(valor)
#end
######## Isso foi uma tentativa de solução, porém consegui validar apenas se imprimia ou não o mes ou o valor na tela

#Então("devo  imprimir o valor de {string} meses com o Valor de {string}") do |month, value|
#  @table_page = TablePage.new
#  table_element_month = @table_page.table_list_month
#  table_element_value = @table_page.table_list_value
#
#  table_element_month.each do |element_month|
#    expect(element_month.text).eql?(month)
#    if (element_month.text).eql?(month)
#      log "mes " + element_month.text
#      break
#    end
#  end
#
#  table_element_value.each do |element_value|
#    if (element_value.text).eql?(value)
#      expect(element_value.text).eql?(value)
#      log "valor " + element_value.text
#      break
#    end
#  end
#end
