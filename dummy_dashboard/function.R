calculateSwitchToAutonomousVehicleProbabilities = function(income, year, intercept, betaRatio, betaIncome) {
  
  if (year < 2020){
    ratio = 10.0 #/high ratio to avoid the probability of switching to autonomous before 2020
  } else if (year < 2022){
    ratio = 6.0
  } else if (year < 2023){
    ratio = 5.9
  } else if (year < 2024){
    ratio = 5.8
  } else if (year < 2025){
    ratio = 5.7
  } else if (year < 2026){
    ratio = 5.6
  } else if (year < 2027){
    ratio = 5.4
  } else if (year < 2028){
    ratio = 5.2
  } else if (year < 2029){
    ratio = 5.0
  } else if (year < 2030){
    ratio = 4.9
  } else if (year < 2031){
    ratio = 4.8
  } else if (year < 2032){
    ratio = 4.7
  } else if (year < 2033){
    ratio = 4.6
  } else if (year < 2034){
    ratio = 4.5
  } else if (year < 2035){
    ratio = 4.3
  } else if (year < 2036){
    ratio = 4.1
  } else if (year < 2037){
    ratio = 3.9
  } else if (year < 2038){
    ratio = 3.8
  } else if (year < 2039){
    ratio = 3.7
  } else if (year < 2040){
    ratio = 3.5
  } else if (year < 2041){
    ratio = 3.3
  } else if (year < 2042){
    ratio = 3.2
  } else if (year < 2043){
    ratio = 3.1
  } else if (year < 2044){
    ratio = 3.0
  } else if (year < 2045){
    ratio = 2.8
  } else if (year < 2046){
    ratio = 2.6
  } else if (year < 2047){
    ratio = 2.4
  } else if (year < 2048){
    ratio = 2.2
  } else if (year < 2049){
    ratio = 2.0
  } else {
    ratio = 1.8
  }
  
  utility = intercept + (betaRatio * ratio) + (betaIncome * income)
  return(1 - 1 / (1+exp(utility)))
}