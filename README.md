# Heroku sucks.

## Usage

	git clone https://github.com/YellowApple/heroku-sucks.git
	cd heroku-sucks
	bundle
	
	# run it locally:
	rackup
	
	# deploy it to Heroku, which sucks:
	heroku login # if you ain't already logged in
	heroku create
	git push heroku master
	heroku open

## No really, what does this thing do?

It's a Sinatra app that simply prints the truth, and somehow manages to be deployable to Heroku.

## That's not really helpful.

I'm not a very helpful person.

## But seriously now.

Go to the app's URL (either `http://localhost:9292` or whatever pseudophilosophical-nonsensical tree name Heroku gave you) after running the above commands.  It will default to printing a truth about Heroku.

You can append a single argument (any argument you want) to the end of that URL, and it'll print a truth about that argument.  For example, `http://localhost:9292/foo` will print a truth about `foo`.

## But what is this "truth" you speak of?  I don't understand!

Run the dang app for yourself and you'll find out.

## But *why* does Heroku suck?

Read the commit logs, where I document my observations about Heroku.

## Does Heroku really suck?

Depends on your perspective.  This isn't exactly a serious app, so taking it seriously probably isn't exactly wise (if you think it is, feel free to pass your name as a parameter to the app to discover what I probably think of you).

## Why does this app exist?

Because Heroku sucks.

More seriously, because I wanted some way to familiarize myself with Heroku, and what better way than assuming that Heroku is crap and letting it prove itself to be something at least slightly better than crap?

(Hint: so far, Heroku's not really doing a particularly good job of proving itself to be something at least slightly better than crap.)
