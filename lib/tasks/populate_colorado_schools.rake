desc "Add records for public colleges and universities in Colorado"
task populate_colorado_schools: :environment do
  school_count_before = School.count
  School.find_or_create_by(name: "Adams State University", min_admission_score: 80)
  School.find_or_create_by(name: "Colorado School of Mines", min_admission_score: 110)
  School.find_or_create_by(name: "Colorado State University", min_admission_score: 101)
  School.find_or_create_by(name: "Colorado State University - Global", min_admission_score: 86)
  School.find_or_create_by(name: "Colorado State University - Pueblo", min_admission_score: 86)
  School.find_or_create_by(name: "Fort Lewis College", min_admission_score: 92)
  School.find_or_create_by(name: "Colorado Mesa University", min_admission_score: 92)
  School.find_or_create_by(name: "Metropolitan State University of Denver", min_admission_score: 76)
  School.find_or_create_by(name: "University of Colorado Boulder", min_admission_score: 103)
  School.find_or_create_by(name: "University of Colorado Colorado Springs", min_admission_score: 92)
  School.find_or_create_by(name: "University of Colorado Denver", min_admission_score: 93)
  School.find_or_create_by(name: "University of Northern Colorado", min_admission_score: 94)
  School.find_or_create_by(name: "Western State Colorado University", min_admission_score: 80)
  puts "#{School.count - school_count_before} New Schools Created! This should be 13 the first time, and 0 any time afterwards."

end
