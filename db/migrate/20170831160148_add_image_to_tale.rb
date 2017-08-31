class AddImageToTale < ActiveRecord::Migration[5.1]
  def change
    add_column :tales, :image, :string, :default => "https://www.shitpostbot.com/img/sourceimages/man-crab-57b99a792f360.jpeg"
  end
end
