--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying(255),
    body text,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    picture_file_name character varying(255),
    picture_content_type character varying(255),
    picture_file_size integer,
    picture_updated_at timestamp without time zone
);


ALTER TABLE public.posts OWNER TO brandonchu;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: brandonchu
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO brandonchu;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: brandonchu
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: brandonchu
--

SELECT pg_catalog.setval('posts_id_seq', 36, true);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO brandonchu;

--
-- Name: users; Type: TABLE; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    password_digest character varying(255),
    remember_token character varying(255),
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO brandonchu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: brandonchu
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO brandonchu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: brandonchu
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: brandonchu
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: brandonchu
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: brandonchu
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: brandonchu
--

COPY posts (id, title, body, user_id, created_at, updated_at, picture_file_name, picture_content_type, picture_file_size, picture_updated_at) FROM stdin;
33	<h1>Learning to Code Update</h1>	<p>So, I haven’t been as diligent as I’d like due to busy times at the office, but there’s been some progress.  I started out as beginner as can be, I never even learned basic html in school.</p>\r\n<br>\r\n<p>I decided to start with Codeacademy’s “Year of Code” program which takes users through entry level understanding of Javascript, html/css, python, and some ruby.  My strategy is to finish that, then do deeper level course work in javascript via Treehouse.  I figure javascript is a safe bet, and afterwards I can figure out whether to move to front-end or server side.  The Year of Code doesn’t really take a year but it’s an interesting base for a complete newb.  Progression hasn’t been bad, I started about four months ago and I’m 80% done and hoping I can finish it all before February.  It’s been challenging at times, but I definitely appreciate the learn by doing approach that Codeacademy employs.</p>\r\n<br>\r\n<p>One thing I’ve realized about how to learn is that with code it’s better to find a good 3-4 hours and dedicate yourself to it than to do 1 hr per day.  If you do 1 hr a day, as a beginner you’ll find yourself wasting too much time remembering syntax (how to write commands in that particular language) over and over again, whereas with a block of time you’ll get over that in 30 min and be done with it for the rest of the session.  This gives you more time to get into what I think really matters, which is more about the conceptual framework of programming.  I’m not talking about abstract computer science theorem, I’m talking more about how to think like a computer.  One of the biggest hurdles is to un-bias oneself from the human brain’s use of context when interpreting anything.  A computer reads the code from start to end and acts exactly as it’s told, there is no intuition, no assumptions, and no learning involved like in a human brain.  </p>\r\n<br>\r\n<p>The other thing is that you gotta write code you can see working, and you need to see it working continuously.  Test everything as soon as you build it and before you move on.  There’s so many nuances in code that change it’s behaviour that if you don’t test repeatedly you’ll be hard pressed to truly understand how the code is being interpretted.    </p>\r\n<br>\r\n<p>I’ve been doing is just getting more involved with the product team, and seeing where I can help.  Unfortunately, I basically “can’t help”, but I chip in where I can, and it brings value by just being in real production quality code.  What I can do:</p>\r\n\r\n- Copy Changes\r\n\r\n- Simple (dead simple) styling changes\r\n\r\n- Small additions to user-specific conditionals\r\n\r\n- console commands to change user information/access\r\n\r\nI’ve broken the site twice, both times because my text editor had not set the tab button to indent by two-spaces.  Total downtime was maybe 1 minute combined thanks to a wonderful time travel option in Heroku (our server management platform) which saved my ass when the engineers were on vacation.\r\n\r\nI’ve gotten pitying looks from the dev team from some of my code contributions, which basically say “Brandon, I appreciate the effort but what you just submitted is beyond retarded, please stop.”\r\n\r\nDespite the slow progress, it is empowering to know that it is not impossible.  The feeling of being able to build something, even something as stupid as a program that plays blackjack, is empowering and something I never quite got to feel in my native line of work.  The impact it’s had on my product management ability has been very positive as well but that’s another post.\r\n\r\n\r\nI know that what I have to do now is step it up and put in some long nights and start building projects that have definite goals.  There such a difference between understanding how a piece of code works by looking at it, and having the knowledge to build it from scratch.  \r\n\r\nWish me luck.	\N	2013-05-08 22:25:03.40414	2013-05-09 15:17:50.676864	computer_guy.jpg	image/jpeg	657363	2013-05-09 15:17:49.417268
28	<h1>Like Curiosity, after a long journey it’s time to land.</h1>	<p>I’m at the tail-end of my honeymoon - which has been wonderful - and while watching the Curiosity rover land during my Dublin layover,  I’ve just realized that this marks the end of the most transformative year of my life.  This is the first time I’ve written a blog in a couple of years, but it feels like a good time as any for some reflection.</p>\r\n<br>\r\n<p>(People love talking about themselves, eh?  Apologies in advance.)</p>\r\n<br>\r\n<p>Within the last 12 months, I started a company, got engaged, consistently worked two jobs, almost moved to the US for work, got promoted at my office job, quit that job two months later, got my CMA designation, got married, moved out again, and lost a couple year’s salary in the stock market.</p>\r\n<br>\r\n<p>What made it a truly extraordinary year on a personal level, was that I did most of those things at the same time, for nearly the entire time.</p>\r\n<br>\r\n\r\n<p><b>In 2010, my typical week’s commitments were:</b></p>\r\n<br>\r\n<p>Mon to Fri</p><br>\r\n&bull; Work 9:30-4 (oh yea, you read that right)<br>\r\n&bull; Sunday <br>\r\n&bull; Church<br>\r\n&bull; By Jan 2012, my typical week’s commitments were:<br>\r\n<br>\r\n<p>Mon - Fri:</p><br>\r\n&bull; Work 8:30-6 (promotion = more work)<br>\r\n&bull; Tunezy 6:30-10 <br>\r\n&bull; CMA 10-12 once a week<br>\r\n&bull; Saturday <br>\r\n&bull; CMA 8 hours<br>\r\n&bull; Tunezy 4 hours<br>\r\n<br>\r\n<p>Sunday</p><br>\r\n&bull; Wedding stuff & church 6 hours<br>\r\n&bull; Tunezy 4 hours<br>\r\n&bull; Kraft work 2 hours<br>\r\n<br>\r\n<p>Since then I’ve slowly shed off layers at a time.  I left Kraft in April, CMA concluded in July, and the wedding was two weeks ago.  My former self would have thought it impossible that I would even try to manage all of that, because I have enough self awareness to admit whole heartedly that I am by nature lazy-as-fuck.</p>\r\n<br>\r\n<p>I don’t know what enabled me to keep any sanity, save for the effect of having so much pressure that I didn’t have the time to crack.  But I do know what compelled me to try - it was simply the fear of regret.  I got my first inklings of ambition far too late in life (post-uni), and from that I learned the burn of regret first hand.  Sometime over the past year I committed myself, not to become be some great success (whatever that means), but to pushing myself to either failure or success.  A very big failure or success, at that.</p>\r\n<br>\r\n<p>I did this because I firmly believe that life is 50% luck, and that you cannot judge yourself on outcomes alone, but rather on what you can control - your effort.  I judge myself on that when I look in the mirror and know instantly if I’ve really tried, because you can’t life to yourself.  I can say at this point, that I’ve tried harder, but no, I have not given it my all.  I’ve learnt that it is impossibly hard to give it your all, all the time.  I am just not strong enough, and work ethic like that is something you have to build over many years.</p>\r\n<br>\r\n<p>I’d say the most difficult part of juggling this past year was the effect it had on concentration.  Having so many extremely important stresses constantly in your head simply lowers your performance and weighs on you.  It affects your relationships as well - any of the close people around me can tell you I’ve been constantly distracted, often falling into a trance staring at the ground with an intense stare.  I thank them all for understanding and supporting me.  My health has suffered, I have maybe 10x more greys, my haircut makes me cringe every now and then, but at the same time - I’m probably happier than I’ve ever been in my adult life.</p>\r\n<br>\r\n<p>I’m so excited to come home, where I can put down that final juggling ball, and focus exclusively on just two things - the people in my life and Tunezy.  Man, just re-reading that last sentence has filled me with a wave of zen-like gangsterness.</p>\r\n<br>\r\n<p>More bloggage to come,</p>\r\n<br>\r\nBC	\N	2013-05-08 20:28:37.445126	2013-05-08 22:31:15.937226	wedding.jpg	image/jpeg	467199	2013-05-08 20:28:35.337742
29	<h1>My first “what I’ve learned in a startup” post</h1>	<p>It’s been an incredible 8 months building Tunezy.</p>\r\n<br>\r\n<p>In January, we were literally a powerpoint deck and we worked out of a living room for three months.  Every morning, my co-founder Derrick’s dad would wake up, walk to the kitchen and see random people litered all over his house, doing stuff that could only appear even more random.  From the team, thank you to Derrick’s family for their hospitality.  We have an office now, and although the team has grown a bit, I still feel we have that living room mentality.</p>\r\n<br>\r\n<p>What I’ve learnt in that time has easily eclipsed everything I’ve learnt in the last 4 years of my life, maybe the last 10.  I’ve learnt about technology and the music industry, teamwork, leadership, business, and most importantly - I’ve re-learnt curiosity and that no matter how old I feel, I’m still capable of learning completely new things (yes I know I sound 50, but corporate can do that to you!).  Here’s the Coles notes of what I’ve learnt.</p>\r\n<br>\r\n<p><b>On Technology</b> - Diving into this has been one of the most fascinating awakenings of my life.  Prior to Tunezy, I played my fair share of PC games and was fairly active on social, but I never paid attention to the tech scene that was driving this to me.  What I am now very aware of is the sheer pace of innovation, not just in the valley, but all over the world.  There is a global push to digitize and mobilize anything and everything.  It’s changing how we interact with the world, it’s changing our psychology.  One of the most important skills to have in this environment - which unfortunately I don’t have - is to be able to interact with and build this technology.  The demand for software engineers is through the roof, as you simply can’t execute any ideas anymore without having a web presence, and you can’t build a competitive web presence without an engineer.</p>\r\n<br>\r\n<p><b>On starting up, a startup</b> - The interesting thing is that one of the lasting impacts from previous startups (now giants) like amazon, paypal, etc. is that they have actually made it exponentially easier for newer startups to operate.  A simple example is servers.  Whereas before someone had to cough up substantial cash to purchase a physical server, you can now leverage cloud servers (i.e. buy bandwidth on the server networks of giants) and scale up by simply turning a knob on a website.  Not only is it cheaper, it’s also more effective since you are using state-of-the-art server networks, so that even a startup can provide website speed to its users that is world class.  Same goes for open source code enabling faster product building, e-commerce solutions allowing fast and simple monetization, and analytics tools being easy to integrate and critical in decision making.</p>\r\n<br>\r\n<p><b>On teamwork</b> - Nothing surprising or eye-opening, but the experience again has just reinforced the value of a strong team.  Most of us are on life-support salaries, or for Derrick and I nothing at all, and from it we all have a great attitude because we know why we’re here and what we’re working towards. Darren and Rahil, our original developers, are the core of the development team and have built it all from scratch.  They are relentless, have a great attitude, and make me believe that they can build anything (I think they believe it too).  Gloria is an absolute hustler, and has opened my eyes to a different way of thinking about the value of community.  Soheil is new to the team, but has already shown me great insights into thinking about UX and how UX should drive most if not all product decisions.  Derrick is an absolute animal - I’ve never seen someone so motivated, aggressive, and fearless as him when it comes to business.  It’s not always easy working with a co-founder, especially when we’re both on the business side, but I think now more than ever him and I have found a groove.</p>\r\n<br>\r\n<p><b>On leadership</b> - Not easy.  I think the first step is accepting that you are nothing without your team.  After that, your priorities and management style will have the right intentions.  With the constant ups and downs of a startup, it can be easy to lose control and show frustration, but I believe fighting that tendency is one of the most important elements in good leadership.  People need to feel your confidence, they need to know you understand the depth of what you’re asking them to do, and they need to know you give a shit about them.  The simplest way I found to do this is, respectively: i. tie your confidence to the team’s ability to problem solve, not any one solution,  ii. learn about their work (contribute if possible) and what it takes to get it done, iii. actually give a shit.  This topic will take a lifetime to learn.</p>\r\n<br>\r\n<p><b>On business</b> - Being a bba grad, having worked in FP&A/Sales Finance at Kraftfoods for 4 years, and having a CMA, I thought I wouldn’t learn as much here as opposed to simply applying current strengths.  But as theme of this post has already shown, I knew nothing.  Dealing with the legal aspect has been eye-opening - incorporation, subscribing investors, issuing options, filing patents, forming partnership agreements, contracts, and understanding copyright law has shown me both the necessity of a lawyer, and has added another layer of complexity into future strategic decision making.  The second thing I’ve learned is that, broadly, finance is not really a value adding business function, it only exists from necessity.  Product development, sales, and to a lesser extent marketing, drive real business value.  Finance is worth investing in once you’re well established and have scale, but at that point it’s value is more about optimization and cost reduction rather than incremental growth.  So at Tunezy, I focus on product and team management, analytics, and business modelling, and think of finance as a just a chore.</p>\r\n<br>\r\n<p><b>On learning</b> - After 20 years in school, and another 3 getting a designation, I was tired of learning.  At least that’s what I thought before I realized it’s just because I was bored.  I’ve learnt that now more than ever you have to keep learning, both to maintain job security in the long run, and (more importantly) to give yourself the opportunity to get true satisfaction in your work.   Over the last 8 months, I’ve learnt a lot about product management and managing a development team - completely black boxes to me before.  In addition to those, I’m now committing myself to learning how to code.  I have no idea where it will take me, how long it will take (expectation: long), or how hard it will be (expectation: very), but all I know is that no matter what happens I will be better off.  Either I excel at it and can eventually build software myself, or I am shit at it, but can now speak to a development team with greater authority and understanding of the technical obstacles.</p>\r\n<br>\r\n<p>I’ll be back with some more posts in the months to come, not sure what yet but stay tuned!</p>\r\n<br>\r\nBC	\N	2013-05-08 20:42:33.081094	2013-05-08 22:31:30.651915	plant-startup.jpg	image/jpeg	154573	2013-05-08 20:43:33.027207
34	<h2>“Experience enables you to recognize a mistake when you make it again.” <br><p style="text-align:right"> - Franklin P Jones</p></h2>	 	\N	2013-05-08 22:30:29.162262	2013-05-09 15:20:01.360908	scenery-mountain.jpeg	image/jpeg	142740	2013-05-08 22:45:13.854611
36	<h2>“Since our primary competitors are national governments, the enforceability of patents is… questionable.” <br><p style="text-align:right">- Elon Musk</p></h2>	 	\N	2013-05-08 22:42:18.119358	2013-05-09 15:20:11.617626	1dragon-launch2.jpg	image/jpeg	79159	2013-05-08 22:42:16.82632
32	<h2>“The secret to creativity is knowing how to hide your sources.” <p style="text-align:right">— Einstein</p></h2>	 	\N	2013-05-08 21:33:33.039761	2013-05-09 15:20:21.136745	hi-albert-einstein-852-1324.jpg	image/jpeg	64920	2013-05-08 21:33:32.130613
30	<h1>On Product Management</h1>	<p>Shortly after starting Tunezy I realized that the only transferable skills I had from my previous life were project management, people management (mostly from being managed), and financial analysis.  When I compared that against what needed to be done in an early stage startup - namely write code and sell - I knew that my biggest asset to the company would be how fast I could learn.</p>\r\n<br>\r\n<p>I quickly found myself using 80% of my time leading the product team, and for all intents and purposes that is my real role at this company.  For the uninitiated, a product team comprises of software developers, designers, and a product lead, and is the core group in a startup.  The product lead translates the vision of the company and the needs of the consumer into a product vision.  The designer translates this product vision into an intuitive, beautiful, and functional interface (no easy task).  The software developers make the shit work, because it’s all pretty pictures and diagrams until real code is hacked.</p>\r\n<br>\r\n<p>As a co-founder, I’m in an advantageous position because nothing from the vision ever gets lost in translation, and I can make decisions unilaterally when I need to.  We didn’t always have this team; the current Tunezy website you see, although much loved by our team, was designed by an (awesome) agency before we had our own designer; and frankly, before we really gelled as a team and understood how to build our vision.</p>  \r\n<br>\r\n<p>We’re going to be launching a new version of the website in a month, and we’re excited to unveil something that we truly owned from concept to reality.  It’s been some of the most fulfilling work I’ve ever done leading the build of this new version, and I have to thank my product team for bearing with me while I learnt on the fly how to better translate a product vision and customer need.  50% of my product building knowledge I learnt from them, 25% from reading, and 25% is my own opinion.  </p>\r\n<br>\r\n<p>Here’s 10 beliefs on product strategy and team building</p>\r\n<br>\r\n<p>1. Sometimes you have to let go of your long term vision for something practical.  Use the limited time your company has to live to build something that people want.</p>\r\n<br>\r\n<p>2. After you build something of value, then build a path to your vision.  Analogy:  Learn to play an instrument before trying to perform a symphony, even if you have the tune in your head. </p>\r\n<br>\r\n<p>3. Before you write one line of code or one pixel of design - get full alignment from the team on what you’re building.  Spend an entire day, even an entire week, going into every minutiae of the product.  Otherwise you will rebuild it 99% of the time.</p>\r\n<br>\r\n<p>4. Let the team set a timeline.  Now add 30% to that timeline and you’ve got reality.  This goes for small projects to the biggest.  That’s the nature of software.</p>\r\n<br>\r\n<p>5. Work together and work collaboratively, or it will turn out shit.  Ignoring this leads to the risk of burning days or even weeks on conflicting builds.   </p>\r\n<br>\r\n<p>6. Sometimes you have to compromise on your product.  We all want to be perfect, but at the end of the day, you gotta ship something.  You gotta get customer feedback early, and you gotta take a chance.  The money is gone in 10 months?  You better not wait for month 9 to launch.  Balancing this out is painful, and as a founder I see it from many more angles that complicate the decision (financing, team strength, customer pipeline, investors)</p>\r\n<br>\r\n<p>7. There will always be so much you want to build and no time to build even half of it.  Being a good team means intuitively prioritizing because you know the core product vision.</p>\r\n<br>\r\n<p>8. Build a culture of accountability.  No one is getting rich working for dirty startup salaries, so let’s act like we know why we’re here.  To make something valuable, and to make it grow fast.</p>\r\n<br>\r\n<p>9. Pay attention to competition and to leaders in other industries.  The beauty of a startup is you can change your product on the fly, with very few ramifications because your customer base is so small.  To not continually adjust by staying tuned into the competitive and technological environments increases risk in the long run.  Find your niche, define your competitive advantage and defend it.</p>\r\n<br>\r\n<p>10. Harvest a killer instinct.  Make no mistake, you have to fight to win.  Have a healthy disdain for your competition without underestimating them.  “Fuck company X, we’re gonna smash them.” is not an uncommon saying in the Tunezy office.  </p>\r\n<br>\r\n<p>Disclosure: I am very long Tunezy.</p>	\N	2013-05-08 20:47:05.829545	2013-05-10 16:20:11.16962	productmanagement.jpg	image/jpeg	107452	2013-05-10 16:20:10.203215
31	<h1>Having fun being Cheap</h1>	<p>Part of quitting my job for Tunezy was enduring a long period of no salary that continues today.  Saving money went from smart to necessary very quickly, but instead of it being a burden it became sort of a game.  The resourcefulness you develop from the startup mentaility helps quite a bit as well.  Here’s a short ensemble of my personal finance thoughts for starving entrepreneurs and well, generally anyone.</p>\r\n<br>\r\n<p><b>1.  Get a wife/husband with a job.</b>  Okay I cheated right off the bat. I’m married and she puts food on my table.  Thanks Jinae!  I swear I could still survive if she didn’t, but I contribute by reducing my burden and spending as little as possible. </p> \r\n<br>\r\n<p><b>2.  If you have no time, you won’t want “stuff”.</b>  Aside from a decent computer, which I got before I quit, there’s nothing I need or want.  I didn’t terribly like stuff prior, so this may be a lot harder for some. </p>   \r\n<br>\r\n<p><b>3. Measure like crazy, it will just force you to face your habits. </b> Mint.com everyone, end of story.  Saves my life and takes 90% of the pain out of budgeting and transaction management.</p>\r\n<br>\r\n<p><b>4. Little bits count.</b>  I stopped buying coffee, which I bought daily for about 3 years.  Make it at home for $0.15/cup, saves about $600/year.  I no longer supersize those fries and always get the value meal, which saves on future health care costs as well.</p>      \r\n<br>\r\n<p><b>5. Be an opportunistic shopper.</b>  Let Groupon determine where/when to eat out.  Your friend has a product sale at their company?  Stock a wartime supply.  </p>\r\n<br>\r\n<p><b>6. Don’t buy anything until you research if there’s a cheaper way.</b>  Case and point, I was really thinking about dropping $300-$600 on a standing desk, but after researching hard came across this article.  $22 later with some labour love, I have a pretty sweet standing desk, and my back loves me again.</p>\r\n<br>\r\n<p><b>7. Credit cards</b> - they are your friend.  Get on every promotion you can.  Don’t go crazy obviously, but here are some of my favourites.</p>  \r\n<br>\r\n<p><b>Capital One Mastercard</b> - Aspire Cash:  You get $100 when you make your first purchase, and thereafter 1.5% cash back on all purchases.  I used square and bought something from myself to trigger the $100, cost me $0.01 in fees. </p> \r\n<br>\r\n<p><b>Aeroplan card rotation*</b> - every year, open up either a CIBC Aeroplan or an Amex Aeroplan card.  The next year, cancel your choice before the annual fee, and sign up for the other - rinse and repeat every year.  Open it up before November and use it for your holiday shopping to get bonuses.  You’ll get 15k to 20k points for free every year, which basically means a free flight anywhere in the world every three years with regular spending.</p>\r\n<br>\r\n<p><b>8. Sell everything you own that you can.</b>  Everything you own that’s not a financial/housing asset will depreciate.  Take a hard look at what you have, and if you can do without any of it, Kijiji that shit immediately.  I sold my PS3, my raptors season tickets, furniture, and tablet.  If I had stronger will I would have sold my bike.  The point is, sell it now before it’s worth even less tomorrow.</p>\r\n<br>\r\n<p><b>9. Cook. </b></p>\r\n<br>\r\n<p><b>10. Minimize financial leverage and shocks</b> - If you have investments, or fall back money, really start to invest it like a 80 year old person would.  If you have debt, really see what you can do to minimize interest costs or get out of it.  You’re already taking many risks with what you’re doing, the last thing you want is to put yourself in a do or die scenario.  </p>\r\n<br>\r\n<p><b>Bonus:  Treat it like a game.</b>  At the end of the day, we all have way too much than we need anyways.  So you gotta eat Ramen again?  Whatever, at least it was an option.  And remember, this was probably your choice, so don’t cry.</p>\r\n<br>\r\n<p>*If you plan todo the Aeroplan rotation, some important things to understand.  Make sure it’s always cleared 100% before you cancel, or it may hurt you credit score.  Also, always have a credit card with really long history in continuous use.  This will keep your credit healthy, I’ve done this 3 years running and credit score has gone up every year all else being equal.</p>	\N	2013-05-08 20:47:34.264344	2013-05-10 16:45:42.435921	ChangeJar.jpg	image/jpeg	299950	2013-05-10 16:45:38.422917
35	<h1>Being a CFO in an early stage startup</h1>	<p>I’ve never talked much about my experience as CFO, probably because it’s not as interesting as the product stuff I’ve found a passion for.</p>\r\n<br>\r\n<p>From day one, it was difficult to understand the impact wearing the CFO hat could have on a company that was basically in its napkin stage.  But over time, and as the company has grown, I’ve come to appreciate the role, and am convinced of its value in influencing execution and building a business model. </p>\r\n<br>\r\n\r\n<p>Yup, early stage CFOs manage the cash flow, cut the cheques, do the accounting, deliver financial statements to stakeholders, and file the taxes.  And yup, it’s boring as shit.</p>\r\n<br>\r\n\r\n<p>But there’s a few of things that a CFO is well suited to lead and influence: operations, strategy, building a sustainable business model.</p>\r\n<br>\r\n\r\n \r\n\r\n<p><b>Operations</b><p>\r\n<br>\r\n<p>The heart and soul of any company is how well it churns out quality product.  Wether production is measured by physical shipments or code deployments, the speed and efficiency with which it uses its resources to this end creates compound competitive advantage over time.    </p>  \r\n<br>\r\n<p>It’s common for agencies to tell clients that their project is a three variable function of time, quality, and money.  To optimize any of those factors (“finish faster”) requires sacrificing one or both of the others (“pay me double”).   This is true for any individual company, and especially true for cash strapped, early stage startups.  CFOs own the money, and therefore have direct impact on the productivity of a company through their direction on allocation of capital.</p>\r\n<br>\r\n<p>At the highest level, you want to expend every dollar on it’s highest utility option.  Here’s some classic examples:</p>\r\n<br>\r\n<p><i>Cater lunch for employees - everyday.</i></p>\r\n<br>\r\n<p>After even a shallow analysis , anyone can see it’s a no brainer and it’s pretty surprising it’s still rare in the corporate world (For $12/person - 1 hr lunches needing travel turn into 30 min lunches and happier employees).  Compare that cost to the increase in productivity and it’s a bargain.</p>\r\n<br>\r\n<p><i>Hiring a virtual assistant</i></p>\r\n<br>\r\n<p>Your $100k salary employee shouldn’t be using any significant amount of time to do administrative work, even if it’s personal stuff like booking appointments.  It’s kind of like getting a large fries for $1.99 and not spending the $0.25 to super-size it and get double (assumption: you have an insatiable appetite for fries).</p>\r\n<br>\r\n<p>The point is, minimizing costs does not equate to using capital wisely, and as CFO you need to focus spending on getting the highest utility out of the total capital pool.  It’s easy to say, but believe me when you have 2 months of burn left, it’s hard to remember that.</p>\r\n\r\n \r\n<br>\r\n<p><b>Strategy</b><p>\r\n<br>\r\n\r\n<p>This is more applicable to pre-net-profit companies, but when you’re managing your cash flow, and project it into the future, you invariably see a “put up or shut up” point in time, where you’ve expended your resources, and you need to have become profitable or raised additional financing in order to continue.  This is typically called the “runway” (for “take off”, get it?).</p>\r\n<br>\r\n<p>People, especially product and vision purists, may disagree with what I’m about to say, but I believe that runway date should directly influence your company’s execution strategy.  There are many times when decisions on product development and sales pipelines need to sacrifice long term effectiveness to protect the short term risk profile of the company.  </p>\r\n<br>\r\n<p>An example from my experience is when we quickly rushed a product launch that had tons of bugs that we knew would make us lose some users. We did it anyway, solely to have a critical feature appear launched in time for an important event and competition.  At the time, we had limited runway, but our thinking was that potential traction and financing from the results of the competition could extend it.  We did end up winning the competition, and closed a financing soon after, and although not directly attributable to the win, it certainly played a big role.  Now, the flip side is that the way we did it hurt us 10 months down the line. That buggy product made us have to rebuild some things, and it probably cost us 2 months of precious product development time in the end.  </p>\r\n<br>\r\n<p>Was it the right move?  It’s really hard to say conclusively, but my intuition says Tunezy wouldn’t even be here if not for that decision.  These type of ambiguous decisions are gut wrenching, but necessary in order to survive when the outlook is very risky.</p>\r\n<br>\r\n<p><b>Building a Business Model</b></p>\r\n\r\n<br>\r\n<p>This part of the role I truly love.  The development of a good business model requires deep knowledge of the intersection of the following:</p>\r\n<br>\r\n<p>1. The value your product/service brings its customer</p>\r\n<p>2. Understanding the costs in delivering that value</p>\r\n<p>3. The competitive environment</p>\r\n<p>4. An eye to the long term</p>\r\n<br>\r\n<p><i>1. The value your product/service brings its customer:</i></p>\r\n<br>\r\n<p>One could go on about this for days, but basically, for a sustainable revenue model to exist a company needs to charge directly the value it provide customers, and no more (it can charge less, i.e. freemium models).  Don’t fool yourself about that value - test and talk to customers until you’re certain.  If you’re unsure, don’t bother making a model.</p>\r\n<br>\r\n<p><i>2. Understanding the costs in delivering that value:</i></p>\r\n<br>\r\n<p>Understanding this sets am important floor for what your pricing should be. The traditional cost structure of product delivery includes development costs, fixed costs (rent), and variable costs (server costs, materials).</p>\r\n<br>\r\n<p>But you have to be careful in how you classify these.  Many people tend to put way too much into fixed costs, and then project 80-90% gross margins.  A classic example is putting all salaries in fixed, because in some ways they behave as fixed costs (i.e. you don’t pay more when you sell another unit), but in reality they’re variable and have range bound characteristics (because at some point you have to hire more to handle the growth).  </p>\r\n<br>\r\n<p>This way of thinking is pretty pervasive in software companies, where there is usually less of a direct sales force involved in customer acquisition.  The thinking is that since the software does all the selling, the only variable costs that scale are things like server costs and the occasional admin.  The catch 22 is that in software the product itself is dynamic, and ever improving.  It’s not like cheese where a perfect recipe from 100 years ago isn’t touched.  </p>\r\n<br>\r\n<p>You can’t rest on your laurels - people pay for software with the understanding that it will continually improve, that it will change with their needs.  If it doesn’t, they leave and you lose a customer.  To keep this up, there will always be substantial R&D.  And in my opinion, R&D cost is a real variable cost in software, it’s only hidden on the P&L because it’s revenue effects lag the costs, and therefore don’t tie well with the traditional cost breakdown.  R&D costs also rise as competition heats up, the pace of technological change increases, and customers have near zero switching costs.</p>\r\n<br>\r\n<p><i>3. The competitive environment</i></p>\r\n<br>\r\n<p>Just as much as you know your own product value, you need to know that of your competitors.  It doesn’t mean charge less, it means charge what is compelling to customers given the comparison of your product and theirs.</p>\r\n<br>\r\n<p><i>4. An eye to the long term</i></p>\r\n<br>\r\n<p>Your product may deliver value and you can successfully charge for it.  Sometimes, however, the value it brings could be in a market that is too small, something you view as a stepping stone towards a large one.  In those circumstances, and if finances permit, it may be better to offer the product for free to increase the customer adoption rate so that you can monetize the bigger picture down the line and your original product is now just a feature.  </p>\r\n<br>\r\n<p><i>In conclusion, underrated position</i></p>\r\n<br>\r\n<p>Playing the role of a small startup CFO is sometimes ambiguous.  It’s far easier to see direct value in focusing on product and sales.  But if you take a step back, you can see that you’re in a great position to steer the productivity, strategy, and vision for the company.</p>	\N	2013-05-08 22:37:43.368388	2013-05-10 16:50:32.382535	Businessman-CFO-Chart-Chief-Executive-Officer-Colour-Finance-Financial-Occupation-Graph-Horizontal-Investment-Making-Money-Market-Men-Officer-Pen-Pointing-Occupation-Salesman-Savings2.jpg	image/jpeg	65752	2013-05-08 22:38:14.201371
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: brandonchu
--

COPY schema_migrations (version) FROM stdin;
20130323221025
20130323222403
20130323224133
20130324223004
20130325004716
20130402233033
20130404023648
20130507142041
20130507143714
20130507163050
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: brandonchu
--

COPY users (id, name, email, created_at, updated_at, password_digest, remember_token, admin) FROM stdin;
1	Brandon	brandon.mk.chu@gmail.com	2013-05-07 14:07:32.847079	2013-05-07 14:07:32.847079	$2a$10$EHx7ivbvN/IBlHidJ4244.6fpCeTujBxcb1x24cctFoyGicFnebd.	N9ykD40bQ2CThvpLCpgitw	f
\.


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: brandonchu; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: brandonchu; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_posts_on_user_id; Type: INDEX; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE INDEX index_posts_on_user_id ON posts USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_remember_token; Type: INDEX; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE INDEX index_users_on_remember_token ON users USING btree (remember_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: brandonchu; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: brandonchu
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM brandonchu;
GRANT ALL ON SCHEMA public TO brandonchu;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

