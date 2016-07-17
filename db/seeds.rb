# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


runs = Run.create(start_time: 'Jan 1, 2016 10:00', distance: 2, end_time: 'Jan 1, 2016 10:30')
runs = Run.create(start_time: 'Jun 23, 2016 09:30', distance: 5, end_time: 'Jun 23, 2016 10:30')
runs = Run.create(start_time: 'Feb 3, 2016 11:15', distance: 3, end_time: 'Feb 3, 2016 11:45')
runs = Run.create(start_time: 'Feb 8, 2016 09:30', distance: 17.2, end_time: 'Feb 8, 2016 11:30')
runs = Run.create(start_time: 'Mar 10, 2016 08:30', distance: 15.8, end_time: 'Mar 10, 2016 10:30')

comments = Comment.create(run_id: 6, name: 'Bark Obama', body:'Take me on more runs, hooman!!!')
comments = Comment.create(run_id: 1, name: 'Joy', body: 'Fo shizzle!')
comments = Comment.create(run_id: 6, name: 'Eden', body: 'Mood:quizzical')
comments = Comment.create(run_id: 1, name: 'Matt', body: 'Who taught you how to run!?')
comments = Comment.create(run_id: 2, name: 'Marc', body: 'You can do this')
comments = Comment.create(run_id: 2, name: 'Kathryn', body: 'Encouragement!')
comments = Comment.create(run_id: 1, name: 'Colin', body:'I wear Harry Potter glasses but look like professor Snape')
comments = Comment.create(run_id: 6, name: 'Hannah', body:'Good work!')
comments = Comment.create(run_id: 2, name: 'Nia', body:'Great job!')
comments = Comment.create(run_id: 5, name: 'Jimi Hendrix', body:'Stone free to do what I please')
comments = Comment.create(run_id: 3, name: 'Joy', body: 'Good work!')
comments = Comment.create(run_id: 3, name: 'Adam', body: 'Like clockwork')
comments = Comment.create(run_id: 3, name: 'Michelle', body: 'You are getting better!')
comments = Comment.create(run_id: 4, name: 'Candice', body: 'Stay positive!')
comments = Comment.create(run_id: 4, name: 'Dani Champion of the World', body: 'Whoa whoa')
comments = Comment.create(run_id: 5, name: 'The Poopa', body: 'Feed me omg its almost 9 AM')


# runs=Run.create(start_time: '', distance:'', end_time: '')
# Run.Update( current id )
# retunr the created time and teh udpated time subtract them return the time
