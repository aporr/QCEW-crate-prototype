cwlVersion: v1.2
class: Workflow

inputs:
  rawQCEWDatasets:
    type: Directory
    path: ./input_data/

outputs:
  standardQCEWDataset:
    type: File
    path: ./output_data/qcew_annual_wide.csv

steps:
  standarizeQCEWData:
    run:
      class: CommandLineTool
      baseCommand: "jupyter execute standardize_qcew_data.ipynb"
    in: 
      rawQCEWDatasets: rawQCEWDatasets
    out:
      standardQCEWDataset: standardQCEWDataset