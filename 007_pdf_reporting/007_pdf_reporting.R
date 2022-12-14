# R TIPS ----
# TIP 007: Automate PDF Reporting ----
#
# 👉 For Weekly R-Tips, Sign Up Here: https://learn.business-science.io/r-tips-newsletter

# 1.0 LIBRARIES ----

library(rmarkdown)

# 2.0 AUTOMATE PDF REPORTING ----
# - Make sure you have tinytex installed with: tinytex::install_tinytex()

# Technology Portfolio ----
portfolio_name <- "Technology Portfolio"
symbols        <- c("AAPL", "GOOG", "NFLX", "NVDA")
output_file    <- "technology_portfolio.pdf"

# Financial Portfolio ----
portfolio_name <- "Financial Portfolio"
symbols        <- c("V", "MA", "PYPL")
output_file    <- "financial_portfolio.pdf"

# Automation Code ----
rmarkdown::render(
    input         = "007_pdf_reporting/template/stock_report_template.Rmd",
    output_format = "pdf_document",
    output_file   = output_file,
    output_dir    = "007_pdf_reporting/output/",
    params        = list(
        portfolio_name = portfolio_name,
        symbols        = symbols,
        start          = "2010-01-01",
        end            = "2019-12-31",
        show_code      = FALSE
    )
)

# LEARNING MORE ----

# FREE MASTERCLASS
# - 10 SECRETS TO BECOMING A DATA SCIENTIST
#   https://learn.business-science.io/free-rtrack-masterclass


