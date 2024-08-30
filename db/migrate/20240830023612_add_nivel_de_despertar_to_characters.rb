class AddNivelDeDespertarToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :nivel_de_despertar, :integer
  end
end
