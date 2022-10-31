# CSV to XML conversion using Logic Apps Standard
Per a customer request on a [MS Q&A post](https://learn.microsoft.com/en-us/answers/questions/1025481/index.html), sample application in this repository performs CSV to XML conversion leveraging the following features:
1. **Azure Blob connector** for detecting an upload of a `.csv` file in `csv-files` container in Azure Storage account.
2. **Inline Code** action for parsing through the content of the `.csv` file and constructing an array of JSON objects where the CSV header values are used as their property keys, and subsequent row of values are specified as their property values.
3. **Compose** action is used for utility purposes for tasks such as base64 decoding as well as making it easity to work with Transform XML action.
4. **Foreach loop** is used for iterating through the array of JSON objects as we assume each row equals different xml file at the end of the workflow.
5. **Transform XML** action is used inside the Foreach loop to perform (a) JSON to XML conversion (b) XML transformation using Map file (resides in `Artifacts/Maps` directory).
6. **Upload Blob** action is used to create a new blob file inside the `xml-files` container in the same Azure Storage account.

Assuming the following CSV file with `n` number of rows & colums:
````
MTCCode,SN,Quantity,Type,DN,Cx,Delivery-Time,Due-Date,FCNW,PFDT,PTDT,DFDT,DTDT
12345,987654321,24,staged,durham,cust name,6:00:00 AM,22/9/2022,24,22/9/2022 6:00am,22/9/2022 6:00am,22/9/2022 6:00am,22/9/2022 6:00am
54321,987654321,24,staged,durham,cust name,6:00:00 AM,22/9/2022,24,22/9/2022 6:00am,22/9/2022 6:00am,22/9/2022 6:00am,22/9/2022 6:00am
23421,987654321,24,staged,durham,cust name,6:00:00 AM,22/9/2022,24,22/9/2022 6:00am,22/9/2022 6:00am,22/9/2022 6:00am,22/9/2022 6:00am
````
The workflow will result in 3 separate xml files in the `xml-files` container of your Azure Blob Storage account.

## Some gotchas:
1. This conversion doesn't require Integration Account or Azure Functions resources to perform the conversion
2. Because Logic Apps Standard runs on Azure Functions runtime, you'll need to create your own `local.settings.json` file with necessary connection strings to be able to run this workflow locally which are specified in the `connections.json` file.
3. `.vscode` is available, so you should be able to open in VSCode and debug with `F5` accordingly.
4. For more info and additional support, please inquire the original MS Q&A thread: https://learn.microsoft.com/en-us/answers/questions/1025481/index.html