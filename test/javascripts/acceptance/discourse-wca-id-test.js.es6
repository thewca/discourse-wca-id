import { acceptance } from "helpers/qunit-helpers";

acceptance("DiscourseWcaId", { loggedIn: true });

test("DiscourseWcaId works", async assert => {
  await visit("/admin/plugins/discourse-wca-id");

  assert.ok(false, "it shows the DiscourseWcaId button");
});
