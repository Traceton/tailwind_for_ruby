require 'thor/group'
require_relative 'generate_forms'
require_relative 'helpers'

module TailwindForRuby
  module Generator_controller
    class Ui < Thor::Group
      include Generate_Forms
      include Helpers
      include Thor::Actions
      argument :tailwind_ui_component, type: :string
      argument :model_name, type: :string
      argument :model_attributes, type: :array

      def self.source_root
        File.dirname(__FILE__) + '/view/templates'
      end

      def create_directory
        empty_directory('generated_tailwind_components')
        # puts "model name ---> #{model_name}"
        # puts "model attributes ---> #{model_attributes}"
      end

      def generate_view
        determine_input_type(tailwind_ui_component)
        tailwind_ui_form_components = %w[]

        if tailwind_ui_form_components.include?(tailwind_ui_component)
          final_component = generate_forms(tailwind_ui_component, model_name,
                                           *model_attributes)
        end

        unless final_component.nil?
          File.write("generated_tailwind_components/#{tailwind_ui_component}-#{model_name}.html.erb",
                     final_component)
        end
      end
    end
  end
end
