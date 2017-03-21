library("MCDA")
epsilon <-0.01
performanceTable <- rbind(
  c(5.5, 4, 64, 12.3, 4950),
  c(5, 4, 64, 20, 4670),
  c(5.4, 3, 64, 8, 3210),
  c(5, 3, 32, 8, 3915)

)

rownames(performanceTable) <- c(
  "Samsung S7 Edge",
  "Samsung S7",
  "Samsung S6 Edge",
  "Samsung S6"
 )

colnames(performanceTable) <- c(
  "Wyświetlacz",
  "Pamieć RAM",
  "Pamieć wbudowana",
  "Apart",
  "Cena"
  )

# ranks of the alternatives

alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10)

names(alternativesRanks) <- row.names(performanceTable)

# criteria to minimize or maximize

criteriaMinMax <- c("max","max","max","max","min")

names(criteriaMinMax) <- colnames(performanceTable)

x<-additiveValueFunctionElicitation(performanceTable,
                                    criteriaMinMax, epsilon,
                                    alternativesRanks = alternativesRanks)

