#Name: Advait Brijesh Marathe

#importing data from the .csv file
weatherData = read.csv(file = "4. Hourly weather data.csv", head=TRUE)
View(weatherData)
 
#installing and loading necessary packages 
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
install.packages("magrittr")
library(magrittr)


#Analysis 1: Frequency of the wind speed
ggplot(weatherData, aes(x=wind_speed)) + #Data Visualization
  geom_bar(col="black", fill="blue") +    #Data Exploration
    labs(title = "barchart of the frquency of the data", y = "Frequency", x = "Speed of Wind")
weatherData %>%
  group_by(wind_speed)%>% count() # shows the exact frequency values of the wind speed 

#Analysis 2: Frequency of the Temperature
ggplot(weatherData, aes(x=temp))+  #Data Visualization
  geom_freqpoly()+   #Data Exploration
    labs(title="Temperature of the airport", x="Temperature", y= "Frequency")
weatherData %>%
  group_by(temp)%>% count()   #Data Manipulation




#Analysis 3: Humidity percentage at different times (hours)
ggplot(weatherData, aes(x=hour, y=humid)) +  #Data Visualization
  geom_smooth(col="red", fill="pink") +    #Data Exploration
    labs(title="Humidity Percentage at different times of day", x="Time of day (hour)", y="Humidity Percentage")
weatherData%>%
  select(hour,humid)%>%tibble()   #Data Manipulation




#Analysis 4: Air pressure at different times of the day at both airports
ggplot(weatherData, aes(x=hour, y=pressure)) +   #Data Visualization
  geom_smooth(col="blue", fill="light blue") +   #Data Exploration
    labs (title="Air Pressure at different times of the day", x="Time of day(hour)",y="Air Pressure (mb)")
weatherData%>%
  select(hour, pressure)%>%tibble()   #Data Manipulation


#Analysis 5: Frequency of the Dew Point 
ggplot(weatherData, aes(x=dewp)) +  #Data Visualization
  geom_histogram(col="black", fill="dark green") +    #Data Exploration
    labs (title="Polygraph of the Dew Point", x="Dew Point", y = "Frequency")
weatherData%>%
  select(dewp)%>%tibble()   #Data Manipulation



#Analysis 6: Direction of the Wind with respect to its wind speed
ggplot(weatherData, aes(x=wind_dir, y=wind_speed)) +  #Data Visualization
  geom_area (col="blue", fill="light blue") +   #Data Exploration
    labs (title="Graph of the direction of the wind", x="Wind Direction", y="Wind Speed")

#EXTRA FEATURE 
weatherData%>%
  select(wind_dir, pressure, wind_speed)%>%tibble()   #Data Manipulation

#Analysis 7: Visibility  of Airplanes departing from both the airports
ggplot(weatherData, aes(x=origin, y=visib))+  #Data Visualization
  geom_col(col="navy blue") +   #Data Exploration
    labs (title="Graph of visibility ", x="origin Airport", y="Visibility")    
weatherData%>%
  group_by(visib)%>%tibble()    #Data Manipulation

#Analysis 8: Temperatures of flights from different Origins 
ggplot(weatherData, aes(x=origin, y=temp))+  #Data Visualization
  geom_col(col="dark green")  +    #Data Exploration
    labs (title="Temperature of the deapartures from different Airports", x="origin Airport ", y="Temperature")
weatherData%>%
  group_by(temp)%>%count()   #Data Manipulation

#Analysis 9: Precipitation with respect to the humidity
ggplot(weatherData, aes(x=humid, y=precip)) +  #Data Visualization
  geom_smooth(col="darkgoldenrod", fill="azure4") +   #Data Exploration
    labs(title="Precipitation with respect to the humidity", x="Humidity", y="Precipitation")
weatherData%>%
  select(humid,precip)%>%tibble()   #Data Manipulation

#Analysis 10: Graph of the Amount of dew with respect to the temperature
ggplot (weatherData, aes(x=dewp, y=temp))+   #Data Visualization
  geom_smooth(col="dark green") +   #Data Exploration
    labs(title="The Amount of dew with respect to the temperature", x="Dew Point", y="Temperature")  
weatherData%>%
  select(dewp,temp)%>%tibble()   #Data Manipulation

#Analysis 11: Bar chart of the Wind speed with respect to the Air Pressure
ggplot(weatherData, aes(x=wind_speed, y=pressure))+   #Data Visualization
  geom_col(col="brown", fill="blue") +   #Data Exploration
    labs (title="Wind Speed with respect to the Air Pressure", x="Wind Speed", y="Air Pressure")
weatherData%>%
  select(pressure)%>%tibble()   #Data Manipulation  

#Analysis 12: Graph of air Pressure with respect to the Visibility
ggplot(weatherData, aes(x=visib, y=pressure))+   #Data Visualization
  geom_smooth(col="dark red", fill="pink")+   #Data Exploration
    labs(title="Air Pressure with respect to the Visibility", x="Visibility", y="Air Pressure")  
weatherData%>%
  select(visib)%>%tibble()   #Data Manipulation

#Analysis 13: Histogram of the Frequency of the gust of wind
ggplot(weatherData, aes(x=wind_gust))+   #Data Visualization
  geom_histogram(col="black", fill="darkorchid4") +   #Data Exploration
    labs(title="Frequency of the gust of wind", x="Wind Gust", y="Frequency")  
weatherData%>%
  group_by(wind_gust)%>%count()   #Data Manipulation

#Anlaysis 14: Graph of the Density of Air Pressure 
ggplot(weatherData, aes(x=pressure))+   #Data Visualization
  geom_density(col="navy blue")+   #Data Exploration
    labs(title="Density of Air Pressure", x="Air Pressure", y="Density")      
weatherData%>%
  group_by(pressure)%>%count()  #Data Manipulation
  
  
                    
                    



