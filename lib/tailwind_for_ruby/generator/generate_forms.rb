require "CGI"

module Generate_Forms
    def generate_forms(tailwind_ui_component,model_name,*model_attributes)
        # initiates the component that will eventually be returned to the "UI" class
        @final_form = []




        def generate_input_with_label(model_name,*model_attributes)
            input_with_label = []
            model_attributes.map { |model_attribute|  @final_form.push("<h1 class='bg-gray-500'>  #{model_attribute}  </h1>") }
        end

        generate_input_with_label(model_name,*model_attributes) if tailwind_ui_component == "input_with_label"




        # component returned to the "UI" class
        return @final_form
    end
end
