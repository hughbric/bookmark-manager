# Bookmarks Manager

A website to maintain a collection of bookmarks.

## How to use


## User Stories

```
As a user,
So that I can quickly return to sites I visit frequently,
I would like to see a list of bookmarks.
```

```
As a user,
so that I can save a website,
I would like to add the site's address and title to bookmark manager.
```

```
As a user,
so that I can remove bookmarks I no longer use,
I want to delete a bookmark.
```

## Domain Model

Below is a domain model for the bookmarks model.

![Bookmark Manager domain model](./images/bookmark_manager_1.png)


### Specifications to consider:

* Show a list of bookmarks
* Add new bookmarks 
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks


### Database setup:

Some psql commands to get setup:
```
\l = list databases
CREATE DATABASE "bookmark_manager";
\c bookmark_manager = change to a database
```
```
CREATE TABLE bookmarks (
  id serial PRIMARY KEY,
  url VARCHAR (60)
  );
```
```
\d = list of relations
\dt = list tables
\d bookmarks = lists table bookmarks

SELECT * FROM bookmarks; = view all columns

\du = list of roles
\x = expanded view
```

Create records in the database manually:
```
INSERT INTO bookmarks (url)
VALUES ('http://www.google.com'), ('http://www.makersacademy.com');
```
