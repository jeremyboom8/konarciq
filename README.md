# Konarciq - Eco friendly adventures

TL;DR: This was my final project during the last two weeks of the coding bootcamp Le Wagon. Please note: this app is not ready for production. It is missing pundit, validations and many other things. I would like to thank [@atmosfeer](http://github.com/atmosfeer) for being an awesome teacher.

You can take a see a complete Demo (4m17s) of the project I made on Youtube by clicking on the image below.

[![Demo of Konarciq](https://img.youtube.com/vi/sr6BoEmeDF0/0.jpg)](https://www.youtube.com/watch?v=sr6BoEmeDF0)

### Table of contents

* [Context](#context)
* [Summary](#summary)
* [Tech Stack](#tech-stack)
* [Installation](#installation)
* [Features](#features)
* [Todos](#todo-aditional-features)
* [Contact && License](#contact)

## Context

Between September and December 2017, I attended **[Le Wagon]**, an intensive 9-week coding program focused on Full Stack Web Development in Copenhagen. During this program, I built a portfolio of web applications.

As my **Final Project** I was required to come up with (and develop) a project of my own to showcase what I had learned. The constraints were the following:
- it had to be substantial but also achievable
- it had to be completed in two weeks.
###### Timeframe:  _**Two weeks**_

## Summary

Recently I've become interested in Platform Cooperativism, P2P networks, Solarpunk and Open Source decentralized apps. I set myself a challenge to build a simple version of an online marketplace where users can host eco friendly adventures and allow travelers to book these online.

**The goal** with this application **was to create the architecture and tech needed to make it happen**.

The user has the ability to register, log in, look up adventures, select a time and book an adventure, and create a listing and manage their bookings. To make all of this happen, I had to build a Rails backend that facilitated user registration, Stripe payments, image uploading and many other features.

I enjoyed how Rails helped me be productive and allowed me to focus both on the backend and the frontend. Being able to work on both, thanks to my new skills, was very satisfying. I wrote my code following the 'DRY' principle, separating concerns and writing clean, functional and maintainable code.

### Tech Stack

| **Frontend** | **Backend** | **Database** |
| ------ | ------ | ------ |
**[HTML 5]** | **[Rails]** |  **[PostgreSQL]**
**[CSS 3]** |  | **[Heroku]**
**[Javascript]** |
**[Bootstrap]** |

## Installation

These instructions assume you have [Ruby and Homebrew installed](https://github.com/lewagon/setup/blob/master/OSX.md)

```bash
$ git clone https://github.com/jeremyboom8/konarciq.git
$ cd konarciq
$ bundle install
$ cd config && touch application.yml
```
##### Application.yml

Paste in the following code and populate it with your own keys:

```ruby
CLOUDINARY_URL: 'cloudinary://xxxx@xxxx'
GOOGLE_API_SERVER_KEY: 'AIxxxx'
GOOGLE_API_BROWSER_KEY: 'AIxxxx'
STRIPE_PUBLISHABLE_KEY: "pk_test_PGFxxxx"
STRIPE_SECRET_KEY: "sk_test_dFLxxxx"
```

Now we can set up a new database and populate it with the seed file.

$ rails db:create
$ rails db:migrate
$ rails db:seed

The project will be accessible on http://localhost:3000

## Features

> As a user, I can **register and log in**. If I am already logged, I can skip this step.

> As a user, I can **personalize my profile account and picture**.

> As a user, I can **see what adventures I can do in my surroundings**.

> As a user, I can **find adventures using the google search box**.

> As a user, I can **see a show page detailing the adventures**.

> As a user, I can **see the profile of other users**.

> As a user, I can **see available times depending on the host**.

> As a user, I can **book an experience using stripe**.

> As a user, I can **write a review of my experience**.

## TODO Additional Features:

> As a user, I can **see my listings in a dashboard**.

> As a user, I can **see a calendar view of my upcoming event**.

> As a user, I can **send a message other users**.

## Contact

* e-mail: jeremy.boom77@gmail.com
* Twitter: [@jeremyboom8](https://twitter.com/jeremyboom8 "twitterhandle on twitter")
* LinkdeIn: [/jeremyboom]

License:
--
GNU Affero General Public License v3.0 © [jeremyboom8]
[Richard D. Bartlett - Open Source Startup: Why We Give Away All Our IP 🐝
](https://medium.com/enspiral-tales/open-source-startup-why-we-give-away-all-our-ip-d763e58134ea)
