# desafioQASouth
Este exercício foi feito em ruby com o framework capybara
Foi utilizado o sistema operacional linux para criar o projeto, se for rodado no windows, pode ser necessário a revisão de alguns caminhos relacionados a pasta
Existe um Shell Script para que funcione de forma adequada o projeto, porém se não funcionar a criação do projeto via shell script, será necessário fazer a instalação de algumas ferramentas:


## Geckodriver
##verificar versão de acordo com o navegador
##o executavel deverá ficar am uma pasta que esteja configurada na variavel PATH do sistema
wget https://github.com/mozilla/geckodriver/releases/download/v0.25.0/geckodriver-v0.25.0-linux64.tar.gz
sudo sh -c 'tar -x geckodriver -zf geckodriver-v0.25.0-linux64.tar.gz -O > /usr/bin/geckodriver'
sudo chmod +x /usr/bin/geckodriver
rm geckodriver-v0.25.0-linux64.tar.gz

## Chromedriver
##verificar versão de acordo com o navegador
##o executavel deverá ficar am uma pasta que esteja configurada na variavel PATH do sistema
wget https://chromedriver.storage.googleapis.com/77.0.3865.40/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo chmod +x chromedriver
sudo mv chromedriver /usr/bin/
rm chromedriver_linux64.zip

## Dependências
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
sudo apt-get install git

## Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
source ~/.bashrc
rbenv install 2.6.1
rbenv global 2.6.1
source ~/.bashrc

## install bundler
gem install bundle

# download project
git clone 
sudo mv desafio /home/pasta pessoal/Teste/DesafioQA

## install Gemfile
cd /home/pasta pessoal/Teste/DesafioQA
sudo chmod +x Gemfile
bundle install

## Cucumber test
# No terminal, dentro da pasta desafioQA executar os testes
# Substituir a tag ou o navegador
# no arquivo cucumber.yaml é possível ver que variáveis podem ser alteradas ao chamar o Rakefile
# rake specs["-t tag","-p navegador"]
rake specs["-t @simulacao_para_voce_ok","-p chrome"]
