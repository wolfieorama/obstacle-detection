class CreateDetectedObstacles < ActiveRecord::Migration[5.1]
  def change
    create_table :detected_obstacles do |t|
      t.datetime :time
      t.integer :distance

      t.timestamps
    end
  end
end
