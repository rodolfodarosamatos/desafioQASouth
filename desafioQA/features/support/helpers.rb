require "fileutils"

module Helpers
  def create_folder
    log = File.dirname("log/*")
    unless File.directory?(log)
      Fileutils.mkdir_p(log)
    end
  end

  #não utilizado
  def juros
    inicial = 20.00
    valor = 20.00
    juros = 0.5
    tempo = 20
    result = inicial
    m = 1

    x = 0
    while (x < tempo)
      result = valor + (valor + valor * 0.5 / 100) * m
      tempo = tempo - 1
      puts m
      m = m + 1
      puts result
    end

    puts result
    return result
  end
end
