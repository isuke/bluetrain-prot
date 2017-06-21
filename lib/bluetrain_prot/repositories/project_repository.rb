class ProjectRepository < Hanami::Repository
  associations do
    has_many :tasks
  end
end
