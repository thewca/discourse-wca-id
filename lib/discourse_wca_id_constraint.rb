class DiscourseWcaIdConstraint
  def matches?(request)
    SiteSetting.discourse_wca_id_enabled
  end
end
