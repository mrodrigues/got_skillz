module GotSkillz
  class Config
    DELIMITERS = [:skill_begin, :skill_end, :tag_begin, :tag_end]
    attr_accessor *DELIMITERS

    def initialize
      @skill_begin = '<3'
      @skill_end   = '</3'
      @tag_begin   = ':3'
      @tag_end     = '>:3'
    end

    DELIMITERS.each do |delimiter|
      define_method "#{delimiter}=" do |value|
        instance_variable_set "@#{delimiter}", Regexp.escape(value)
      end
    end
  end
end
