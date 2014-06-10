class CreateBloodRequests < ActiveRecord::Migration
  def change
    create_table :blood_requests do |t|
      t.string :name
      t.string :details

      t.timestamps
    end
  end
end
