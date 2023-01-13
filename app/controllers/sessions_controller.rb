class SessionsController < Devise::SessionsController
  prepend_before_action(only: [:create, :destroy]) { request.env["devise.skip_timeout"] = true }
end