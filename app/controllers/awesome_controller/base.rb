require "action_view"

module AwesomeController
  class Base < AwesomeController::SuperBase
    include AwesomeController::Callbacks
    include AwesomeController::Params
    include AwesomeController::ImplicitRendering
    include ActionView::Layouts
    include ActionView::ViewPaths
    include AwesomeController::UrlFor
    include AwesomeController::Redirecting
    include AwesomeController::Flash
    include AwesomeController::Rendering

    ActiveSupport.run_load_hooks(:awesome_controller, self)
  end
end
