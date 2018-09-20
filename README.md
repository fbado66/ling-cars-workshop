# ling-cars-workshop
Ruby - Sinatra 

Day 40: 
Ling’s CMS Builder
Goal
To reinforce an understanding of how to build logins and sign up features.
Learning Objectives
By the end of this exercise the student will be able to:
build a webapp with authentication.
integrate simple cms features into a one page website. 
Introduction
In the web development world, you’d often hear about Content Management Systems like Wordpress, Squarespace or Wix. What makes these attractive is the fact that you don’t need to be a coder to modify the website’s content. 

For this workshop we’ll be building a small landing page with a simple CMS for Ling’s Cars. Ling was hoping for a more minimal version of her current website: https://www.lingscars.com/ . She also wants the ability to make infrequent copy changes to the text on the home page. 
Setup
Create a new folder for this assignment called lings-cars
Make a app.rb file and a Gemfile to track your gems.
Instructions
Ling’s current website is a bit overwhelming. There’s just way too much going on. Take a moment to gather some content from it to put in a minimal 1 page website. The various sections are as follows: 
A big opening image with a caption. 
Some product pictures and descriptions. 
Brief Information about Ling. 
Her various awards if any.
A closing statement.
Now that you have some filler content. Let’s start thinking of our database table. The following should be stored in the database and rendered to the homepage. This means if they were edited in the database, that change should be reflected on the homepage. 
The opening caption.
The information about Ling. 
The closing statement. 
Lastly, create a route under “/admin” that only logged in users can view. This is where a user can edit the database entries that controls the homepage content. “/admin” should also redirect the user to the homepage if the login credentials were incorrect. 
Completion Requirements
Complete Workshop by end of allotted time limit.
The completed assignment has
A one page home page
An admin page where you can edit information to display on the home page
A database that stores the information displayed in the  admin and home page
Group review session with the instructor. 
