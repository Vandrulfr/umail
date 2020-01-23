class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, 'matricula', :string
    add_column :users, 'nome', :string
    add_column :users, 'uffmail', :string
    add_column :users, 'telefone', :string
  end
end
