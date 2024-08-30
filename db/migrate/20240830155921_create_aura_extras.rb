class CreateAuraExtras < ActiveRecord::Migration[7.2]
  def change
    create_table :aura_extras do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
