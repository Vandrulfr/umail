FactoryBot.define do
  factory :user do
    email {'email_rspec@gmail.com'}
    nome {'nome nome'}
    password {'password'}
    matricula {'123456789987654321'}
    telefone {'01020308'}
    uffmail {'nomenome@id.uff.br'}
  end
  factory :uffmail_1, class: 'user' do
    uffmail {'nome_nome@id.uff.br'}
    email {'email_rspec@gmail.com'}
    nome {'nome nome'}
    password {'password'}
    matricula {'123456789987654321'}
    telefone {'01020308'}
  end
  factory :uffmail_2, class: 'user' do
    uffmail {'nomenn@id.uff.br'}
    email {'email_rspec@gmail.com'}
    nome {'nome nome'}
    password {'password'}
    matricula {'123456789987654321'}
    telefone {'01020308'}
  end
end
