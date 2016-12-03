#' extract doi from a string
#'
#'@details
#' Display as eg.: "doi:10.1000/182"
#'  A DOI takes the form 'prefix/suffix' where prefix is of the form 'registry.registrant'
#'  and the suffix
#'  is chosen by the registrant and identifies the specific object.
#'
#' @param x chr string that contains doi
#' @param regex regex pattern used to extract doi.
#' @export
doi_extract <- function(x, regex = "\\d+\\.\\d+\\/[^\\s]+") {
    # regex explanation:
    #   1+ digits, literal ., 1+ digits, literal /, 1+ anything until whitespace
    stringr::str_extract(x, regex)
}

#' add url stub to doi string
#' 'https://doi.org/10.1073/pnas.1106834108'
#' @param x doi
#' @export
doi_add_url <- function(x) {
    paste("https://doi.org", x, sep = '/')
}

#' encode doi as if url
#'
#' this makes it more convenient to use in file names
#'
#' @param x doi
#' @export
doi_encode <- function(x) {
    URLencode(x, reserved = T)
}


#' @rdname doi_encode
#' @export
doi_decode <- function(x) {
    URLdecode(x)
}
