# updated aug 24, 2021
require_relative "tailwind_components.rb"

module Helpers

    def determine_tailwind_group(tailwind_ui_component)
        tailwind_group = "application_shells" if $application_shells.include?(tailwind_ui_component)
        tailwind_group = "forms" if $forms.include?(tailwind_ui_component)

        if tailwind_group != nil
            puts tailwind_group
            return tailwind_group
        else
            puts "tailwind ui component not found in determine_tailwind_group function"
        end

    end

    def determine_tailwind_sub_group(tailwind_ui_component)
        
        tailwind_group = determine_tailwind_group(tailwind_ui_component)
        
        if tailwind_group == "forms"
            puts $test_object.:group1
        else
            puts "tailwind ui sub group not found"
        end    

    end
   
end
