require "editor_base/version"

# Sneaky require for Rails engine environment
if defined? ::Rails::Engine
  require "editor_base/rails"
elsif defined? ::Sprockets
  require "editor_base/sprockets"
end

module EditorBase
  # Your code goes here...
end
