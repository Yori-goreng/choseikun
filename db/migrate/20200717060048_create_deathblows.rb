class CreateDeathblows < ActiveRecord::Migration[6.0]
  def change
    create_table :deathblows do |t|

      t.timestamps
    end
  end
end
