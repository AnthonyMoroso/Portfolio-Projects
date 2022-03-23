Select *
From CovidDeaths
Order by 3,4


Select *
From CovidVaccinations
Order by 3,4

Select Location, Date, total_cases, new_cases, total_deaths, population
From CovidDeaths
ORDER BY 1,2

--Looking at Total Cases vs Total Deaths
--Likelihood of dying if you contract covid in your country

Select Location, Date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
From CovidDeaths
--Where location like '%states%'
WHERE continent is not null
ORDER BY 1,2


--Looking at Total Cases vs Population
--Shows what percentage of population contracted covid

Select Location, Date, population, total_cases, (total_cases/population)*100 as PercentPopulationInfected
From dbo.CovidDeaths
Where location like '%states%'
ORDER BY 1,2

--Looking at Countries with Highest Infection Rate compared to Population

Select Location, population,MAX(total_cases) as HighestInfectionCount, Max((total_cases/population))*100 as PercentPopulationInfected
From CovidDeaths
--Where location like '%states%'
GROUP BY Location, population
ORDER BY PercentPopulationInfected DESC












