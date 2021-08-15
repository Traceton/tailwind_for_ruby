require 'thor'
require 'tailwind_for_ruby'

require 'tailwind_for_ruby/generators/view'

module TailwindForRuby
  class Cli < Thor
    desc "view", "Generates a html.erb view"
    def generate(command_name, model_name,model_attributes)
        TailwindForRuby::Generators::View.start([command_name, model_name,model_attributes])
    end
  end
end