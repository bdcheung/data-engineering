# Challenge for Software Engineer - Completed by Brian Cheung

## Project Description
Imagine that LivingSocial has just acquired a new company.  Unfortunately, the company has never stored their data in a database and instead uses a plain text file.  We need to create a way for the new subsidiary to import their data into a database.  Your task is to create a web interface that accepts file uploads, normalizes the data, and then stores it in a relational database.

Here's what your web-based application must do:

1. Your app must accept (via a form) a tab delimited file with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name.  You can assume the columns will always be in that order, that there will always be data in each column, and that there will always be a header line.  An example input file named example_input.tab is included in this repo.
1. Your app must parse the given file, normalize the data, and store the information in a relational database.
1. After upload, your application should display the total amount gross revenue represented by the uploaded file.

Your application does not need to:

1. handle authentication or authorization (bonus points if it does, extra bonus points if authentication is via OpenID)
1. be written with any particular language or framework
1. be aesthetically pleasing

Your application should be easy to set up and should run on either Linux or Mac OS X.  It should not require any for-pay software.

## How to Use This App
This application is built on Ruby 2.0.0p0 and Rails 4.0.0rc1.  To use this app, download and install both Ruby and Rails (installation instructions can be found at https://coderwall.com/p/tptocq and   http://railsapps.github.io/installing-rails.html).

Then, to install the application, open a command prompt and:

1. Clone the repository from GitHub ([need help?](https://help.github.com/articles/set-up-git))
```
$ git clone https://github.com/bdcheung/data-engineering.git
```

1. Switch into the directory and run the bundler to install required dependencies
```
$ bundle install
```

1. Generate the database
```
$ rake db:migrate
```

1. Start the Rails server
```
$ rails s
```

1. Open the app in your favorite browser and visit http://localhost:3000