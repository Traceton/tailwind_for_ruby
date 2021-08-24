# updated aug 24, 2021
module Helpers
    def determine_tailwind_group(tailwind_ui_component)
        
        # application shells/
        #  stacked_layouts,sidebar_layouts,multi_column_layouts
        application_shells = %w[ stacked_layouts: %w[ light_nav_with_bottom_border light_nav_on_gray_background
         dark_nav_with_white_page_header branded_nav_with_compact_white_page_header dark_nav_with_overlap
          brand_nav_with_overlap branded_nav_with_white_page_header dark_nav_with_compact_white_page_header
          two-row_navigation_with_overlap ]]

        forms = %w[ input_groups: %w[ input_with_label input_with_label_and_help_text input_with_validation_error ]]  

        tailwind_group = "application_shells" if application_shells.include?(tailwind_ui_component)
        tailwind_group = "forms" if forms.include?(tailwind_ui_component)

        if tailwind_group != nil
            puts tailwind_group
            return tailwind_group
        else
            puts "tailwind ui component not found in determine_tailwind_group function"
        end
        
    end
   
end
