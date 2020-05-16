class CreateManyComplaints < ActiveRecord::Migration[6.0]
  def change
    create_table :many_complaints do |t|
      t.text :content

      t.timestamps
    end
  end
end
