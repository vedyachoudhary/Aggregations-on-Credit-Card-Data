/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Person]
      ,[Age]
      ,[Weight]
      ,[Income]
      ,[Pay Type]
      ,[Car Value]
      ,[CC Debt]
      ,[Gender]
      ,[Live Alone]
      ,[Dwell Type]
      ,[Mall Trips]
      ,[Nbhd]
      ,[Have Tried]
      ,[F14]
 FROM [Credit card DB].[dbo].[Data$]

 --  MAX
  -- Question--find the maximum income from a set of values?

 SELECT MAX(income) FROM dbo.Data$

 -- MIN
--Question-- find the product with the lowest Pay Type?

 SELECT MIN([Pay Type]) FROM dbo.Data$

 --COUNT
--Question--To count the total number of observation?

 SELECT COUNT(*) FROM dbo.Data$

 -- GROUP BY
--Question-- Return all the CC Debt from the table?
SELECT MAX([income]) FROM dbo.Data$; SELECT 'CC' Debt from dbo.Data$

--Question-- sum the income where age is 57
 
 select sum(income) from dbo.Data$ where age=57

 --SUM
 --Question--Sum the income?
 select sum(income) as sum_income from dbo.Data$

 --AVG

 --Question  -- Find the average income?
 select avg(income) from dbo.Data$

 -- ORDER BY
 --Question -- Find sum of income and average of income in group by age in Ascending Order ?
 select age,
            sum(income) as sum_income,
			avg(income) as avg_income
			from dbo.Data$
group by age
order by age asc
select * from dbo.Data$