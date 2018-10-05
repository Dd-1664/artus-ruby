class Articles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles
    add_column :articles, :title, :string
    add_column :articles, :author, :string
    add_column :articles, :article_text, :text
    add_column :articles, :article_date, :datetime
  end
end
