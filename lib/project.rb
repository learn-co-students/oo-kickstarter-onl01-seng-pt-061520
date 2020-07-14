class Project

  def initialize(title)
    @title = title
    @backers = []
  end

  attr_reader :backers, :title

  def add_backer(backer)
    @backers << backer
    #unless avoids infinite loop
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end
