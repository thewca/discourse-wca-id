export default function() {
  this.route("discourse-wca-id", function() {
    this.route("actions", function() {
      this.route("show", { path: "/:id" });
    });
  });
};
