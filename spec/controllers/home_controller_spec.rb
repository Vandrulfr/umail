require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET index' do
    it "should assign current_user to @user" do
      get :index
      expect(assigns(:current_user)).to eq(@user)

    end
      
    end

end

