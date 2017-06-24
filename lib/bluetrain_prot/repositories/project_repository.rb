class ProjectRepository < Hanami::Repository
  associations do
    has_many :attrs
    has_many :tasks
  end
end
