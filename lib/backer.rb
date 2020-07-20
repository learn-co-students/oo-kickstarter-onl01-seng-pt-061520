class Backer
  
  attr_accessor :name
  attr_accessor :backed_projects
  
  def initialoze(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    backed_projects << project
    project.backers << self
  end
  
end