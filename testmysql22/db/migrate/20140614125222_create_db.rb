class CreateDb < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :fbid
    	t.string :location
    	t.string :blood_type
    	t.string :gender
    	t.boolean :is_donor

    	t.timestamps
    end
     create_table :events do |t|
    	t.belongs_to :user
    	t.string :title
    	t.text :details
    	t.date :event_date
    	t.string :location
    	t.string :photos
    	t.string :thumb_photo
    	t.string :geolocation

    	t.timestamps
    end
  end
end
