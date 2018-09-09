#UI Portion
ui = fluidPage(
  shinyjs::useShinyjs(),
  shinyjs::inlineCSS(appCSS),
  titlePanel("CT Signup"),
  
  div(
    id = "form",
    
    textInput("First_Name", labelMandatory("First Name"),""),
    textInput("Last_Name", labelMandatory("Last Name")),
    textInput("Address1", "Address"),
    textInput("Address2", "Apt/Floor/Bldg"),
    textInput("City", "City"),
    textInput("Zip", "Zip"),
    textInput("Phone", "Phone"),
    textInput("Email", "Email"),
    
    actionButton("submit", "Submit", class = "btn-primary")
  ),
  
  shinyjs::hidden(
    div(
      id = "thankyou_msg",
      h3("Thanks, your response was submitted successfully!"),
      actionLink("submit_another", "Submit another response")
    )
  )
  
)