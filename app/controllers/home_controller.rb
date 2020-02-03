class HomeController < ApplicationController
  helper MailGen
  def index
    @user = current_user # Passa usuario atual da sessão do devise para controlador Home
  end
end
