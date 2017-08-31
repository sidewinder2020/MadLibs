class AddNameToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :name, :string
  end
end
