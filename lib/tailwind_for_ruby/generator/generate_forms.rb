require 'CGI'

module Generate_Forms
  def generate_forms(tailwind_ui_component, model_name, *model_attributes)
    # initiates the component that will eventually be returned to the "UI" class
    @final_form = []

    # 1 ApplicationUI/Forms/InputGroups/input_with_label
    def generate_input_with_label(_model_name, *model_attributes)
      input_with_label = []
      model_attributes.map do |model_attribute|
        attribute_name = model_attribute.split(':')[0]
        attribute = "
                <div>
                    <label for='#{attribute_name}' class='block text-sm font-medium text-gray-700'>#{attribute_name}</label>
                    <div class='mt-1'>
                        <input type='text' name='#{attribute_name}' id='#{attribute_name}'
                        class='shadow-sm focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md'>
                    </div>
                </div>"
        @final_form.push(attribute)
      end
    end

    # 1 ApplicationUI/Forms/InputGroups/input_with_label
    generate_input_with_label(model_name, *model_attributes) if tailwind_ui_component == 'input_with_label'

    # component returned to the "UI" class
    @final_form.to_s.gsub('[', '').gsub(']', '').gsub('\\n', '').gsub('"', '').gsub("\,", '')
  end
end
