require_dependency "discourse_wca_id_constraint"

DiscourseWcaId::Engine.routes.draw do
  get "/" => "discourse_wca_id#index", constraints: DiscourseWcaIdConstraint.new
  get "/actions" => "actions#index", constraints: DiscourseWcaIdConstraint.new
  get "/actions/:id" => "actions#show", constraints: DiscourseWcaIdConstraint.new
end
