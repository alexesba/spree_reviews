class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.integer :product_id
      t.string  :name
      t.string  :location
      t.float   :rating
      t.text    :title
      t.text    :review
      t.boolean :approved, :default => false
      t.boolean :good
      t.boolean :featured, default: false
      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
