require "thor/group"

module TailwindForRuby
    module Generators
        class View < Thor::Group
            include Thor::Actions
            argument :command_name, :type => :string
            argument :model_name, :type => :string
            argument :model_attributes, :type => :hash

              def self.source_root
                File.dirname(__FILE__) + "/view"
              end

              def create_directory
                empty_directory("generated_Views")
              end
              
              def generate_view
                template("view.txt", "generated_Views/#{model_name}s.html.erb")
              end  

        end
    end
end    