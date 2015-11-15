class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :id
      t.references :runner_id, index: true, foreign_key: true
      t.integer :distance

      t.timestamps null: false
    end
  end
end
