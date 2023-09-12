-----FastFoodNutritionMenu$

select * from FastFoodNutritionMenu$

------Nutritional Analysis:
--What is the average calories and total fat content of all items?
SELECT AVG(Calories) AS Avg_Calories, AVG([Total Fat_(g)]) AS Avg_TotalFat
FROM FastFoodNutritionMenu$;

--Which item has the highest cholesterol content?
select item, MAX ([Cholesterol_(mg)]) as Max_Cholesterol
from FastFoodNutritionMenu$
group by item
order by max([Cholesterol_(mg)]) desc

--What is the distribution of carbohydrates among the items?
select item,[Carbs_(g)]
from FastFoodNutritionMenu$
order by [Carbs_(g)] desc

--What items have the highest protein content?
select Company,item,[Protein_(g)]
from FastFoodNutritionMenu$
order by [Protein_(g)] desc

----Comparative Analysis:
--Compare the sodium content of items from different companies.
select Company,[Sodium _(mg)]
from FastFoodNutritionMenu$
order by [Sodium _(mg)] desc

--How does the fiber content vary across different items?
select item, [Fiber_(g)]
from FastFoodNutritionMenu$
order by [Fiber_(g)] desc

---Popular Ingredients:

--Which items have the highest sugar content?
select item,[Sugars_(g)]
from FastFoodNutritionMenu$

--Are there items with high protein content and low sugar content?
select item, [Protein_(g)],[Sugars_(g)]
from FastFoodNutritionMenu$
where[Sugars_(g)]<169 and [Protein_(g)]>0
order by [Protein_(g)] desc 

---Healthy Choices by Company:

--Which company offers the healthiest options in terms of low-fat and low-sugar items?
Select Company,[Total Fat_(g)],[Sugars_(g)]
from FastFoodNutritionMenu$
where [Total Fat_(g)]>0 and [Sugars_(g)]>0
order by [Total Fat_(g)] , [Sugars_(g)] asc
















 

