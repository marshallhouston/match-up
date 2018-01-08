class CreateScoreSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :score_schools do |t|
      t.references :admission_score, foreign_key: true
      t.references :school, foreign_key: true
    end
  end
end
