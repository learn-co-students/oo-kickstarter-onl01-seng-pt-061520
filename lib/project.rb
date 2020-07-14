class Project
  attr_reader :backers, :title
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(anything)
    @backers << anything
    anything.backed_projects << self
  end
end