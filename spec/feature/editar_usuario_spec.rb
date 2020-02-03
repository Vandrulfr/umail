require 'rails_helper'

RSpec.feature "Editar usuario", :type => :feature do
  scenario 'usuario existente' do
    FactoryBot.create(:user)
    visit'/'
    click_link 'Login'
    fill_in('Email', with: 'email_rspec@gmail.com')
    fill_in('Password', with: 'password')
    click_button 'Log in'
    click_link 'Edit profile'
    fill_in('Telefone', with: '0000000000000000000000000')
    click_button('Update')
  end
end
