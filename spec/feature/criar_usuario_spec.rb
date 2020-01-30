require 'rails_helper'

RSpec.feature "Criar usuario", :type => :feature do
  scenario 'usuario cria conta' do
    visit "/home/index"
    click_link "Sign Up"
  end
end

