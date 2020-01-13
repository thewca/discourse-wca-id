import { withPluginApi } from "discourse/lib/plugin-api";

function initializeDiscourseWcaId(api) {
  // This assumes several things:
  //   - the SSO endpoint populates the custom.wca_id field
  //   - the "wca_id" user custom field is whitelisted in the API
  // There is no need to manually create the "wca_id" custom field, it would get
  // a name like "user_field_1" anyway.
  // Due to how the "after-name" hook works, this would be inserted after both
  // the name and the username. To fix this, I hide the one after the username
  // in the CSS.
  api.decorateWidget('poster-name:after-name', dec => {
    if (dec.attrs.userCustomFields !== undefined) {
      let userWcaId = dec.attrs.userCustomFields.wca_id;
      if (userWcaId) {
        let profileUrl = `https://www.worldcubeassociation.org/persons/${userWcaId}`;
        let link = dec.h("a", { attributes: { href: profileUrl, target: "_blank" } }, `(${userWcaId})`);
        return dec.h("span.wca_id.second", {}, link);
      }
    }
  });
}

export default {
  name: "discourse-wca-id",

  initialize() {
    withPluginApi("0.8.31", initializeDiscourseWcaId);
  }
};
