require 'thor'
require 'tailwind_for_ruby'

require 'tailwind_for_ruby/generator/ui'

module TailwindForRuby
  class Cli < Thor
    desc "generate", "Generates different components"
    def generate(component_to_generate,tailwind_ui_component,model_name,*model_attributes)
        TailwindForRuby::Generator_controller::Ui.start([tailwind_ui_component,model_name,model_attributes]) if component_to_generate == "ui"
    end
  end
end
