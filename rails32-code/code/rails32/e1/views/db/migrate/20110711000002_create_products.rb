#---
# Excerpted from "Agile Web Development with Rails 3.2",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails32 for more book information.
#---
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :title, :limit => 100
      t.text    :description
      t.string  :image_url
      t.decimal :price, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end
end