require 'pry'
class Backer
attr_reader :name
attr_accessor :project, :backed_projects

@@all= []

def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
end

def back_project(project)
    @backed_projects << project
   project.backers << self
end

end