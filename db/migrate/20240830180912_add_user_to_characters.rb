class AddUserToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_reference :characters, :user, null: false, foreign_key: true, null: true
  end
end
