class Project
    attr_reader :backers, :title
    def initialize(title)
      @title = title
      @backers = []
    end
    def add_backer(backer)
      @backers << backer
      project = self
      backer.back_project(project)
      if (backer.backed_projects.include?(self))
      backer.back_project(self)
      end
    end
  end