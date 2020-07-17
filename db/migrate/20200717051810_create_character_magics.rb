class CreateCharacterMagics < ActiveRecord::Migration[6.0]
  def change
    create_table :character_magics do |t|

      t.timestamps
    end
  end
end
