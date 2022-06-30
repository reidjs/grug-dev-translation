# The Grug Brained Developer - English Translation
## A guide to thinking like a software engineer, translated to plain english from [https://grugbrain.dev/](https://grugbrain.dev/)

# Introduction
A collection of thoughts on software development gathered by a software developer.

I'm not very smart, but I have been in the field a long time and have learned some things. However, the field is still rapidly changing.

I've tried to collect my learnings into a small, easily digestible and funny page, not only for you, a software engineer earlier in your career, but also for myself, because as I age I start to forget important things, like what I had for breakfast or whether or not I put my pants on.

There are many intelligent developers who may not like this, or may disagree with parts of this.

However, many more who THINK they are intelligent developers, who actually probably are not, probably won't agree with this.

(I used to think I was intelligent, but I learned the hard way I am not)

It's fine!

It's a free country (sort of), and at the end of the day it doesn't really matter, but I hope you enjoy this. I have made many mistakes over my career.

# The Eternal Enemy: Complexity
The worst thing about programming is complexity. 

Complexity is bad.

Said again,

Complexity is very bad.

Now you say it:

Complexity is very, very bad.

Given the choice between complexity or fighting one on one against a T-Rex, I would take the T-Rex: at least I can SEE the T-Rex.

Complexity is a terrible problem that enters the codebase through well-meaning but unintelligent developers and project managers who do not fear the complexity problem or even know about it.

One day the codebase is understandable, and I can get work done, everything's good!

The next day, it's impossible: complexity has entered the code and you're in a very difficult situation!

Even senior developers aren't able to see complexity demon, but they sense its presence in the codebase

Complexity makes it so that if you make a change in one place, it breaks an unrelated thing somewhere else. Still, it is part of the job and better than chasing money by accepting a middle management position.

Standard debugging sometimes doesn't even work on fixing the complexity and you blame other developers for introducing the complexity. Often it turns out to be yourself.

Sadly, often you introduce the extra complexity.

So say it again and say it often: complexity is very, very bad.

# Saying No
The best tool against complexity is learning to say "no."

"No, I will not build that feature."

"No, I wil not build that abstraction."

"No, I will not shower every day or drink less coffee so stop asking."

Note, this is good engineering advice, but bad career advice. "Yes" may help you chase promotion and management opportunities.

It's sad but true, ideal career advice is to learn to say "yes," then blame other people when it fails.

But you must first learn to be a good developer, and "no" is a magic word. It's hard to say at first, especially if you're a nice person and don't like to disappoint people (many people are like this!) but it gets easier over time, even though you might be paid more otherwise.

It's ok: how much money do you really need anyway?

# Saying ok
Sometimes compromise is necessary for the job, and you need your job for food, to take care of your kids, etc. Sometimes management will have no interest in hearing you complain about complexity or the difficulty of the feature and will require you get the job done. 

In this situation, you need to say "ok."

"Ok, I will build that feature."

Then you should spend time to think of an 80/20 solution to the problem and build that instead.
An 80/20 solution is "80% of the feature with 20% of the code." The solution may not have all the bells and whistles that the project manager want, it might be a little ugly, but it works and delivers the most value, and keeps complexity at bay for the most part.

Sometimes it's probably best to not even tell the project manager and do it the 80/20 way. It's easier to beg for forgiveness than to ask for permission. The project managers mind is like a butterfly at times, they are overworked and dealing with many developers. They often forget what the feature is even supposed to do, or move on, quit, or get fired. I've seen it many times before.

It is in the project manager's best interest anyways, so don't feel too bad about taking this approach. 

# Factoring Your Code
This next strategy is harder: break the codebase up properly (factor your code properly). It's hard to give general advice because each system is so different. However, one thing I've come to believe: do not factor your application too early!

Early on in a project everything is very abstract and like water: there are very few solid holds for your brain to hang on to. It takes time to develop the "shape" of the system and learn what it's even doing. Try not to factor in the early part of the project and then, at some point, good cut-points will emerge from the codebase

A good cut point has a narrow interface with the rest of the system: a small number of functions or abstractions that hide the system's complexity.

You will be quite satisfied when you have minimized the system's complexity.

Watch patiently as cut points emerge from the code and slowly refactor, with the codebase taking shape over time along with experience. There is no hard and fast rule for this: you will know a cut point when you see a cut point, just take time to build skill in looking for it, and have patience.

Sometimes you will go in too early and get abstractions wrong, so bias towards waiting longer before refactoring.

Some "big picture" developers do not like this at all and will invent many abstractions at the start of the project.

It's tempting to complain to them, they are not maintaing the code afterall. They should focus on architecture and leave the code for you to deal with. 

But you need to control your passion and stay level-headed.

Instead, try to limit damage of these developers early in a project by distracting them with things like UML diagrams (often throw away anyway) or by asking them to create a working demo.

A working demo is an especially good trick: it forces these "big picture" developers to make something that actually works to talk about and code to look at that do the thing, will help these developers understand the real problem more quickly

You need to harness their "big picture" mentality for good and not allow them to introduce too much complexity into the codebase. I've seen it happen many too many times before.

(The best developers are able to herd many of these "big picture" developers in the right direction, and not get bogged down in complexity, leading to more money!)

Also, it's sometimes a good idea to call a demo a "prototype", it sounds better and may be easier to sell to your project manager

Prototype early in software development, especially if there are many senior engineers/architects on staff. 

# Testing
I have a love/hate relationship with testing: testing has saved me many, many times before and I love and respect tests.

Unfortunately, many "test shamans" exist. Some "test shamans make tests their idol, demanding things like "always test first" before you even write code, or have any idea about the business domain!

how can I write a test when I don't even understand the problem or business domain!?

They say, "Oh, don't worry: the tests will show you what you need to do."

This is infuriating, but stay calm.

Instead, write tests after the prototyping phase, when code has begun to prove itself.

But, take note: you must be very disciplined!

It's easy to move on and not write tests because it "works on your machine"!

This is very, very bad: there's no guarantee it will work on other people's machines and no guarantee it will work on your machine in the future. This has happened to me many times before.

"Test shamans" have a good point on the importance of tests, even if sometimes they don't ship a useful feature in their life and only talk about testing all time. They need to learn more, but their heart is in the right place.

Also, "test shamans" often talk about unit tests a lot, but sometimes these are not so useful. In my experience the ideal tests are neither full unit test coverage nor full end-to-end test coverage, but somewhere in-between.

Unit tests are fine, but often break and make refactoring hard at the beginning as APIs change and, frankly, they don't catch many bugs, and are often thrown away when code changes. Write unit tests at the start of project to get things going, but don't get too attached.

End to end tests are good, they show how the whole system works, but are hard to understand when they break and sometimes drive me crazy, to the point where I end up ignoring them because "oh, that test breaks all time!" This is very bad. 

In-between tests, often called "integration tests" sometimes annoy me. But integration tests are the sweet spot: high level enough to test the correctness of the system, but low level enough to see what breaks (with a good debugger).

I prefer some unit tests at the start, but not 100% code coverage. I more focus more on integration tests as cut points emerge and the system stabilizes! Also small, curated end-to-end test suites (smoke tests?) that keep the system working. Focus end-to-end tests on the most common UI features and a few of the most important edge cases, but not too many, or it will become impossible to maintain.

This is the ideal set of tests in my opinion.

You may disagree, but this is the best form of testing in my opinion. 

Also, I think mocking tests are not valuable and if you must only do "coarse grain" mocking.

# Agile
I have mixed feelings about agile.

At the end of the day, it's not the worst way to organize development, and it's better than many other ways.

Agile fanatics are dangerous! Lots of money has been lost to agile fanatics!

Whenever a project fails, agile fanatics say "you didn't do agile right!" This is awfully convenient for the agile fanatic, because they will ask for more money to better agile train young developers on agile.

It's easy to lose your cool when too much agile talk is happening, but stay calm. 

Prototyping, tooling and hiring good developers is they key to building good software: the agile process is ok and helps some, but can impede progress if taken too seriously.

# Refactoring
Refactoring is fine and often a good idea, especially later in project when the code has firmed up.

However, many times in my career, "refactors" have gone horribly off track and cause more harm than good.

I'm not sure exactly why some refactors work well, some fail, but the larger the refactor, the more likely failure will occur.

So try to keep refactors relatively small and never be "too far out from shore" during a refactor. Ideally, the system will work the entire time, and you will finish each step before the next begins.

End-to-end tests are a life saver here, but it is often very hard understand why they broke after changing something... such is refactoring.

Also I have noticed that introducing too much abstraction often leads the refactor to fail. A good example was the J2EE introduction, many "big brained" developers sat around thinking too much about abstraction, and nothing good came of it.

Another good example is when a company I worked for introduced OSGi to help manage complexity in the codebase. Not only is OSGi not much help, but it increased our codebase's complexity! It took multiple man years of our best developers to rework it as well! The increased complexity made new features impossible to implement! This is very bad!

# Chesterton's Fence
A wise developer named Chesterton once said:

"Here exists in such a case a certain institution or law; let us say, for the sake of simplicity, a fence or gate erected across a road. The more modern type of reformer goes gaily up to it and says, “I don’t see the use of this; let us clear it away.” To which the more intelligent type of reformer will do well to answer: “If you don’t see the use of it, I certainly won’t let you clear it away. Go away and think. Then, when you can come back and tell me that you do see the use of it, I may allow you to destroy it.”

Many older developers learn this lesson to not start tearing code out willy-nilly, no matter how ugly it looks.

All "programmer platonists" at some level wish for perfection in code. But there's danger here, the world is ugly and imperfect and many times and code must also be. 

Humility does not come easily, but I often find "oh, I don't like the look of this, I'll fix it" leads to many hours of pain, no improvements, and makes the system worse.

I learned early on in my career that charging into the codebase making drastic changes and trying to fix everything is not a good idea.

I'm not saing never improve the system, that's quite foolish, but I recommend taking some time to understand the system first, especially if the system is big and always respect code working today, even if it's not perfect.

Here, tests are often a good hint for why you should not smash the fence!

# Microservices
I wonder why some "big brain" developers take the hardest problem, factoring the system correctly, and introduce a network call between subsystems.

Seem very confusing to me.

# Tools
I love tooling. Passion for tooling and control separate us from the dinosaurs! Tooling allows us to create code that would not be possible otherwise by doing some of the thinking for us! I always spend time in a new place learning the tools to maximize productivity: learn tools for two weeks to make development twice as fast and avoid having to dig around asking other developers for help or consulting documentation.

Code completion in IDE allows you to not remember the entire API, this is very important!

Java programming is nearly impossible without it!

It really makes me think sometimes.

A good debugger is worth its weight in gold, maybe even more: when faced with a bug, I would often trade all my money and perhaps a few children for a good debugger. Anyways, a debugger doesn't weigh anything as far as I can tell.

I recommend new programmers learn their available debugger very deeply, features like conditional break points, expression evaluation, etc.

Always be improving your tooling.

# Type Systems
Type systems make programming easier. Type systems are most valuable when you hit the period key on your keyboard and it lists all the relevant methods, like magic. This attributes 90% of the value a type system gives you. 

But beware of "big brains" here!

Some "big brains" think in type systems and talk in lemmas, which can be very dangerous!

"Big brain type-system shamans" will say that type correctness is the main point of the type system, but note these developers rarely ship code. Code never shipped is correct, in some sense, but not that's not really the point!

There is a danger of over-abstraction here, and "big brain" code becomes too detached from reality. This can be difficult to understand, on some level it is very elegant, but it becomes hard to do basic things like track inventory, or solve the task at hand. 

Generics are especially dangerous here, try to limit generics to container classes for most part where they add the most value. 

Beware the temptation of generics! They can add a lot of complexity! Beware!

Never forget that most of the value of the type system comes from hitting period to see what you can do.

# Expression Complexity
I used to minimize lines of code much as possible. I would write code like this:

  ```
  if(contact && !contact.isActive() && (contact.inGroup(FAMILY) || contact.inGroup(FRIENDS))) {
    // ...
  }
  ```

Over time I learned this was hard to debug, so now I prefer to write like so:

```
  if(contact) {
    var contactIsInactive = !contact.isActive();
    var contactIsFamilyOrFriends = contact.inGroup(FAMILY) || contact.inGroup(FRIENDS);
    if(contactIsInactive && contactIsFamilyOrFriends) {
        // ...
    }
  }
```

Junior developers will complain about excessive lines of code and pointless variables you must be prepared to defend the code. 

Explain that it makes the code easier to debug, you see the result of each expression more clearly, it is easier to understand the conditional, and it's EASIER TO DEBUG!

Once they realize it is definitely easier to debug they will realize you are right.

I still catch myself writing code like the first example and often regret it, so don't judge junior developers.

# Closures
Closures are good for abstracting operations over collections of objects.

Closures are like salt, type systems, and generics: a small amount goes a long way, but it's easy to spoil things from overuse.

JavaScript developers can fall into "callback hell" from too many closures used by javascript libraries. It's very sad, but they get what they deserve to be frank.

# Logging
I'm a huge fan of logging and encourage lots of it, especially in cloud deployments. some people say logging is expensive and not important. I used think this way, but not any more.

Funny story: I learned my idol [Rob Pike](https://en.wikipedia.org/wiki/Rob_Pike) was working on logging at Google and decided: "If Rob Pike is working on logging, what would I do there?!?" so I didn't pursue that career choice. It turns out logging is very important to google, so of course one of their best programmers work on it!

Don't be such "grug brain," I could have made much more money if I had worked at Google!

Oh well, I ended up at a good company anyways, and Rob Pike's fashion style became increasingly erratic, so it all worked out in the end, but my point stands: logging is very important!

My tips on logging are:

1. Log all major logical branches within code (if/for)
2. If a "request" spans multiple machines in cloud infrastructure, include the request ID in all of them so logs can be grouped.
3. If possible, make log level dynamically controlled, so you can turn on/off when needed to debug an issue.
4. If possible, make log level per user, so you can debug specific user issues.
The last two points are especially handy when fighting bugs in production systems.

Unfortunately, log libraries are often very complex (e.g., in Java), but it is worth investing time in getting logging infrastructure "just right." It will pay off big later in my experience

Logging needs to be taught more in schools, I think.

# Concurrency
I, like all sane developers, fear concurrency.

As much as possible, I try to rely on simple concurrency models like stateless web request handlers and simple remote job worker queues where jobs do not interdepend on each other and have a simple API.

Optimistic concurrency seems to work well for web stuff.

Occasionally I thread local variables, usually when writing framework code.

Some languages have good concurrent data structures, like Java's ConcurrentHashMap, but still need to be careful to get it right.

I have never used Erlang, I hear good things, but the language looks weird to me, sorry.

# APIs
I love good APIs. Good APIs allow me to think less.

Unfortunately, many APIs are very bad, and make me think quite a bit. This happens for many reasons, here are two:

API creators think in terms of implementation or their API domain, rather than how the API will be used.
API creators think too abstractly and are "big brained"
Usually I don't care about the details of the API: I want to write files or sort a list, or whatever, i.e., I just want to call write() or sort().

But "big brained" API developers say:

"not so fast! Is that file open for write? Did you define a Comparator for that sort?"

I have to restrain myself.

I do not care about that stuff right now, I just want to sort and write to the file!

I recognize that "big brain" API designers have a point, and sometimes these things matter, but often they do not. It's better to design simple cases to work with a simple API and make complex cases possible with a more complex API.

I call this "layering" APIs: two or three different apis at different level complexity for various devleopment needs.

Also, if it's object oriented, put the API on the object instead of somewhere else. Java is the worst at this!

For example, let's say I want to filter a list:

"Did you convert it to a stream?"

Fine, I'll convert it to a stream.

"OK, now you can filter."

OK, but now need a return list! Have a stream!

"Did you collect it in a list?"

At this point I'm starting to lose my temper, but stay calm.

Put a common thing like filter() on a list and make it return a list!

Nobody cares about a "stream" or has even heard of a "stream" before, it's not a networking API! All java developers use lists!

# Front End Development
Some less experienced developers, when faced with web development say:

"I know, I'll split my front end and back end codebase up and use a hot new SPA library talking to a GraphQL JSON API back end over HTTP (which is funny because I'm not transferring hypertext)"

Now you have two additional sources of complexity.

And, what's worse, front end complexity is very bad and has a hold on the entire front end industry as far as I can tell.

Back end developers try keep things simple and can work ok, but front end developers add complexity very quickly and introduce lots of useless code.

Even when websites just need to put a form into a database or are a simple brochure website!

Everyone does this now!

I'm not sure why, except maybe because facebook and google say so, but that doesn't seem like a very good reason to me.

I do not like big complex front end libraries that everyone uses.

To avoid this, I use [htmx](https://htmx.org/) and [hyperscript](https://hyperscript.org/) mainly.

Keep complexity low, use simple HTML, avoid lots of javascript.

Maybe they work for you, but there are no job postings, sorry.

React is better for finding a job and for certain types of applications, but also you succumb to complexity whether you like it or not, sorry, such is front end life.

# Fads
There are lots of fads in development, especially in front end development today.

Back end is better, it's more boring because all the bad ideas have already been tried at this point, maybe (still, we should retry some!)

They are still trying all the bad ideas in front end development, so there's still a lot of change and it's hard to know what to do. 

I recommend taking all revolutionary new approaches with a grain of salt: "big brains" have been working on computers for a long time now, most ideas have been tried at least once. I'm not saying we can't learn new tricks or there are no good new ideas, but so much time is wasted on recycled bad ideas, lots of complexity comes from putting new ideas willy nilly into your codebase.

Note: it's very good if senior developers are willing to publicly say: "hmmm, this is too complex for me!"

Many developers have a Fear Of Looking Dumb (FOLD), I also at one time suffered from FOLD, but learned to get over it: It's important that senior developers say "this is too complicated and confusing," this makes it ok for junior developers to admit it's too complex not understandable as well! FOLD can cause unnecessary complexity to enter your code, and is especially dangerous for younger developers.

A very good senior developer will take FOLD's power away.

Note: it's important to make a "thinking face" and look "big brained" when admitting you don't understand something. Be prepareed for a "big brain" or someone who thinks they are a "big brain" to make fun of you. Be strong! no FOLD! It's important to have a sense of humor, especially if you can point to the last failed project by "big brain," so collect these. 

# Impostor Syndrome
Often times, you will feel like an impostor during software development.

You are usually in one of two states: I'm the ruler of all I survey, wielding a code club like thor OR I have no idea what doing

I'm in the latter state most times, but I hide it pretty well.

Now, I have made much working software and have had moderate open source success, yet I often feel like I have no idea what I'm doing! Very often! I fear I'll make a mistake and break everyone's code and disappoint other developers!

Maybe it's the nature of programming for the most part and being ok with that is best, nobody's an imposter if everybody's an imposter.

Any young developer who has read this far probably will do fine in a programming career even if frustrations and worry will always be there, sorry.

# Reads
I like these:

- Worse is Better
- A Philosophy of Software Design

# Conclusion
Complexity is very, very bad.
