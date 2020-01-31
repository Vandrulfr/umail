module LoginHelper
  def cria_user(email = 'email_rspec@gmail.com', senha = 'password', nome = 'Wencesclau Primeiro da Bohemia',
                telefone = '(21)91234-5678', matricula='117003069')
    visit "/"
    click_link "Sign up"
    fill_in('Email', with: "#{email}")
    fill_in('Password', with: "#{senha}")
    fill_in('Password confirmation', with: "#{senha}")
    fill_in('Nome', with: "#{nome}")
    fill_in('Telefone',with: "#{telefone}")
    fill_in('Matricula',with: "#{matricula}")
    click_button"Sign up"
  end
end
RSpec.configure do |config|
  config.include LoginHelper
end
