module DiscourseWcaId
  class Engine < ::Rails::Engine
    engine_name "DiscourseWcaId".freeze
    isolate_namespace DiscourseWcaId

    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::DiscourseWcaId::Engine, at: "/discourse-wca-id"
      end
    end
  end
end
