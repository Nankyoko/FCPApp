class DropJobs < ActiveRecord::Migration[5.2]
  def change
  	drop_table :jobs
  end
end
