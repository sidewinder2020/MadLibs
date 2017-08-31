class AddImageToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :image, :string, :default => "https://www.shitpostbot.com/img/sourceimages/man-crab-57b99a792f360.jpeg"
  end
end
