
-- athleteEventsAggFinalNaN
CREATE TABLE "Olympians_Stats" (
    "Year" int   NOT NULL,
    "NOC" varchar(3)   NOT NULL,
    "Total Athletes" int   NOT NULL,
    "Medal" int   NOT NULL,
    "Count" int   NOT NULL,
    "Average" decimal   NOT NULL,
    "Age (M)" decimal   NOT NULL,
    "Average Height (M)" decimal   NOT NULL,
    "Average Weight (M)" decimal   NOT NULL,
    "Average Age (F)" decimal   NOT NULL,
    "Average Height (F)" decimal   NOT NULL,
    "Average Weight (F)" decimal   NOT NULL
);

-- athleteEventnocRegionsKEY
CREATE TABLE "Athlete_key" (
    "NOC" int   NOT NULL,
    "region" varchar(50)   NOT NULL,
    "notes" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Athlete_key" PRIMARY KEY (
        "NOC"
     )
);

-- athleteEvents
CREATE TABLE "Olympic_stats" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    "Sex" varchar(1)   NOT NULL,
    "Age" int   NOT NULL,
    "Height" int   NOT NULL,
    "Weight" int   NOT NULL,
    "Team" varchar(200)   NOT NULL,
    "NOC" varchar(3)   NOT NULL,
    "Games" varchar(15)   NOT NULL,
    "Year" int   NOT NULL,
    "Season" varchar(10)   NOT NULL,
    "City" varchar(50)   NOT NULL,
    "Sport" varchar(50)   NOT NULL,
    "Event" varchar(50)   NOT NULL,
    "Medal" varchar(10)   NOT NULL
);

-- Olympic_medals_cleaned
CREATE TABLE "Overall_olympic" (
    "Nation" varchar(50)   NOT NULL,
    "Code" varchar(3)   NOT NULL,
    "First_Appear" int   NOT NULL,
    "Apps" int   NOT NULL,
    "Total Medals" int   NOT NULL,
    "Total Gold" int   NOT NULL,
    "Total Silver" int   NOT NULL,
    "Bronze" int   NOT NULL,
    "Summer_Apps" int   NOT NULL,
    "Summer_Total_Medals" int   NOT NULL,
    "Summer_Gold" int   NOT NULL,
    "Summer_Silver" int   NOT NULL,
    "Summer_Bronze" int   NOT NULL,
    "Winter_Apps" int   NOT NULL,
    "Winter_Total_Medals" int   NOT NULL,
    "Winter_Gold" int   NOT NULL,
    "Winter_Silver" int   NOT NULL,
    "Winter_Bronze" int   NOT NULL,
    "MostSuccessfulSport" varchar(50)   NOT NULL,
    "Total Medals in Most Successful" int   NOT NULL,
    "Golds in Most Successful" int   NOT NULL,
    "Silvers in Most Successful" int   NOT NULL,
    "Bronzes in Most Successful" int   NOT NULL
);

-- series1_cleaned
CREATE TABLE "Armed_forces" (
    "Country_Name" varchar(50)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T1" int   NOT NULL,
    "values_T1" decimal   NOT NULL
);

-- series2_cleaned
CREATE TABLE "Compulsory_education" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T2" int   NOT NULL,
    "values_T2" decimal   NOT NULL
);

-- series3_cleaned
CREATE TABLE "Corruption" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T3" int   NOT NULL,
    "values_T3" decimal   NOT NULL
);

-- series4_cleaned
CREATE TABLE "Health_expenditure" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T4" int   NOT NULL,
    "values_T4" decimal   NOT NULL
);

-- series5_cleaned
CREATE TABLE "Health_expenditure_usd" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T5" int   NOT NULL,
    "values_T5" decimal   NOT NULL
);

-- series6_cleaned
CREATE TABLE "Employment_ratio" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T6" int   NOT NULL,
    "values_T6" decimal   NOT NULL
);

-- series7_cleaned 
CREATE TABLE "GDP_usd" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T7" int   NOT NULL,
    "values_T7" decimal   NOT NULL
);

-- series8_cleaned
CREATE TABLE "GDP_growth" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T8" int   NOT NULL,
    "values_T8" decimal   NOT NULL
);

-- series9_cleaned 
CREATE TABLE "GDP_per_capita" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T9" int   NOT NULL,
    "values_T9" decimal   NOT NULL
);

 -- series10_cleaned 
CREATE TABLE "GDP_p_cap_growth" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T10" int   NOT NULL,
    "values_T10" decimal   NOT NULL
);

-- series11_cleaned
CREATE TABLE "Gov_effectivness" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T11" int   NOT NULL,
    "values_T11" decimal   NOT NULL
);

-- series12_cleaned 
CREATE TABLE "Education_expenditure" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T12" int   NOT NULL,
    "values_T12" decimal   NOT NULL
);

-- series13_cleaned 
CREATE TABLE "Tourism_expenditure" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T13" int   NOT NULL,
    "values_T13" decimal   NOT NULL
);

-- series14_cleaned 
CREATE TABLE "Military_expenditure" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T14" int   NOT NULL,
    "values_T14" decimal   NOT NULL
);

-- series15_cleaned 
CREATE TABLE "Pollution_pop_exposed" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T15" int   NOT NULL,
    "values_T15" decimal   NOT NULL
);

-- series16_cleaned
CREATE TABLE "Stability_absence" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T16" int   NOT NULL,
    "values_T16" decimal   NOT NULL
);

-- series17_cleaned 
CREATE TABLE "Pop_growth" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T17" int   NOT NULL,
    "values_T17" decimal   NOT NULL
);

-- series18_cleaned 
CREATE TABLE "Pop_total" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T18" int   NOT NULL,
    "values_T18" decimal   NOT NULL
);

-- series19_cleaned 
CREATE TABLE "Rule_of_law" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T19" int   NOT NULL,
    "values_T19" decimal   NOT NULL
);

-- series20_cleaned 
CREATE TABLE "legal_rights" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T20" int   NOT NULL,
    "values_T20" decimal   NOT NULL
);

-- series21_cleaned 
CREATE TABLE "Unemployment" (
    "Country_Name" varchar(30)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year_T21" int   NOT NULL,
    "values_T21" decimal   NOT NULL
);

-- Disaster_data
CREATE TABLE "Disaster_data" (
    "DisNo." int   NOT NULL,
    "Historic" varchar(3)   NOT NULL,
    "Classification_key" varchar(15)   NOT NULL,
    "Disaster_Group" varchar(13)   NOT NULL,
    "Disaster_Subgroup" varchar(150)   NOT NULL,
    "Disaster_Type" varchar(150)   NOT NULL,
    "Disaster_Subtype" varchar(150)   NOT NULL,
    "External_IDs" varchar(50)   NOT NULL,
    "Event_Name" varchar(150)   NOT NULL,
    "ISO" varchar(3)   NOT NULL,
    "Country" varchar(30)   NOT NULL,
    "Subregion" varchar(150)   NOT NULL,
    "Region" varchar(150)   NOT NULL,
    "Location" varchar(150)   NOT NULL,
    "Origin" varchar(150)   NOT NULL,
    "Associated_Types" varchar(150)   NOT NULL,
    "OFDA_BHA_Response" varchar(3)   NOT NULL,
    "Appeal" varchar(3)   NOT NULL,
    "Declaration" varchar(3)   NOT NULL,
    "AID_Contribution_USd" int   NOT NULL,
    "Magnitude" int   NOT NULL,
    "Magnitude_Scale" varchar(30)   NOT NULL,
    "Latitude" decimal   NOT NULL,
    "Longitude" decimal   NOT NULL,
    "River_Basin" int   NOT NULL,
    "Start_Year" int   NOT NULL,
    "Start_Month" int   NOT NULL,
    "Start_Day" int   NOT NULL,
    "End_Year" int   NOT NULL,
    "End_Month" int   NOT NULL,
    "End_Day" int   NOT NULL,
    "Total_Deaths" int   NOT NULL,
    "No_Injured" int   NOT NULL,
    "No_Affected" int   NOT NULL,
    "No_Homeless" int   NOT NULL,
    "Total_Affected" int   NOT NULL,
    "Reconstruction_Costs_USd" int   NOT NULL,
    "Reconstruction_Costs_Adjusted_USd" int   NOT NULL,
    "Insured_Damage_USd" int   NOT NULL,
    "Insured_Damage_Adjusted_USd" int   NOT NULL,
    "Total_Damage_USd" int   NOT NULL,
    "Total_Damage_Adjusted_USd" int   NOT NULL,
    "CPI" decimal   NOT NULL,
    "Admin_Units" varchar(150)   NOT NULL,
    "Entry_Date" varchar(8)   NOT NULL,
    "Last_Update" varchar(8)   NOT NULL
);

-- Government_stability_cleaned
CREATE TABLE "Gov_stability" (
    "Country_Name" varchar(50)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year" varchar(13)   NOT NULL,
    "gov_stability_values" decimal   NOT NULL
);

-- Overall_stability_cleaned
CREATE TABLE "Overall_stability" (
    "Country_Name" varchar(50)   NOT NULL,
    "Country_Code" varchar(3)   NOT NULL,
    "Series_Name" varchar(200)   NOT NULL,
    "year" varchar(13)   NOT NULL,
    "g_Values" decimal   NOT NULL
);

-- Air_pollulants_cleaned
CREATE TABLE "Air_polutants" (
    "REF_AREA" varchar(3)   NOT NULL,
    "Reference_area" varchar(50)   NOT NULL,
    "POLLUTANT" varchar(10)   NOT NULL,
    "Pollutant" varchar(30)   NOT NULL,
    "Measure" varchar(40)   NOT NULL,
    "Unit_of_measure" varchar(6)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL,
    "OBS_VALUE" decimal   NOT NULL,
    "OBS_STATUS" varchar(1)   NOT NULL,
    "Observation_status" varchar(25)   NOT NULL,
    "OBS_STATUS_2" varchar(25)   NOT NULL,
    "Observation_status_2" varchar(150)   NOT NULL
);

-- Avoidable_mortality
CREATE TABLE "Avoidable_mortality" (
    "Reference_area" varchar(50)   NOT NULL,
    "REF_AREA" varchar(3)   NOT NULL,
    "Measure" varchar(40)   NOT NULL,
    "Unit_of_measure" varchar(50)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL,
    "Avoidable_mortality_values" decimal   NOT NULL
);

-- Employment_retirement_labor_cleaned
CREATE TABLE "Retirement_data" (
    "REF_AREA" varchar(3)   NOT NULL,
    "Reference_area" varchar(50)   NOT NULL,
    "Measure" varchar(150)   NOT NULL,
    "Unit_of_measure" varchar(150)   NOT NULL,
    "Sex" varchar(15)   NOT NULL,
    "Age" varchar(25)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL
);

-- Gender_wage_gap
CREATE TABLE "Wage_gap" (
    "Reference_area" varchar(50)   NOT NULL,
    "REF_AREA" varchar(3)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL,
    "Median_percent_of_men_wages_more_than_women" decimal   NOT NULL
);

-- Mortality_data
CREATE TABLE "Mortality_data" (
    "Reference_area" varchar(50)   NOT NULL,
    "REF_AREA" varchar(3)   NOT NULL,
    "Cause_of_death" varchar(200)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL,
    "Death_values_per_100000" decimal   NOT NULL
);

-- Perceived_health_status_cleaned
CREATE TABLE "Perceived_health" (
    "REF_AREA" varchar(3)   NOT NULL,
    "Reference_area" varchar(50)   NOT NULL,
    "Measure" varchar(50)   NOT NULL,
    "Unit_of_measure" varchar(100)   NOT NULL,
    "Age" varchar(30)   NOT NULL,
    "Health_status" varchar(30)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL,
    "OBS_VALUE" decimal   NOT NULL
);

-- Well_being_stats_cleaned
CREATE TABLE "Well_being_stats" (
    "STRUCTURE_NAME" varchar(50)   NOT NULL,
    "REF_AREA" varchar(3)   NOT NULL,
    "Reference_area" varchar(50)   NOT NULL,
    "Measure" varchar(50)   NOT NULL,
    "Unit_of_measure" varchar(200)   NOT NULL,
    "Age" varchar(15)   NOT NULL,
    "Domain" varchar(30)   NOT NULL,
    "TIME_PERIOD" int   NOT NULL
);



ALTER TABLE "Olympians_Stats" ADD CONSTRAINT "fk_Olympians_Stats_NOC" FOREIGN KEY("NOC")
REFERENCES "Athlete_key" ("NOC");

ALTER TABLE "Olympians_S" ADD CONSTRAINT "fk_Olympians_S_NOC" FOREIGN KEY("NOC")
REFERENCES "Athlete_key" ("NOC");