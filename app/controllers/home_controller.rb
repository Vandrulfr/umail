class HomeController < ApplicationController
  helper MailGen
  def index
    @user = current_user
  end
end
