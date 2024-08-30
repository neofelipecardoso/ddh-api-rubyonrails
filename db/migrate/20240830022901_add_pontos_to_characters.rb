class AddPontosToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :pontos, :integer
  end
end
