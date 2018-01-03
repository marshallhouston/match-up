class CreateAdmissionScores < ActiveRecord::Migration[5.1]
  def change
    create_table :admission_scores do |t|
      t.float :gpa
      t.integer :sat_score
      t.integer :admission_index_score

      t.timestamps
    end
  end
end
