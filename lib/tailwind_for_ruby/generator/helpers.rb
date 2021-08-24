# updated aug 24, 2021
module Helpers
    def determine_input_type(tailwind_ui_component)
        # application shells/
        #  stacked_layouts,sidebar_layouts,multi_column_layouts
        application_shells = %w[stacked_layouts: %w[light_nav_with_bottom_border light_nav_on_gray_background
         dark_nav_with_white_page_header branded_nav_with_compact_white_page_header dark_nav_with_overlap
          brand_nav_with_overlap branded_nav_with_white_page_header dark_nav_with_compact_white_page_header
          two-row_navigation_with_overlap]]

        forms = %w[input_groups: %w[input_with_label input_with_label_and_help_text input_with_validation_error]]  

        puts "#{tailwind_ui_component} was found in application shells" if application_shells.include?(tailwind_ui_component)
        puts "#{tailwind_ui_component} was found in forms" if forms.include?(tailwind_ui_component)

    end
   
end
