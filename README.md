# Production material cost variance

**Status: synthetic build-in-progress case study, not a completed Power BI report.**

Prepared with assistant support for review, testing and adaptation. This is not presented as prior independent work or a real company engagement. No confidential employer data is included.

## Business question
How do price and usage explain material-cost variance at actual production output?

## Data and method
36 production orders, 72 material rows, 3 products and 3 monthly periods. Standard quantity is allowed input at actual output. Price variance uses consumed material, not purchases.

## Reference results and limits
An Excel supporting example was recalculated independently. The synthetic total adverse variance is EGP 438,949.52: price EGP 256,311.44 plus usage EGP 182,638.08. This is not a full production-cost study; labour and overhead are excluded.

All figures describe the designed synthetic scenario, not an actual business outcome. Reference calculations and input checks were performed outside Power BI. They are acceptance targets, not proof that the M, DAX or native model works.

## Included assets
Synthetic input data, data dictionary, model specification, Power Query M source, DAX measure source, report-build steps and expected-results tests. See the supplied build documentation for table grains, relationship directions, measure definitions, tests and exclusions.

## Not yet implemented or verified
A generated PBIX draft is included for testing in Power BI Desktop. This version has not been natively tested. M and DAX have not been executed in Power BI Desktop. Relationships, refresh, visuals, slicers, drill-through and interactions still need native implementation and testing. No RLS, incremental refresh, gateway or built-in time intelligence is claimed.

## Completion criteria
Import and type the source data; validate keys and relationships; create each measure; compare whole-data and filtered results; test interactions; save and reopen PBIX; record the Desktop version and refresh/test results; capture actual report and Model view screenshots. Update this status only after those checks pass.
