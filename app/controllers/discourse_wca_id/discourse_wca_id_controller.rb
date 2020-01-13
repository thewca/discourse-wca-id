module DiscourseWcaId
  class DiscourseWcaIdController < ::ApplicationController
    requires_plugin DiscourseWcaId

    before_action :ensure_logged_in

    def index
    end
  end
end
