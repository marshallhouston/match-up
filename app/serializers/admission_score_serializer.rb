class AdmissionScoreSerializer < ActiveModel::Serializer
  attributes :id, :gpa, :sat_score, :admission_index_score, :created_at
end
