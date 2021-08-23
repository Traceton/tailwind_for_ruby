require "thor/group"
require_relative "generate_forms"

module TailwindForRuby
    module Generator_controller
        class Ui < Thor::Group
            include Generate_Forms
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
                tailwind_ui_form_components = ["input_with_label","input_with_label_and_help_text"]

                final_form = generate_forms(tailwind_ui_component,model_name,*model_attributes) if tailwind_ui_form_components.include?(tailwind_ui_component) 
                
                puts final_form if final_form != nil

                File.write("generated_tailwind_components/#{tailwind_ui_component}-#{model_name}", final_form) if final_form != nil
   
              end  
              
        end
    end
end    
