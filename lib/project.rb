class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        backer = ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select {|projects_backed| projects_backed.project == self}
        projects.map {|project| project.backer}
    end
end