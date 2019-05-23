# Bookmarks Manager

A website to maintain a collection of bookmarks.

## Approach

The flow of development is:

- Requirement
- User Story
- Feature Test
- Unit Tests
- Implementation
- Refactor

### Specifications to consider:

* Show a list of bookmarks
* Add new bookmarks 
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## Domain Model

Below is a domain model for the bookmarks model.

![Bookmark Manager domain model](./images/bookmark_manager_1.png)

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

```
As a user,
so that I can change titles or URLs,
I want to update a bookmark.
```

## How to use

Clone the repository and navigate to the root of the project directory.

### Database setup:

Install PSQL: `brew install psql`. Open PSQL and follow the commands below to get setup:

Create the database:
```
\l = list databases
CREATE DATABASE "bookmark_manager";
\c bookmark_manager = change to a database
```

Create a table:
```
CREATE TABLE bookmarks (
  id serial PRIMARY KEY,
  url VARCHAR (60)
  );
```

Add a `title` column:
```
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);
```

Some commands for viewing the database:
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

### Running the application:  
`rackup -p 9292`  

Open your web browser at:  

`http://localhost:9292/`