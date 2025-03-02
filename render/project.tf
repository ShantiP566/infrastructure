resource "render_project" "p466" {
  name = "P466 - Spring 2025"
  environments = {
    "development" : {
      name : "development",
      protected_status : "unprotected"
    },
    "staging" : {
      name : "staging",
      protected_status : "protected"
    },
  }
}
