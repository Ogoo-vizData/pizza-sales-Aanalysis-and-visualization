# pizza-sales-Aanalysis-and-visualization
### Sales analysis of items sold between Jan 15th and Dec 25th and a dashboard

# Road accident analysis using Excel
### Analysis and visualization of road accidents that occured between 2021 and 2022.

## Project overview
This project is based on pizza sales data. The assumed clients want a sales data dashboard for Jan 15th to  dec 25th. By analyzing various aspects of the data, contains data about accidents occurring with different influences like time, location or vehicle, we seek to identify trends, and make visualization to enable easier and adequate comprehension. 

## Data sources
The primary Data set used for this analysi is "pizza_sales_excel_file", containing details about sales.

## tools
- SQL - Data cleaning, analysis, KPI creation and fromatting.
- POWER BI - Data transformation and visualization.


## Data cleaning/preparation
In the intial data preparation phase, we performed the following tasks:
- Data Loading and inspection.
- Data cleaning and formatting.
- Two columns for day and month were created using Data transformation in Power BI.
- Searched and removed any duplicate and void data.



## Exploratory Data Analysis
- calculate total revenue
- Average value order
- sum of total orders
- Average pizza per order
- Top 5 pizza by revenue
- Least 5 pizza by revenue


## Data analysis

'''SQL
select Top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name 
order by Total_revenue desc

'''SQL
select Top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_name
order by Total_revenue asc

'''SQL
SELECT SUM(TOTAL_PRICE) AS Total_revenue FROM pizza_sales
several KPIs were created for projection of the visualization

## Results and findings
The analysis result are summarized as follows:
- Orders are highest on Weekends, Fridays/Saturday evenings.
- There are maximum orders from the month of July and January
- Classic category contributes to  maximum sales & total orders.
- Large size pizza contributes to the maximum sales.
- The Thai chicken Pizza contributes to the maximum revenue
- The Brie Carre  Pizza contributes to the minimum revenue
  
## Recommendations
Based on the analysis, I reccomend the following:
- Recruitement of temporal staffs to take shifts during weekends
- employing more contract wokers during the month of July and January
- More attention to Classic and Large pizza size as they bring in biggest revenue.





