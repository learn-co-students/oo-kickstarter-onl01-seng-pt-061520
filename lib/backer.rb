class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    project_backers = project.backers
    @backed_projects << project
    project_backers << self
  end

end
