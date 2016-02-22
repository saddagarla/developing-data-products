if (!exists(".inflation")) {
  .inflation <- getSymbols('CPIAUCNS', src = 'FRED', 
     auto.assign = FALSE)
}  

slist <- c("CPIAUCNS", "UNRATE",  "GDPC96", "DGS10", "GFDEGDQ188S", 
           "MEHOINUSA672N", "PAYEMS", "DCOILWTICO","SP500","MORTG");

snames <- c("Inflation", "Unemployment Rate", "GDP", "10 Year Rate", "Federal Debt",
            "Household Income", "Payrolls", "WTI Crude", "S&P 500", "30Y Mortgage Rate");


convert <- function(data1, instrument)
{
  ret <- data.frame(time(data1), data1)
  colnames(ret)[1] <- "Date"
  colnames(ret)[2] <- instrument
  ret
}
