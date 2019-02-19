class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
t.string :job_title
t.string :level_of_excellence
      t.timestamps
    end
  end
end
