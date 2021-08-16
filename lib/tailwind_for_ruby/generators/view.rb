require "thor/group"

module TailwindForRuby
    module Generators
        class View < Thor::Group
            include Thor::Actions
            argument :tailwind_ui_name, :type => :string
            argument :model_attributes, :type => :string

              def self.source_root
                File.dirname(__FILE__) + "/view/templates"
              end

              def create_directory
                empty_directory("generated_tailwind_components")
              end
              
              def generate_view
                ### Forms
                ## Input Groups
                # input_with_label
                template("forms/input_with_label.txt", "generated_tailwind_components/#{tailwind_ui_name}s.html.erb") if tailwind_ui_name == "input_with_label"
                # input_with_label_and_help_text
                template("forms/input_with_label_and_help_text.txt", "generated_tailwind_components/#{tailwind_ui_name}s.html.erb") if tailwind_ui_name == "input_with_label_and_help_text"
              end  

        end
    end
end    
