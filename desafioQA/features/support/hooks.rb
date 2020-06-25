require "fileutils"
require "time"
require "cucumber"
#include Capybara::DSL

Before("@simulador_poupanca") do
  visit "/html/ferramenta/simulador-investimento-poupanca/"
end

After do
  Capybara.current_session.driver.quit
end

After do |scenario|
  time = Time.now.utc.iso8601.tr(":", "")
  if scenario.failed?
    temp_shot = page.save_screenshot("log/temp" + time + "_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot).read)
    embed(screenshot, "image/png", "scr")
  end
end
