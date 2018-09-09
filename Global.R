#Global
library(googlesheets)
googlesheets::gs_auth(token ="googlesheets_token.rds")
sheet <- gs_title("Test Responses")

fieldsMandatory <- c("First_Name", "Last_Name")

labelMandatory <- function(label) {
  tagList(
    label,
    span("*", class = "mandatory_star")
  )
}

appCSS <- ".mandatory_star { color: red; }"

fieldsAll <- c("First_Name", "Last_Name", "Address1", "Address2", "City","Zip","Phone","Email")
responsesDir <- file.path("responses")
epochTime <- function() {
  as.integer(Sys.time())
}

humanTime <- function() format(Sys.time(), "%Y%m%d-%H%M%OS")