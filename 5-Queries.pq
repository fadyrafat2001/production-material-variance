// Draft M. Not executed in Power Query. Create text parameter DataFolder first.
let
    Source = Csv.Document(File.Contents(DataFolder & "material_consumption.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"Order_ID", type text}, {"Month", type text}, {"Product", type text}, {"Material", type text}, {"Actual_Output_units", Int64.Type}, {"Standard_kg_per_unit", type number}, {"Standard_Price_EGP_per_kg", type number}, {"Actual_Consumed_kg", type number}, {"Actual_Issue_Price_EGP_per_kg", type number}}, "en-US"),
    Allowed = Table.AddColumn(Typed, "Standard_Allowed_kg", each [Actual_Output_units] * [Standard_kg_per_unit], type number)
in
    Allowed
