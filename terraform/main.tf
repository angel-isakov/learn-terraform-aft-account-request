module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sandbox1-aft@clouddevsandbox.com"
    AccountName               = "sandbox1-aft"
    ManagedOrganizationalUnit = "Development_1"
    SSOUserEmail              = "sandbox1-aft@clouddevsandbox.com"
    SSOUserFirstName          = "Sandbox1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Account created by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Angel Isakov"
    change_reason       = "Create new account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox1"
}
