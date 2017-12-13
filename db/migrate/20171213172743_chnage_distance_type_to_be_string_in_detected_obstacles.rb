class ChnageDistanceTypeToBeStringInDetectedObstacles < ActiveRecord::Migration[5.1]
  def change
    change_column :detected_obstacles, :distance, :string
  end
end
