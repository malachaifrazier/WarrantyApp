class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :type
      t.text :summary
      t.references :user

      t.timestamps
    end
    add_index :reports, :user_id

  end
end
