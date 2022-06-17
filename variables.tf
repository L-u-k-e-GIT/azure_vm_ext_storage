variable "MD_LOCATION" { 
 description = "Region to deploy"
 type = string
 default = ""
}

variable "MD_PROJECT_NAME" { 
 description = "Project Name"
 type = string
 default = ""
}

variable "MD_DIAG_STORAGE_ACCOUNT" { 
 description = "Performance Diagnostic"
 type = string
 default = ""
 
}


variable "MD_RG_NAME" { 
 description = "Resource Group Name"
 type = string
 default = ""
}


variable "MD_SUBNET_ID" { 
 description = "Subnet ID"
 type = string
 default = ""
}


variable "MD_STDIAG_PREFIX" { 
 description = "Prefix for Performance diagnostics"
 type = string
 default = ""
}



variable "MD_SUBSCRIPTION_PREFIX" { 
 description = "Prefix for subscription"
 type = string
 default = ""
}



 