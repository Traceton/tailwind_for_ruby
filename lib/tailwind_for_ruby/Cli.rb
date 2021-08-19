require 'thor'
require 'tailwind_for_ruby'

require 'tailwind_for_ruby/generators/view'

module TailwindForRuby
  class Cli < Thor
    desc "generate", "Generates a html.erb view"
    def generate(tailwind_ui_component,model_name,*model_attributes)
        TailwindForRuby::Generators::View.start([ tailwind_ui_component,model_name,model_attributes])
    end
  end
end