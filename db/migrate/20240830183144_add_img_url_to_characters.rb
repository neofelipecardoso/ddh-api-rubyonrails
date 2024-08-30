class AddImgUrlToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :img_url, :string
  end
end
