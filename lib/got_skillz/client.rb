require 'octokit'
module GotSkillz
  class Client

    attr_accessor :skillz

    def initialize(login, password = nil)
      user = Octokit::Client.new(:login => login, :password => password).user # :login => ENV['OCTOKIT_LOGIN'], :password => ENV['OCTOKIT_PASSWORD']

      @skillz = []

      config = GotSkillz.config
      user.rels[:events].get.data.each do |event|
        if event.type == "PushEvent"
          repo = event.repo.name
          event.payload.commits.each do |commit|
            if commit.author.email == user.email &&
              commit.message =~ /#{config.skill_begin}(.*)#{config.skill_end}/
              @skillz << Skill.new(repo: repo, commit: commit.sha, original_message: commit.message, skill: $1)
            end
          end
        end
      end
    end
  end
end
