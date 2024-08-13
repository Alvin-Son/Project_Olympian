import pandas as pd
from pathlib import Path

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, inspect

import inquirer

# Create engine 
uri = "sqlite:///Project_olympian.sqlite"
engine = create_engine(uri)
conn = engine.connect()
# Declare a Base using `automap_base()`
Base = automap_base()
# Use the Base class to reflect the database tables
Base.prepare(autoload_with=engine)

tables = dict(Base.classes)
print(tables)

Air_pollulants = Base.classes.Air_pollulants
Armed_forces = Base.classes.Armed_forces
Athlete_events = Base.classes.Athlete_events
Avoidable_mortality = Base.classes.Avoidable_mortality
Compulsory_education = Base.classes.Compulsory_education
Corruption = Base.classes.Corruption
Disaster_data = Base.classes.Disaster_data
Education_expenditure = Base.classes.Education_expenditure
Employment_ratio = Base.classes.Employment_ratio
GDP_growth = Base.classes.GDP_growth
GDP_p_cap_growth = Base.classes.GDP_p_cap_growth
GDP_per_capita = Base.classes.GDP_per_capita
GDP_usd = Base.classes.GDP_usd
Gov_effectivness = Base.classes.Gov_effectivness
Gov_stability = Base.classes.Gov_stability
Health_expenditure = Base.classes.Health_expenditure
Health_expenditure_usd = Base.classes.Health_expenditure_usd
Legal_rights = Base.classes.Legal_rights
Military_expenditure = Base.classes.Military_expenditure
Mortality_data = Base.classes.Mortality_data
Olympian_stats = Base.classes.Olympian_stats
Overall_olympics = Base.classes.Overall_olympics
Overall_stability = Base.classes.Overall_stability
Perceived_health = Base.classes.Perceived_health
Pollution_pop_exposed = Base.classes.Pollution_pop_exposed
Pop_growth = Base.classes.Pop_growth
Pop_total = Base.classes.Pop_total
Retirement_data = Base.classes.Retirement_data
Rule_of_law = Base.classes.Rule_of_law
Stability_and_absence_of_terr_voil = Base.classes.Stability_and_absence_of_terr_voil
Tourism_expenditure = Base.classes.Tourism_expenditure
Unemployment = Base.classes.Unemployment
Wage_gap = Base.classes.Wage_gap
Well_being_stats = Base.classes.Well_being_stats

session = Session(engine)


def Selected_Dataset(table_name):
    inspector = inspect(engine)
    columns = inspector.get_columns(table_name)
    print(f'Selected Dataset: {table_name}')
    print("----------------")
    print(" ")
    print("Columns:")
    print("-------")
    cols = []
    for column in columns:
        print(column['name'])
        cols.append(column["name"])

    return cols

def create_df(table, cols):
    temp_table = tables[table]

    # response = session.query(temp_table.c[*cols]).all()
    print(cols[0])
    temp_list = [getattr(temp_table, c) for c in cols]
    response = session.query(*temp_list).all()
    df = pd.DataFrame(response)
    print(df)


def Table_names():
    return list(Base.metadata.tables.keys())

answers = inquirer.prompt([
    inquirer.List(
        "Table_name",
        message = "Which table would you like to see? ",
        choices = Table_names()
    )
    # (
    #     "type":'list',
    #     "name":"table_name",
    #     "message":"Which table would you like to see? ",
    #     "choices":Table_names()
    # )
])

selected_columns = Selected_Dataset(answers["Table_name"])
create_df(answers["Table_name"], selected_columns)
# print(answers)