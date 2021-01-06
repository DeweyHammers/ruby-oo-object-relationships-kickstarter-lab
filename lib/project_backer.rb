class ProjectBacker
    attr_reader :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        save()
    end

    def save 
        @@all << self
    end

    # class methods
    class << self
        def all
            @@all
        end
    end
end