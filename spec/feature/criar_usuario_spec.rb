require 'rails_helper'

RSpec.feature "Criar usuario", :type => :feature do
  scenario 'usuario cria conta' do
    cria_user
    expect(page).to have_text("Logged in as email_rspec@gmail.com")
  end
  scenario 'usuario não digita sobrenome' do
    cria_user('email@rspec@gmail.com','password','regisvaldo')
    expect(page).to have_text("Sem sobrenome.")
  end
  scenario 'email já existe' do
    FactoryBot.create(:user)
    cria_user
    expect(page).to have_text("Email has already been taken")
  end
  scenario 'primeiro uffmail já foi selecionado' do
    FactoryBot.create(:user)
    cria_user('email_inutilizado@gmail.com', 'password', 'nome nome')
  end
  scenario 'segundo uffmail já foi selecionado' do
    FactoryBot.create(:uffmail_1)
    cria_user('email_inutilizado@gmail.com', 'password', 'nome nome')
  end
  scenario 'quarto uffmail já foi selecionado' do
    FactoryBot.create(:uffmail_2)
    cria_user('email_inutilizado@gmail.com', 'password', 'nome nome')
  end
end


