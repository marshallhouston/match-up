class AddStatusToScoreSchool < ActiveRecord::Migration[5.1]
  def change
    add_column :score_schools, :status, :integer
  end
end
