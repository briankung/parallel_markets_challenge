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
