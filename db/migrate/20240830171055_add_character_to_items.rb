class AddCharacterToItems < ActiveRecord::Migration[7.2]
  def change
    add_reference :items, :character, null: false, foreign_key: true
  end
end
