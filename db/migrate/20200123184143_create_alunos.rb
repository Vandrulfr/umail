class CreateAlunos < ActiveRecord::Migration[6.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :email
      t.string :matricula
      t.string :telefone
      t.string :uffmail

      t.timestamps
    end
  end
end
