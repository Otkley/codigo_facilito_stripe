class ApplicationController < ActionController::Base
  include Pundit
  # incluimos pundit en los controladores para poder crear sus reglas
end
