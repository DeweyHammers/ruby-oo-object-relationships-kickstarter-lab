class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        project = ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select {|projects_backed| projects_backed.backer == self}
        projects.map {|project| project.project}
    end
end