require "CGI"

module Generate_Forms
    def generate_forms(tailwind_ui_component,model_name,*model_attributes)
        # initiates the component that will eventually be returned to the "UI" class
        @final_form = []




        def generate_input_with_label(model_name,*model_attributes)
            input_with_label = []
            model_attributes.map { |model_attribute|  @final_form.push("
                <div>
                <label for='#{model_attribute}' class='block text-sm font-medium text-gray-700'>#{model_attribute}</label>
                <div class='mt-1'>
                    <input type='text' name='#{model_attribute}' id='#{model_attribute}' class='shadow-sm focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md'>
                </div>
                </div>") }
        end

        generate_input_with_label(model_name,*model_attributes) if tailwind_ui_component == "input_with_label"




        # component returned to the "UI" class
        return @final_form
    end
end
