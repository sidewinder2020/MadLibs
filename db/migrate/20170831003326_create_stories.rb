class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :adjective_1
      t.string :adjective_2
      t.string :noun_1
      t.string :noun_2
      t.string :plural_noun_1
      t.string :adverb_1
      t.string :verb_1
      t.string :adjective_3
      t.string :plural_noun_2
      t.string :adjective_4
      t.string :adjective_5
      t.string :adjective_6
      t.string :plural_noun_3

      t.timestamps
    end
  end
end
