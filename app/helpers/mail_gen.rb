module MailGen

  def generate(nome, matricula)
    options = []
    nome.downcase!
    options[0] = "#{nome.split[0]}"+"#{nome.split.last}"+"@id.uff.br"  # Primeiro nome + Ultimo nome
    lock = (User.where(uffmail: options[0]).present?)
    while lock
      options[0] = "#{nome.split[0]}"+"#{nome.split.last}"+"#{rand(500)}"+"@id.uff.br"
      lock = (User.where(uffmail: options[0]).present?)
    end

    options[1] = "#{nome.split[0]}"+"_#{nome.split[1]}"+"@id.uff.br"   # Primeiro nome + _ + segundo nome
    lock = (User.where(uffmail: options[1]).present?)
    while lock
      options[1] = "#{nome.split[0]}"+"_#{nome.split[1]}"+"#{rand(500)}"+"@id.uff.br"
      lock = (User.where(uffmail: options[1]).present?)
    end

    options[2] = "#{nome.split[0]}"+"#{matricula}"+"@id.uff.br"      # Primeiro nome + matricula

    options[3] = "#{nome.split[0]}"+"#{nome.split[1].chr}"+"#{nome.split.last.chr}"+"@id.uff.br" #primeiro nome, primeiro caracter do segundo e ultimo nomes
    lock = (User.where(uffmail: options[3]).present?)
    while lock
      options[3] = "#{nome.split[0]}"+"#{nome.split[1].chr}"+"#{nome.split.last.chr}"+"#{rand(500)}"+"@id.uff.br"
      lock = (User.where(uffmail: options[3]).present?)
    end

    options[4] = "#{nome.split[0]}"+"#{nome.split.last}"+"#{matricula}"+"@id.uff.br"  # Primeiro nome, ultimo nome, matricula

    options
  end

end
