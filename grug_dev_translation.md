# The Grug Brained Developer - English Translation
A guide to thinking like a software engineer, translated to plain english from [https://grugbrain.dev/](https://grugbrain.dev/)

# Introduction
A collection of thoughts on software development gathered by a software developer

I'm not very smart, but I have been in the field a long time and have learned some things. However, the field is still rapidly changing.

I've tried to collect my learnings into a small, easily digestible and funny page, not only for you, a software engineer earlier in your career, but also for myself, because as I age I start to forget important things, like what I had for breakfast or whether or not I put my pants on.

There are many intelligent developers who may not like this, or may disagree with parts of this.

However, many more who THINK they are intelligent developers, who actually probably are not, probably won't agree with this.

(I used to think I was intelligent, but I learned the hard way I am not)

It's fine!

It's a free country, and at the end of day it doesn't really matter, but I hope you enjoy this. I have made many mistakes over my career.

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

# TODO: Chesterton's Fence
wise grug shaman chesterton once say

here exists in such a case a certain institution or law; let us say, for the sake of simplicity, a fence or gate erected across a road. The more modern type of reformer goes gaily up to it and says, “I don’t see the use of this; let us clear it away.” To which the more intelligent type of reformer will do well to answer: “If you don’t see the use of it, I certainly won’t let you clear it away. Go away and think. Then, when you can come back and tell me that you do see the use of it, I may allow you to destroy it.”

many older grug learn this lesson well not start tearing code out willy nilly, no matter how ugly look

grug understand all programmer platonists at some level wish music of spheres perfection in code. but danger is here, world is ugly and gronky many times and code also must so be

humility not often come big brained or think big brained easily or grug even, but grug often find "oh, grug no like look of this, grug fix" lead many hours pain grug and no better or system worse even

grug early on in career often charge into code base waving club wildly and smash up everything, learn not good

grug not say no improve system ever, quite foolish, but recommend take time understand system first especially bigger system is and is respect code working today even if not perfect

here tests often good hint for why fence not to be smashed!

Microservices
grug wonder why big brain take hardest problem, factoring system correctly, and introduce network call too

seem very confusing to grug

Tools
grug love tool. tool and control passion what separate grug from dinosaurs! tool allow grug brain to create code that not possible otherwise by doing thinking for grug, always good relief! grug always spend time in new place learning tools around him to maximize productivity: learn tools for two weeks make development often twice faster and often have dig around ask other developers help, no docs

code completion in IDE allow grug not have remembered all API very important!

java programming nearly impossible without it for grug!

really make grug think some time

good debugger worth weight in shiney rocks, in fact also more: when faced with bug grug would often trade all shiney rock and perhaps few children for good debugger and anyway debugger no weigh anything far as grug can tell

grug always recommend new programmer learn available debugger very deeply, features like conditional break points, expression evaluation, etc

grug say never be not improving tooling

Type Systems
grug very like type systems make programming easier. for grug, type systems most value when grug hit dot on keyboard and list of things grug can do pop up magic. this 90% of value of type system or more to grug

but beware big brains here!

some type big brain think in type systems and talk in lemmas, can be very dangerous!

big brain type system shaman often say type correctness main point type system, but grug note big brain type system shaman not often ship code. grug suppose code never shipped is correct, in some sense, but not really what grug mean when say correct!

also danger abstraction too high, and big brain code become astral projection of platonic generic turing model of computation into code base. grug confused and agree some level very elegant but also very hard do anything like record number of club inventory for Grug Inc. task at hand

generics especially dangerous here, grug try limit generics to container classes for most part where most value add

temptation generics very large is trick! spirit demon complex love this one trick! beware!

always most value type system come: hit dot see what grug can do, never forget!

Expression Complexity
grug once like to minimize lines of code much as possible. write code like this:

  if(contact && !contact.isActive() && (contact.inGroup(FAMILY) || contact.inGroup(FRIENDS))) {
    // ...
  }
over time grug learn this hard debug, learn prefer write like so:

  if(contact) {
    var contactIsInactive = !contact.isActive();
    var contactIsFamilyOrFriends = contact.inGroup(FAMILY) || contact.inGroup(FRIENDS);
    if(contactIsInactive && contactIsFamilyOrFriends) {
        // ...
    }
  }
grug hear screams from young grugs at horror of many line of code and pointless variable and grug prepare defend self with club

club fight start with other developers attack and grug yell: "easier debug! see result of each expression more clearly and good name! easier understand conditional expression! EASIER DEBUG!"

definitely easier debug and once club fight end calm down and young grug think a bit, they realize grug right

grug still catch grug writing code like first example and often regret, so grug not judge young grug

Closures
grug like closures for right job and that job usually abstracting operation over collection of objects

grug warn closures like salt, type systems and generics: small amount go long way, but easy spoil things too much use give heart attack

javascript developers call very special complexity demon spirit in javascript "callback hell" because too much closure used by javascript libraries very sad but also javascript developer get what deserved let grug be frank

Logging
grug huge fan of logging and encourage lots of it, especially in cloud deployments. some non-grugs say logging expensive and not important. grug used think this way no more

funny story: grug learn idol rob pike working on logging at google and decide: "if rob pike working on logging, what grug do there?!?" so not pursue. turn out logging very important to google so of course best programmer work on it, grug!

don't be such grug brain, grug, much less shiney rock now!

oh well, grug end up at good company anyway and rob pike dress habit increasingly erratic, so all work out in end, but point stand: logging very important!

grug tips on logging are:

log all major logical branches within code (if/for)
if "request" span multiple machine in cloud infrastructure, include request ID in all so logs can be grouped
if possible make log level dynamically controlled, so grug can turn on/off when need debug issue (many!)
if possible make log level per user, so can debug specific user issue
last two points are especially handy club when fighting bugs in production systems very often

unfortunately log libraries often very complex (java, why you do?) but worth investing time in getting logging infrastructure "just right" pay off big later in grug experience

logging need taught more in schools, grug think

Concurrency
grug, like all sane developer, fear concurrency

as much as possible, grug try to rely on simple concurrency models like stateless web request handlers and simple remote job worker queues where jobs no interdepend and simple api

optimistic concurrency seem work well for web stuff

occasionally grug reach for thread local variable, usually when writing framework code

some language have good concurrent data structure, like java ConcurrentHashMap but still need careful grug work to get right

grug has never used erlang, hear good things, but language look wierd to grug sorry

APIs
grug love good apis. good apis not make grug think too much

unfortunately, many apis very bad, make grug think quite a bit. this happen many reasons, here two:

API creators think in terms of implementation or domain of API, rather than in terms of use of API
API creators think too abstract and big brained
usually grug not care too deeply about detail of api: want write file or sort list or whatever, just want to call write() or sort() or whatever

but big brain api developers say:

"not so fast, grug! is that file open for write? did you define a Comparator for that sort?"

grug find self restraining hand reaching for club again

not care about that stuff right now, just want sort and write file mr big brain!

grug recognize that big brain api designer have point and that sometime these things matter, but often do not. big brain api developers better if design for simple cases with simple api, make complex cases possible with more complex api

grug call this "layering" apis: two or three different apis at different level complexity for various grug needs

also, if object oriented, put api on thing instead of elsewhere. java worst at this!

grug want filter list:

"Did you convert it to a stream?"

fine, grug convert to stream

"OK, now you can filter."

OK, but now need return list! have stream!

"Did you collect it in a list?"

grug hand reaching for club yet again, control

put common thing like filter() on list and make return list big brain java api developer!

nobody care about "stream" or even hear of "stream" before, is not networking api big brain! all java developer use list!

Front End Development
some non-grugs, when faced with web development say:

"I know, I'll split my front end and back end codebase up and use a hot new SPA library talking to a GraphQL JSON API back end over HTTP (which is funny because I'm not transferring hypertext)"

now you have two complexity demon spirit lairs

and, what is worse, front end complexity demon spirit even more powerful and have deep spiritual hold on entire front end industry as far as grug can tell

back end developers try keep things simple and can work ok, but front end developers make very complex very quickly and introduce lots of code, demon complex spirit

even when website just need put form into database or simple brochure site!

everyone do this now!

grug not sure why except maybe facebook and google say so, but that not seem very good reason to grug

grug not like big complex front end libraries everyone use

grug make htmx and hyperscript to avoid

keep complexity low, simple HTML, avoid lots javascript, the natural ether of spirit complexity demon

maybe they work for you, but no job post, sorry

react better for job and also some type application, but also you become alcolyte of complexity demon whether you like or no, sorry such is front end life

Fads
grug note lots of fads in development, especially front end development today

back end better more boring because all bad ideas have tried at this point maybe (still retry some!)

still trying all bad ideas in front end development so still much change and hard to know

grug recommend taking all revolutionary new approach with grain salt: big brains have working for long time on computers now, most ideas have tried at least once. grug not saying can't learn new tricks or no good new ideas, but also much of time wasted on recycled bad ideas, lots of spirit complexity demon power come from putting new idea willy nilly into code base

note! very good if senior grug willing to say publicly: "hmmm, this too complex for grug"!

many developers Fear Of Looking Dumb (FOLD), grug also at one time fold, but grug learn get over: important senior grug say "this too complicated and confuse" this make it ok for junior grugs to admit too complex not understand as well! FOLD major source of complexity demon power over developer, especially younger grugs!

take FOLD power away, very good senior grug!

note: important to make thinking face and look big brained when saying though. be prepare for big brain or, worse and much more common, thinks is big brain to make fun. be strong! no fold! club sometimes useful here, but more often sense of humor and especially last failed project by big brain very useful, so collect

Impostor Syndrome
grug note many such impostor feels in development

always grug one of two states: grug is ruler of all survey, wield code club like thor OR grug have no idea what doing

grug is mostly latter state most times, hide it pretty well though

now, grug make softwares of much work and moderate open source success, and yet grug himself often feel not any idea what doing! very often! fear make mistake break everyone code and disappoint other grugs!

is maybe nature of programming for most and be ok with is best, nobody imposter if everybody imposter

any young grug read this far probably do fine in program career even if frustrations and worry is always to be there, sorry

Reads
grug like these:

Worse is Better
A Philosophy of Software Design
Conclusion
complexity very, very bad