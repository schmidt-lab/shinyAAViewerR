#' examples UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_examples_ui <- function(id) {
  ns <- NS(id)
  tagList(
    div(
      tags$script(
        HTML("$(document).on('click', '.example_link', function () {
                        Shiny.onInputChange('example_link_id', this.id);
                    });")
      )
    ),
    menuItem("Available Maps",
      icon = icon("atom"),
      fluidRow(
        style = "padding: 15px 0 0 0; margin: 0;",
        icon = icon("atom"),
        actionLink("aav_target", "AAV Capsid",
          class = "example_link btn-link",
        ),
        actionLink("pur_var", "Packaging Variance",
                   class = "example_link btn-link",
        ),
        actionLink("pd_var", "Pulldown Variance",
                   class = "example_link btn-link",
        ),
        actionLink("bp_var", "Binding Variance",
                   class = "example_link btn-link",
        ),
        actionLink("intp_var", "Uptake Variance",
                   class = "example_link btn-link",
        ),
        actionLink("FLAG_pur", "FLAG packaging",
                   class = "example_link btn-link",
        ),
        actionLink("FLAG_pd", "FLAG pulldown",
                   class = "example_link btn-link",
        ),
        actionLink("FLAG_bp", "FLAG Binding",
                   class = "example_link btn-link",
        ),
        actionLink("FLAG_intp", "FLAG Uptake",
                   class = "example_link btn-link",
        ),
        actionLink("GFPnb_pur", "GFP Packaging",
                   class = "example_link btn-link",
        ),
        actionLink("GFPnb_pd", "GFP Pulldown",
                   class = "example_link btn-link",
        ),
        actionLink("GFPnb_bp", "GFP Binding",
                   class = "example_link btn-link",
        ),
        actionLink("GFPnb_intp", "GFP Uptake",
                   class = "example_link btn-link",
        ),
        actionLink("SNAP_pur", "SNAP Packaging",
                   class = "example_link btn-link",
        ),
        actionLink("SNAP_pd", "SNAP Pulldown",
                   class = "example_link btn-link",
        ),
        actionLink("SNAP_bp", "SNAP Binding",
                   class = "example_link btn-link",
        ),
        actionLink("SNAP_intp", "SNAP Uptake",
                   class = "example_link btn-link",
        ),
        actionLink("SpyCatcher_pur", "SpyCatcher Packaging",
                   class = "example_link btn-link",
        ),
        actionLink("SpyCatcher_bp", "SpyCatcher Binding",
                   class = "example_link btn-link",
        ),
        actionLink("SpyCatcher_intp", "SpyCatcher Uptake",
                   class = "example_link btn-link",
        ),
        actionLink("DCV_pur", "DCV Packaging",
                   class = "example_link btn-link",
        ),
        actionLink("DCV_pd", "DCV Pulldown",
                   class = "example_link btn-link",
        ),
        actionLink("DCV_bp", "DCV Binding",
                   class = "example_link btn-link",
        ),
        actionLink("DCV_intp", "DCV Uptake",
                   class = "example_link btn-link",
        ),
        actionLink("WDV_pur", "WDV packaging",
                   class = "example_link btn-link",
        ),
        actionLink("WDV_pd", "WDV pulldown",
                   class = "example_link btn-link",
        ),
        actionLink("WDV_bp", "WDV Binding",
                   class = "example_link btn-link",
        ),
        actionLink("WDV_intp", "WDV Uptake",
                   class = "example_link btn-link",
        ),
        actionLink("mMobA_pur", "mMobA Packaging",
                   class = "example_link btn-link",
        ),
        actionLink("mMobA_pd", "mMobA Pulldown",
                   class = "example_link btn-link",
        ),
        actionLink("mMobA_bp", "mMobA Binding",
                   class = "example_link btn-link",
        ),
        actionLink("mMobA_intp", "mMobA Uptake",
                   class = "example_link btn-link",
        )
      )
    )
  )
}
    
#' examples Server Function
#'
#' @noRd 
mod_examples_server <- function(input, output, session, r) {
  ns <- session$ns

  observeEvent(r$examples$example_link_id, {
    r$rendering <- TRUE
    r$fileInput <- readFile(app_sys(sprintf("app/www/%s.ngl", r$examples$example_link_id)))
    r$fileInput$name <- r$examples$example_link_id 
    r$stage$fileColor <- r$fileInput$stage$backgroundColor #Needed to change theme
  })
}
## To be copied in the UI
# 
    
## To be copied in the server
# 
 
