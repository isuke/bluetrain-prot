class AttrRepository < Hanami::Repository
  def attrs_by_project(project_id)
    attrs.where(project_id: project_id)
  end
end
