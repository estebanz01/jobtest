# jobtest
A beautiful blog system with APIs

### Tasks 

* Fork this repo. 
* Go ahead and resolve and complete these tasks. You can work on them on any order, is not necessary to complete all of them.

1. *Posts* CRUD is almost done. Add missing to code to submit a post and display it.
2. SuperAgent class is huge, refactor it using 1 or to 2 refactoring patterns
3. SuperAgent class need some tests. Look at the example `spec/lib/super_agent_spec.rb`.
4. In order to create posts you need some authors in your database. Create a rake task in *Posts* API to seed the database.
5. Check *Posts* API models (author, post) and look for other way to improve validations.

* When you're done, create a pull request against base fork `estebanz01/jobtest`

### Run it!

* In order to run these apps you need:
1. ruby (2.2.0 at least)
2. sqlite (you can change database.yml to work with another db if you want)


* To run the posts API, go to the posts folder and run `rails server -p 5000`.
* To run the blog app, go to the blog folder and run `rails server`.

The posts API is consumed by an Client class called `SuperAgent`, located in `blog/lib/`.

### Routes for (Blog)

```bash
Prefix Verb   URI Pattern               Controller#Action
posts GET    /posts(.:format)          posts#index
POST   /posts(.:format)          posts#create
new_post GET    /posts/new(.:format)      posts#new
edit_post GET    /posts/:id/edit(.:format) posts#edit
post GET    /posts/:id(.:format)      posts#show
PATCH  /posts/:id(.:format)      posts#update
PUT    /posts/:id(.:format)      posts#update
DELETE /posts/:id(.:format)      posts#destroy
```

### Routes for (Posts API)

```bash
Prefix Verb   URI Pattern            Controller#Action
posts GET    /posts(.:format)       posts#index
POST   /posts(.:format)       posts#create
post GET    /posts/:id(.:format)   posts#show
PATCH  /posts/:id(.:format)   posts#update
PUT    /posts/:id(.:format)   posts#update
DELETE /posts/:id(.:format)   posts#destroy
authors GET    /authors(.:format)     authors#index
POST   /authors(.:format)     authors#create
author GET    /authors/:id(.:format) authors#show
PATCH  /authors/:id(.:format) authors#update
PUT    /authors/:id(.:format) authors#update
DELETE /authors/:id(.:format) authors#destroy
```


