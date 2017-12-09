class ChangeTheNameOfTimeToTimestamp < ActiveRecord::Migration[5.1]
  def change
    rename_column :detected_obstacles, :time, :timestamps
  end
end
