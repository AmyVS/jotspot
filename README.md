#Jotspot

This is a project using Ruby on Rails, HTML5, CSS3, AJAX and Devise authentication. It's a simple blog app that allows users to create posts, look at posts by others, and edit and remove their own posts.

Check out Jotspot on Heroku:
http://jotspot.herokuapp.com/

##Installation
Clone this repo in your terminal:

```console
$ git clone https://github.com/AmyVS/jotspot.git
```

If you haven't already, be sure to install [postgres](http://www.postgresql.org/download/):

```console
$ postgres
```

Run bundle to install all the gems associated with the repo:

```console
$ bundle install
```

Get your databases all set up:

```console
$ rake db:create
$ rake db:migrate
```

Start your local rails server:

```console
$ rails s
```

Open your favorite brower to localhost:3000 and you should be good to go!


---
**MIT License Copyright (c) 2014 Amy Vaillancourt-Sals**

---
