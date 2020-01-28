class CreateUffmails < ActiveRecord::Migration[6.0]
  def change
    create_table :uffmails do |t|

      t.timestamps
    end
  end
end
