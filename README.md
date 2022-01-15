## Usage

### Requirements

You'll need these installed in order to get the server up and running:

- Ruby
- Rails
- sqlite3

You can install the appropriate version of Ruby through your favorite Ruby version manager. It should pick up the `.ruby-version` file in the root of the project. Then `$ bundle install` should handle installing Rails. If you have issues with the sqlite driver installation, you need sqlite installed for your operating system before running it.

### Usage

1. Get the server started with `$ bin/rails server`
1. Visit `localhost:3000/investors`
1. Click "New investor"
1. Input investor information, including a photo. Note the photo is not required, but everything else is.

## Todo

- [x] Investor scaffold
- [x] File upload
- [x] Update README to setup and install server

## Extra points

- [x] Fully documenting both what you were able to complete and what you would want to do additionally if you had more time
- [x] A full git history showing your development style.
- [ ] Authentication and authorization capabilities
- [x] Support for files larger than 3MB (upload progress indicator, etc)
- [ ] Detecting and handling updating addresses for existing customers with matching names/SSNs
- [x] Tests

## Conclusion

After getting the basics done, I was hoping to work on authentication with Devise next. Unfortunately got a bit caught up in configuring Devise. I should have used basic authentication instead! It ended up being slower rather than faster to implement using Devise. I think the issue is that I wasn't aware of *all* of the configuration I needed to do (aware: db, config files, controller strong parameters; unaware: playing nice with turbolinks, Devise controller override failures, which link helpers to use). I finally got all the data to go through the forms to the Devise RegistrationsController when I tried to change the "New Investor" links on the Investor Index page and some fancy turbolinks feature wouldn't let the page load. That was the straw that broke this camel's back.🐫

Thankfully I was bothered enough by the one failing test to investigate what was happening - despite some default system tests passing with the broken user flow! It would have been terribly embarrassing to send it off saying "it works!" Another win for testing.

A bit disappointing I didn't get more of the stretch goals, but here we are at 2.5 hours, so off we go.

EDIT - If I had known that Devise would eat up all my time, I would have made the interface nicer first - validate zip codes, states, the like.