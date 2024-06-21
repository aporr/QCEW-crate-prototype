# Data Kit - County Quarterly Census of Employment and Wage Standardization
## Version

Current version: 2024-05-14

## Provider

  - Organization: [Mid-Ohio Regional Planning Commission](https://morpc.org)
  - Contact: 
    - Name: Oliver Gwynn
	- E-mail: ogwynn@morpc.org

## Disclaimer

This data kit is a work in progress.

## Introduction

Each quarter the U.S. Bureau of Labor Statistics Census of Employment and Wage produces count of employment and wages reported by employers for the prior quarter. This data set includes annual factors for each given year, average establishment counts and employment levels, total wages, taxable wages and annual contributions, average annual and weekly pay, along with over the year change by count and percentage for each previously mentioned factor. The location quotient for average establishment counts and employment levels, total wages, taxable wages and annual contributions are also included.

## Outputs
qcew_annual_long
This data kit includes up to four standardized outputs derived from a compilation and trasformation of a bset of Quarterly Census of Employment and Wage data from the Bureau of Labor Statistics:

  - A quarterly long-form table that could (hypothethically) be used to drive a dashboard on the MORPC Insights platform (`./assets/output_data/qcew_quarterly_long.csv`)
  - A annual long-form table that could (hypothethically) be used to drive a dashboard on the MORPC Insights platform (`./assets/output_data/qcew_annual_long.csv`)
  - A quarterly wide-form table that contains concatenated QCEW data from BLS (`./assets/output_data/qcew_quarterly_wide.csv`)
  - A annual wide-form table that contains concatenated QCEW data from BLS (`./assets/output_data/qcew_annual_wide.csv`)
  
Each output is accompanied by a [Frictionless Resource file](https://specs.frictionlessdata.io/data-resource/), which provides a high-level description of the data and a link to the associated table schema.  The Resource file also provides the [MD5 checksum](https://en.wikipedia.org/wiki/Md5sum) ("hash") and the file size ("bytes") of the data file to allow for integrity checking.

The table schema is described by a [Frictionless Schema file](https://specs.frictionlessdata.io/table-schema/), which describes each of the fields contained in the table, including its name and type, and sometimes provides additional metadata about the table.

## Processes

The outputs are produced by a process which complies and transforms the data:

  1. A fully-automated process implemented as a Jupyter notebook (`./assets/01-standardize_qcew_data.ipynb`) uses the raw data from inputted by the user from BLS QCEW and produces annual and quarterly standardized long-form tables (`./assets/output_data/qcew_quarterly_long.csv`, `./assets/output_data/qcew_annual_long.csv`) described above, plus standardized wide-form tables (`./assets/output_data/qcew_quarterly_wide.csv`, `./assets/output_data/qcew_annual_wide.csv`).

## Inputs

The process requires inputted BLS QCEW '.csv' files from the user. These files can either be obtained manualy at [QCEW website](https://www.bls.gov/cew/about-data/data-availability.htm) or automatically through API calls. The latter is used in [morpc-qcew-fetch](https://github.com/morpc/morpc-qcew-fetch) to automate the retrivial of QCEW files based on user-specified parameters. 

  1. Files must come from BLS QCEW and placed in input data directory (`./assets/input_data/`)


## Revision history

### 2024-05-16 Oliver Gwynn <ogwynn@morpc.org>

First revision.

### 2024-05-10 Oliver Gwynn <ogwynn@morpc.org>

Initial WIP version. 
