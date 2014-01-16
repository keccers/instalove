class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
    	t.string :title
    	
    	t.integer :user_id, null: false
    	t.timestamps
    end
  end
end
