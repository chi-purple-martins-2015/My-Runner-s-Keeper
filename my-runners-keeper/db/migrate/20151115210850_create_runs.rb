class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      # t.references :runner_id, index: true, foreign_key: true
      t.integer :runner_id
      t.integer :distance

      t.timestamps null: false
    end
  end
end
