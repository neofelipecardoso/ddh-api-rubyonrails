class AddEneruToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :eneru, :integer
  end
end
