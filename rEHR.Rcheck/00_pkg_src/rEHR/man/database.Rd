% Generated by roxygen2 (4.0.2): do not edit by hand
\name{database}
\alias{database}
\title{Wrapper for dbConnect}
\usage{
database(dbname)
}
\arguments{
\item{dbname}{character name path to database file}
}
\value{
SQLiteConnection object
}
\description{
Connects to a SQLite database or creates one if it does not already exist
}
\details{
If the '.sqlite' file extension is ommited from the dbname argument it is automatically added.
}
\examples{
\dontrun{
db <- database("mydb")
}
}

