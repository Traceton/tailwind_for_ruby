require "CGI"

module Generate_Forms
    def generate_forms(tailwind_ui_component,model_name,*model_attributes)
        # puts "tailwind ui component ---> #{tailwind_ui_component}"
        # puts "model name ---> #{model_name}"
        # puts "model attributes ---> #{model_attributes}"
        # final_form = "tailwind ui component ---> #{tailwind_ui_component} and model name ---> #{model_name} and model attributes ---> #{model_attributes}"

        model_attributes.map { |model_attribute| puts CGI.unescape('<h1 class="bg-gray-500"> <%= model_attributes %> </h1>') }

        final_form = CGI.unescape('<h1 class="bg-gray-500"> #{model_attributes} </h1>')
    end
end
