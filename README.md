# GotSkillz

Track your skillz with GitHub commit messages, and list where and when your learned them.

## Installation

Add this line to your application's Gemfile:

    gem 'got_skillz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install got_skillz

## Usage

Get your skillz:

    require 'got_skillz'

    my_skillz = GotSkillz.skillz_for('login', 'password')
    some_skill = my_skillz.first

    some_skill.original_message # "Did something awesome <3 Learned to
sing </3"
    some_skill.skill            # "Learned to sing"
    some_skill.url              #
"http://github.com/:user/:repo/commit/:sha"

Wanna change the tags to something boring?

    GotSkillz.config do |c|
      c.skill_begin = "<skill>"
      c.skill_end   = "</skill>"
    end

    my_skillz = GotSkillz.skillz_for('login', 'password')
    some_skill = my_skillz.first

    some_skill.original_message # "Did something boring <skill> Learned
to fold laundry in a new exciting fashion </skill>"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
