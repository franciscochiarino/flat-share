# FlatSwap

## What does this do?

The purpose of this application is to make it easier and cheeper for people to find a accomodation when going on holidays. Here is how it works:
1. Sign up
2. Post your flat or room
3. Look for another flat or room and send a date suggestion to exchange places
4. Travel without paying for accomodation

## Technical details

* Ruby 2.7.2
* Rails 6.1.4

## Changelog

### User Authentication
- **Feature:** Visitors can create accounts and log in

### User Avatar
- **Feature:** User can upload an avatar picture
- **System:** Email and password validations only run on `:create`. These params are not permitted on edit yet.

### Flat Model
- **System:** Create flats table in the database