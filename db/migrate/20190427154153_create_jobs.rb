class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :date
      t.string :cost
      t.string :text
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
