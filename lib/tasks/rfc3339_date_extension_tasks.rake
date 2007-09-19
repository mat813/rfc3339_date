namespace :radiant do
  namespace :extensions do
    namespace :rfc3339_date do
      
      desc "Runs the migration of the Rfc3339 Date extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          Rfc3339DateExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          Rfc3339DateExtension.migrator.migrate
        end
      end
    
    end
  end
end