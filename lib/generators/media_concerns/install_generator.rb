module MediaConcerns
  class InstallGenerator < Rails::Generators::Base

    source_root File.expand_path('../templates', __FILE__)

    def inject_file_set_behavior
      file_path = 'app/models/file_set.rb'
      if File.exists? file_path
        inject_into_file file_path, after: /include ::CurationConcerns::FileSetBehavior/ do
          "\n  # Include file set behavior from MediaConcerns" \
          "\n  # (inserted by media_concerns:install generator)" \
          "\n  include ::MediaConcerns::FileSetBehavior"
        end
      else
        copy_file 'models/file_set.rb', file_path
      end
    end
  end
end