namespace :sample do
  desc "Fill database with sample data"
  task populate: :environment do
    Dir[File.expand_path('../../spec/support/fabricators', __FILE__) << '/*.rb'].each { |file| require file }

    populate_projects
  end

  def populate_projects(num = 10)
    ProjectRepository.new.clear

    Fabricate.times(num, :project)
  end
end
