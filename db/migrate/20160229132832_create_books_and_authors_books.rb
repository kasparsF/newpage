class CreateBooksAndAuthorsBooks < ActiveRecord::Migration
def self.up
create_table :books do |table|
table.column :title, :string, :limit => 255, :null => false
table.column :publisher_id, :integer, :null => false
table.column :published_at, :datetime
table.column :isbn, :string, :limit => 13, :unique => true
table.column :blurb, :text
table.column :page_count, :integer
table.column :price, :float
table.column :created_at, :timestamp
table.column :updated_at, :timestamp
end
create_table :authors_books, :id => false do |table|
table.column :author_id, :integer, :null => false
table.column :book_id, :integer, :null => false
end
end
end