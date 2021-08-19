require "thor/group"

module TailwindForRuby
    module Generators
        class View < Thor::Group
            include Thor::Actions
            argument :tailwind_ui_component, :type => :string
            argument :model_name, :type => :string
            argument :model_attributes, :type => :array

              def self.source_root
                File.dirname(__FILE__) + "/view/templates"
              end

              def create_directory
                empty_directory("generated_tailwind_components")
                # puts "model name ---> #{model_name}"
                # puts "model attributes ---> #{model_attributes}"
              end
              
              def generate_view
                generate_forms(tailwind_ui_component,model_name,*model_attributes)
                ### Forms
                ## Input Groups
                # input_with_label
                # template("forms/input_with_label.txt", "generated_tailwind_components/#{tailwind_ui_component}s.html.erb") if tailwind_ui_component == "input_with_label"
                # input_with_label_and_help_text
                # template("forms/input_with_label_and_help_text.txt", "generated_tailwind_components/#{tailwind_ui_component}s.html.erb") if tailwind_ui_component == "input_with_label_and_help_text"
              end  
              
        end
    end
end    


    def generate_forms(tailwind_ui_component,model_name,*model_attributes)
      puts "tailwind ui component ---> #{tailwind_ui_component}"
      puts "model name ---> #{model_name}"
      puts "model attributes ---> #{model_attributes}"
    end

