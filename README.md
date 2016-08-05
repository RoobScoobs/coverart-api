# Deployed Application

https://roobscoobs.github.io/coverart-client

# Development Process

The current mockups show an idea that was initially inspired by an interest in album
artwork and the design thought that goes into every piece developed. I wanted to
give the spotlight to such artwork by designing a game that would present the user
with a single cover art, and he or she will have to guess the title of the album.
Surely enough, that idea was put on the back burner as soon as I dove into the
development process.

This concept actually spawned a more thrilling idea, or at least one that better
handles a CRUD application – an album review site. Basically, I was going to build
the poor man's Pitchfork. The site is a bookmark staple in my browser, so I thought
it would be a great experience to build an imitation because that is flattering
after all, right?

It took some time before I became familiar with Ruby on Rails again, and I remember
why I loved using it back in the second project, when I built a run tracking application
aimed for marathon runners. Convention over configuration was the motto that I stuck to
throughout this process, although the times in which trouble stirred was exactly when
I stepped the line and went outside of convention. As opposed to scaffolding from the start,
I built my controllers and models individually. I added my own custom methods in the
controllers and left out some important lines of code. This would bring some headache
later on when dealing with the Ember.js framework.

The first issue was actually finding a way to test the back-end. Typically, a curl
request with the user token provided would do the trick, however, being new to Ember
inspector, I had no idea how to extract the user's token. So I decided to cut my
work in the back-end and head straight to building the front-end. I wanted to finish
setting up the API and know that it was fully functional before starting Ember.

I started building out a feature that would allow a user to create a new instance of
an album which would hold the album's title, artist and description. A user could
make as many albums as he or she wanted, knowing well enough that another user would
not be able to delete or edit any of the information. Create posed a problem because
I never made a serializer for the album's attributes. Nothing was permitted through
the API, so Ember could not properly communicate with it.

After fixing that, editing the created instance was the next step. Another issue arose,
however, this time the solution was not in the front-end but rather in the back-end.
I had commented out json that was supposed to be rendered in the show method; instead,
I had rendered json in a different method that I had written, which was a big no no.

Once the updating function was clear, delete was easy enough. It only took remembering
to add the dependent key in the models. Unfortunately, the time dedicated to problem
solving two CRUD actions, dug deep into the time I wanted to build out more functionality,
which would have included filtering by genres, adding user reviews, and uploading
images. It was a challenge implementing a modern framework of which I had very little
knowledge of, but in the end the learning experience was well worth it.


## Technologies Used

  - Ruby
  - Ruby on Rails

# Relationship Diagram

![coverart-relationship-diagram](https://cloud.githubusercontent.com/assets/16338632/17273347/6498679c-567f-11e6-986c-b02a05b2b96d.png)

# Future Iterations

As previously mentioned, future developments will see an expanded feature set, one
that will provide users with a more rich and fulfilling experience. As it currently
stands, the application simply associates many albums to a particular user, but there
is no organization that allows a user to filter through everyone's entries. Moreover,
users should be able to interact with other albums insofar as being able to review
and share their own two cents about an album uploaded. This could give way to building
out a community that encourages a forum where everyone's opinion could be heard.  

# Link To Client Repo

https://github.com/RoobScoobs/coverart-client/
