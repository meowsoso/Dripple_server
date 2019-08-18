class ApplicationController < ActionController::Base
    include Knock::Authenticable
    skip_before_action :verify_authenticity_token, raise: false
end
