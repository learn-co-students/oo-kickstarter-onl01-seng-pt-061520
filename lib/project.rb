require 'pry'

class Project
    attr_reader :title
    attr_accessor :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        backers << backer
        backer.back_project(self) unless backers.include?(self)
    end
end