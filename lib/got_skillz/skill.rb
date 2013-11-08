module GotSkillz
  class Skill
    attr_accessor :repo, :commit, :original_message, :skill, :tags

    def initialize(options)
      options.each { |attribute, value| send("#{attribute}=", value.strip) }
      @tags ||= []
    end

    def url
      "http://github.com/#{repo}/commit/#{commit}"
    end
  end
end
