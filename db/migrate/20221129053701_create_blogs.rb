class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :user
      t.timestamps
    end
  end
end
