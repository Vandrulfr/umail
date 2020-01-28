require 'random'
class Uffmail < ApplicationRecord

  def initialize
    @options = Array.new(5)    # Inicializa array que guarda as opções de e-mail
  end

  def generate
    @options[0] = "#{current_user.nome.split[0]}"+"#{current_user.nome.split.last}"+"@id.uff.br"
    lock = (User.where(uffmail: @options[0]).present?)
    while lock
      @options[0] = "#{current_user.nome.split[0]}"+"#{current_user.nome.split.last}"+"#{rand(500)}"+"@id.uff.br"
      lock = (User.where(uffmail: @options[0]).present?)
    end

    @options[1] = "#{current_user.nome.split[0]}"+"_#{current_user.nome.split[1]}"+"@id.uff.br"
    lock = (User.where(uffmail: @options[1]).present?)
    while lock
      @options[1] = "#{current_user.nome.split[0]}"+"_#{current_user.nome.split[1]}"+"#{rand(500)}"+"@id.uff.br"
      lock = (User.where(uffmail: @options[1]).present?)
    end

    @options[2] = "#{current_user.nome.split[0]}"+"#{current_user.matricula}"+"@id.uff.br"

    @options[3] = "#{current_user.nome.split[0]}"+"#{current_user.nome.split[1].chr}"+"#{current_user.nome.split.last.chr}"+"@id.uff.br"
    lock = (tabela.mailExists?(@options[3]))
    while lock
      @options[3] = "#{current_user.nome.split[0]}"+"#{current_user.nome.split[1].chr}"+"#{current_user.nome.split.last.chr}"+"#{rand(500)}"+"@id.uff.br"
      lock = (tabela.mailExists?(@options[3]))
    end

    @options[4] = "#{current_user.nome.split[0]}"+"#{current_user.nome.split.last}"+"#{current_user.matricula}"+"@id.uff.br"

    @options
  end

end
