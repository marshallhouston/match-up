desc "Add slug to all schools"

task add_slug_to_schools: :environment do
  School.all.each do |school|
    slug = school.name.parameterize
    school.update(slug: slug)
    puts "Slug: #{slug} for #{school.name}"
  end
end
