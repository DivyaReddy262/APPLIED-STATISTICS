disease <- c("Diabetes", "Hypertension", "Asthma", "Cancer")
cases <- c(45, 67, 23, 12)
year <- c(2019, 2020, 2021, 2022)
incidence <- c(120, 135, 160, 180)

barplot(cases,
        names.arg = disease,   
        main = "number of cases for each disease",   
        xlab = "disease",   
        ylab = "cases")
pie(cases, 
    labels = disease,
    main = "proportion of each disease",
    col = c("red", "green", "blue","yellow"))

plot(year, incidence, type = "o",   
     main = "incidence over the years",   
     xlab = "year",   
     ylab = "incidence")