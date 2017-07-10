namespace :sample do
  desc "Fill database with sample data"
  task populate: :environment do
    Dir[File.expand_path('../../spec/support/fabricators', __FILE__) << '/*.rb'].each { |file| require file }

    populate_projects
    populate_attrs
    populate_tasks
  end

  def populate_projects(num = 2)
    ProjectRepository.new.clear

    Fabricate.times(num, :project)
  end

  def populate_attrs(num = 3)
    AttrRepository.new.clear

    ProjectRepository.new.all.each do |project|
      Fabricate.times(num, :attr, project_id: project.id)
    end
  end

  def populate_tasks(num = 10)
    TaskRepository.new.clear

    ProjectRepository.new.all.each do |project|
      attrs = AttrRepository.new.attrs_by_project(project.id)
      num.times do
        vals = {}.tap do |h|
          attrs.each do |attr|
            h[attr.id.to_s] = \
              case attr.mold
              when "Int"    then Faker::Number.number(3)
              when "String" then Faker::Lorem.word
              end
          end
        end
        Fabricate.create(:task, project_id: project.id, vals: vals)
      end
    end
  end
end
