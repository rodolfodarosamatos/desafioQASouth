class SimulatorPage
  include Capybara::DSL

  def application_field(application_value)
    find_by_id("valorAplicar").set(application_value)
  end

  def investment_field(investiment_value)
    find_by_id("valorInvestir").set(investiment_value)
  end

  def time_field(time_value)
    find_by_id("tempo").set(time_value)
  end

  def simulate
    click_button "Simular"
  end

  def label_application_error
    find_by_id("valorAplicar-error")
  end

  def label_invest_error
    find_by_id("valorInvestir-error")
  end

  def label_tempo_error
    find_by_id("tempo-error")
  end

  def user(user)
    find(:xpath, ".//input[@value='#{user}']").click
  end

  def select_month
    click_link "Meses"
  end

  def click_year
    find(:xpath, ".//a[text()='Anos']")
  end

  def listaSelect
    all(".listaSelect")
  end

  def link_limpar_form
    find(".btnLimpar")
  end
end
