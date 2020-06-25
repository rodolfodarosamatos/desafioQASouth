class TablePage
  include Capybara::DSL

  def text_table_time
    js_script = "return $('.valor').text();"
    table = page.execute_script(js_script)
  end

  def text_table_month
    find(:xpath, ".//th[text()='Tempo (Meses)' ]")
  end

  def text_table_value
    find(:xpath, ".//th[text()='Valor' ] ")
  end

  def table_list_month
    all(:xpath, "//*[@class='maisOpcoes']//child::td[1]")
  end

  def table_list_value
    all(:xpath, "//*[@class='maisOpcoes']//child::td[2]")
  end

  def table_list
    all(:xpath, "//*[@class='maisOpcoes']//child::tr")
  end
end
