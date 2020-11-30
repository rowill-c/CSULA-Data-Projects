-- Load only the ad_data1 directories
data = LOAD './dualcore/ad_data1' AS (campaign_id:chararray,
             date:chararray, time:chararray,
             keyword:chararray, display_site:chararray,   
             placement:chararray, was_clicked:int, cpc:int);

-- TODO (1): Include only records where was_clicked has a value of 1
clicked = FILTER data BY was_clicked [FILL-IN] ;

-- A: Group the data by the 'keyword' field
grouped = GROUP clicked BY keyword;

/* TODO (2): Create a new relation which includes only the
 *           "keyword" and the total - using SUM function - for  "cpc" of "clicked", which is aliased as "cost"
 *           on that site
 */
totals  = FOREACH grouped GENERATE [FILL-IN], [FILL-IN] AS cost;


-- TODO (3): Sort the new relation in ascending order of cost
sorted = ORDER totals BY cost [FILL-IN];

-- C: Display just the first five records to the screen
top_low_five = LIMIT sorted 5;

-- TODO (4): dump the five
[FILL-IN] top_low_five;


