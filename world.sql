/*select countries.name, languages.language, languages.percentage from countries
join languages on countries.code=languages.country_code
where language = "Slovene"
order by percentage desc
*/

/*select countries.name, COUNT(cities.id) as number_cities from countries
join cities on countries.code=cities.country_code
group by countries.name
order by COUNT(cities.id) desc
*/

/*select cities.name, cities.population from cities
join countries on countries.id=cities.country_id
where cities.population > 500000 and countries.name ="Mexico"
*/

/*select countries.name, languages.language, languages.percentage from countries
join languages on countries.code = languages.country_code
where languages.percentage > 89
order by languages.percentage desc, countries.name 
*/

/*select countries.name, countries.surface_area, countries.population from countries
where countries.surface_area<501 and countries.population >100000
*/

/*select name, government_form, capital, life_expectancy from countries 
where government_form = 'Constitutional Monarchy' and capital > 200 and life_expectancy > 75
*/

/*select countries.name as country_name, cities.name as cities_name, cities.district, cities.population from countries
join cities on countries.id=cities.country_id
where countries.name="Argentina" and cities.district="Buenos Aires" and cities.population > 500000
*/

select countries.region, count(countries.id) as total_countries from countries
group by countries.region
order by total_countries desc
