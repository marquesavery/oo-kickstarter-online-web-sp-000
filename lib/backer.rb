require 'pry'

class Backer

  attr_accessor :name, :backed_projects
  # attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # binding.pry
    self.backed_projects << project
    # self.backed_projects.last.backers << self.name
    project.backers << self.name
  end

end
