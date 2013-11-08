require 'got_skillz/version'
require 'got_skillz/client'
require 'got_skillz/skill'
require 'got_skillz/config'

module GotSkillz

  def self.skillz_for(login, password = nil)
    GotSkillz::Client.new(login, password).skillz
  end

  def self.config
    @@config ||= GotSkillz::Config.new
    yield(@@config) if block_given?
    @@config
  end

end
