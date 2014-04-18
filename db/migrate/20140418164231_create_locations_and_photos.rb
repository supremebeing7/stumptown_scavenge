class CreateLocationsAndPhotos < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address

      t.timestamps
    end

    create_table :photos do |t|
      t.attachment :pic
      t.string :caption
      t.belongs_to :location
      t.datetime :taken
    end

    create_table :visits do |t|
      t.belongs_to :user
      t.belongs_to :location
    end
  end
end
