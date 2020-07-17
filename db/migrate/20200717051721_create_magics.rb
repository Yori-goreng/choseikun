class CreateMagics < ActiveRecord::Migration[6.0]
  def change
    create_table :magics do |t|

      t.timestamps
    end
  end
end
