class CreateZombies < ActiveRecord::Migration[6.1]
  def change
    create_table :zombies do |t|
      t.string :weapon
      t.integer :kills
      t.boolean :brain, default: false
      t.boolean :alive, default: false 
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
