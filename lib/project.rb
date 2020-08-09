class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backer_projects = backer.backed_projects
    @backers << backer
    backer_projects << self
  end



end
