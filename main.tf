## Place all your terraform resources here
#  Locals at the top (if you are using them)
#  Data blocks next to resources that are referencing them
#  Reduce hard coded inputs where possible. They are used below for simplicity to show structure

resource "random_pet" "ws" {
  keepers = {
    # A changing value to ensure the string is always different
    always_change = "${timestamp()}"
  }

}


resource "tfe_workspace" "test" {
  name         = "workspace-${random_pet.ws.id}"
  organization = "hvd"
}
