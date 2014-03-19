\name{last_events}
\alias{last_events}
\title{Selects the earliest event grouped by patient}
\usage{
last_events(db = NULL, tab, group_column = "patid",
  other_columns = "eventdate", where = NULL, date_column = "eventdate",
  sql_only = FALSE)
}
\arguments{
  \item{db}{A database connection object}

  \item{tab}{the database table to extract from}

  \item{group_column}{column to group by.  Default is
  patid}

  \item{other_columns}{The other columns to be extracted}

  \item{where}{sting representation of the selection
  criteria}

  \item{date_column}{the column to sort by.  default is
  eventdate}

  \item{sql_only}{logical should the function just return a
  string of the SQL query?}
}
\value{
a dataframe or a string representing an sql query
}
\description{
This function runs a select_events() query and then groups
by patient id and picks only the earliest event for each
patient
}
\examples{
\dontrun{
b2 <- last_events(db, tab = "Clinical", other_columns = c("eventdate", "medcode"), where = "medcode \%in\% .(a$medcode)")
}
}
