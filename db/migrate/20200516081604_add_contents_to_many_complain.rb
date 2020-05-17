class AddContentsToManyComplain < ActiveRecord::Migration[6.0]
  def change
    add_column :many_complaints, :content, :text
  end
end
