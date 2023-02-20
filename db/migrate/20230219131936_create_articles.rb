class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :title
      t.string :description
      t.references :author, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
