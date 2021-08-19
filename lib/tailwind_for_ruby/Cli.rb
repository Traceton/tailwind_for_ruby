require 'thor'
require 'tailwind_for_ruby'

require 'tailwind_for_ruby/generators/view'

module TailwindForRuby
  class Cli < Thor
    desc "generate", "Generates a html.erb view"
    def generate( model_name,model_name,*model_attributes)
        TailwindForRuby::Generators::View.start([ model_name,model_name,model_attributes])
    end
  end
end