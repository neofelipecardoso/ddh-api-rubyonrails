class AddImgUrlToItems < ActiveRecord::Migration[7.2]
  def change
    add_column :items, :img_url, :string
  end
end
