Bloccipedia List of Steps
-------------------------

This is the list of steps needed to create this app.

Note: The requirements of this app can be found in this URL: https://www.bloc.io/users/cesc-vilanova/checkpoints/134 

Note: I'm assuming we won't be using RSpec tests.  

- Like all rails apps, we will start by creating the basic rails app folder structure by typing "rails new Blocipedia -T". We will use - T to avoid creating unit tests.

- We will now create initiate the repo in Github.

- We will now create the database and update the Gemfile so that development and production have the required different database configurations.

- Now, we will add to Gemfile first, and bundle later, all the gems that we will needed during the development. The gems needed are: Devise, Redcarpet, Friendly, Skeleteon (https://github.com/helios-technologies/skeleton-rails) and Stripe (https://stripe.com/docs/checkout/guides/rails).  

- After installing the gems, we will install the other complement needed: Marked (https://github.com/chjj/marked).

Note: As far as I understand, the installation doesn't require a gem.

- Looking at the requirements, we can see that we will need two static page (Home and Sign up) and five dynamic pages (Index of wikis, Create wiki, Edit wiki, Show wiki, Share wiki with collaborators).

Note: I'm assuming here that, if we enter the app being logged in, we will be automatically directed to Index, so we don't need any dynamic information in the Home page.

- Reading the requirements, we see that the app is basically based on two concepts: wiki and users. Wikis are editable static pages. Users are people who can do things with these pages. 

- We will use rail commands to create the following resources for Wikis: index, new, edit, show, share.

- We will now seed the database so that we can test our implementation as we progress. We will be updating the seed file as we add more things to the app.

- We will now use Devise and write some code to create the two types of users needed. We will update the code for the different sections of the app so that premium and free users have only access to the appropriate things.

- We will use now Stripe to link payment with becoming a premium user.

- Now the structure is set, we will focus on the real time editing of Wikis using Marked. 

- Now we have a functional version of the app we will use Skeleton classes to style the HTML structure of each of the views created in step 6 (index, new, edit, show, share).


