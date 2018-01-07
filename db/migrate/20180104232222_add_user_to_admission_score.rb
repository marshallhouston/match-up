class AddUserToAdmissionScore < ActiveRecord::Migration[5.1]
  def change
    add_reference :admission_scores, :user, foreign_key: true
  end
end
