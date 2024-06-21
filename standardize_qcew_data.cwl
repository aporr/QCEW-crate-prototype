cwlVersion: v1.2
class: Workflow

inputs:
  rawQCEWDatasets:
    type: Directory
    path: ./input_data/

outputs:
  standardQCEWDataset:
    type: File
	outputSource: standardizeQCEWData/standardQCEWDataset

steps:
  standardizeQCEWData:
    run:
      class: CommandLineTool
      baseCommand: "jupyter execute standardize_qcew_data.ipynb"
    in: 
      rawQCEWDatasets: rawQCEWDatasets
    out: [standardQCEWDataset]