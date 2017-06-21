namespace :sample do
  desc "Fill database with sample data"
  task populate: :environment do
    Dir[File.expand_path('../../spec/support/fabricators', __FILE__) << '/*.rb'].each { |file| require file }

    populate_projects
    populate_tasks
  end

  def populate_projects(num = 10)
    ProjectRepository.new.clear

    Fabricate.times(num, :project)
  end

  def populate_tasks(num = 10)
    TaskRepository.new.clear

    ProjectRepository.new.all.each do |project|
      Fabricate.times(num, :task, project_id: project.id)
    end
  end
end
