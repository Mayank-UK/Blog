-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2018 at 11:04 AM
-- Server version: 10.2.13-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id6680368_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fun', '2018-06-04 06:23:28', '2018-06-04 06:23:28'),
(2, 'tech', '2018-08-30 07:28:35', '2018-08-30 07:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 3, 2, '2018-09-13 01:52:34', '2018-09-13 01:52:34'),
(6, 4, 2, '2018-09-13 01:57:43', '2018-09-13 01:57:43'),
(7, 5, 2, '2018-09-13 02:39:42', '2018-09-13 02:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_02_132713_entrust_setup_tables', 1),
(4, '2018_06_03_042533_create_posts_table', 1),
(5, '2018_06_03_043740_create_categories_table', 1),
(6, '2018_06_03_044002_create_category_post_table', 1),
(7, '2018_06_04_052302_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('m@gmail.com', '$2y$10$ckObpVA85Q.IsN968RjgFuxg19MWEC/JnG5pdxudJGGzbDTlI1T5u', '2018-08-28 14:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '5 open source developers tell us how they got started', '<figure>\r\n<img src=\"/images/5_developers_story/main.png\" alt=\"Roundcube screenshot\" class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\"  />\r\n<figcaption style=\"font-size: 12px\">Image by: opensource.com</figcaption>\r\n</figure>\r\nDo you remember what it was like when you first started out in open source? I recently asked a group of developers to recount what it was like for them and what prompted them to start contributing to open source in the first place. Each has worked professionally as a developer for a range of 3 to 17 years, and represent an interesting cross section of backgrounds.\r\n\r\n<h4>HTML5 Developer for Morgan Stanley, Dimitar Christoff</h4>\r\nLike many of my friends, I strived to learn Javascript and ended up writing a bunch of plugins and tools. Surprisingly, people were using them so I moved a few to GitHub. It didn\'t take long before I came to want to get involved in a larger project so I spent time trying to help the Mootools-core team, landed a few patches and it felt good. My interactions with the team and the community taught me a lot about collaboration and project management as well as about procedures (forking, branching, pull requests, testing). Ultimately, this allowed me to pursue a career in enterprises and investment banking and made me a much better developer. To be honest, not all contributions need to be with code, often extensive bug reporting with good use cases or participation in code/architecture discussions can be invaluable to a project without the legalities of releasing open source code during work hours. Others can help test pre-releases, work on less critical paths in a projects\' lifecycle—like the documentation, the website, or user support through IRC or StackOverflow, and the likes. Or writing blog posts and tutorials, the sky\'s the limit. Everybody can help. At some point, most people do.\r\n\r\n<h4>Technical Director for Space 48, Tony Brown</h4>\r\nThe first open source platform I contributed to came from using the system for a commercial project. As I continued to work with the platform, I found bugs which halted progress. After first consulting documentation and using forums, if I found a solution it felt natural to push these fixes back to the project. The community tools out there enable good communication, which prompts discussion even if the solution is not correct first time. This leads to a better outcome and all parties involved tend to learn from the experience. There is a strong sense of satisfaction gained from contributing and knowing that your work is part of the project. You can also build strong relationships in these communities and this can lead to sharing further ideas and opportunities.\r\n\r\n<h4>Software Developer for Winwar Media, Rhys Wynne</h4>\r\nI saw open source as an opportunity to work in a team and learn from my peers. In my adopted home town of Manchester, we are fortunate to have a great community; as such there was a call out for a dedicated Wordpress contributor, to which I attended. That got me learning the process of contributing. Open source in particular to me is important to my career as you build up a reputation. With lots of things being made open source, I can share what I know easily, without having to sign NDAs, or having things hidden away in closed systems. I can also learn how other developers make changes and work, and should individuals be hiring or looking to expand their team, then hopefully I\'m in their minds when they hire.\r\n\r\n<h4>Front End Developer for Building Blocks, Daniel Furze</h4>\r\nWhat prompted me first was that I wanted a feature in an open source plugin I was using for my build and decided to add it in for the project I was using it in. I thought that other people may benefit from the feature so contacted the author of the plugin, who suggested I submit a pull request on GitHub for it. I then tidied up my code and submitted it, and it was subsequently released as a feature. I was quite satisfied with that, which led me to develop another feature on the same plugin, and then continue to make contributions to other projects that I thought were useful; or just that I found useful, hoping that others would too.\r\n\r\nThe learning curve for me wasn\'t too hard, it was a little daunting at first suggesting features to \r\nprojects on GitHub but I\'ve found that most of the time your suggestions are welcome. I\'ve also found though that on some larger projects suggestions or pull requests get closed down without explanation by the project owners, mainly on the bigger open source projects that are controlled by developers from Google or other such large companies. I think the best advice is to just jump in and not be afraid of your ideas being rejected; it held me back for a while thinking this. You\'re going to have some rejected occasionally but if you have faith that your own contributions will be useful to others then just go for it. The feeling of creating tools that help others and contributing to other people\'s work and being appreciated, far outweighs any negative thoughts and apprehension you may have.\r\n\r\n<h4>Software Developer, Freelance, Damian Green</h4>\r\nI began coding as a child for pleasure. For the past 5 years or so I’ve been freelancing, building, extending, enhancing, and rewriting software for various companies. It was in a recent contract for a social media listening startup that I had my foray into the world of open source development. Part of my remit on this short project was to develop an Instagram feed importer component. I discovered an open source project that had gone some way to implementing a C# API wrapper to Instagram although it required some additional functionality. Rewriting the API was not really an option so I tentatively contacted the owner of the open source project asking if he would consider my adding certain functionality. Over the course of several weeks, I added more functionality and communicated with another developer from Brazil, who I’ve never met and may likely never meet.\r\n\r\nIt’s worth mentioning the pleasure that can be derived from working on open source projects. In the fast paced deadline-driven world of the job market, at its purest, the open source movement offers a place where robust frameworks can be built, critiqued, extended incrementally and peer by a global community of great developers. So there is a certain allure to the purists of the software practitioner world to have developed a piece of work which is more robust to a high standard, and could potentially be useful across future projects. After having worked on the Instagram API project as part of my day job, I was driven to continue contributing outside of my working hours to fill in the gaps in feature functionality, add documentation to help developer adoption, and occasionally answer questions from potential users of the system.\r\n\r\nIt can be quite addictive. Many developers of open source software do so as an external activity to their usual working day, as development is their vocation, and there is something enormously satisfying about doing something that is not lot purely a mercenary activity. It can almost feel like a benevolent act, as there is no end client hot on your heels you can have the patience to consider correctly how to implement.\r\n\r\nThe open source movement is often at the cusp of technological development and the first to innovate, so as a software practitioner, where your stability in the job market relies on being up to date with technology. Jobs these days can advertise for roles for developers who’ve contributed to open source projects. For me personally, I look forward to being able to continue supporting and contributing to development projects in whatever small way I can, and being part of the social community that is open source.\r\n\r\nI would suggest first having a look on GitHub and doing a search for any projects that you are interested in. If you\'re interested in 3D visualization, for example, you could search for that and see if there are any outstanding bugs that need fixing on any of the highly starred / popular projects or documentation that needs adding to. Any contribution is usually welcome if the project owner is still actively involved in the project.\r\n\r\nWhat\'s your beginner to open source story? Share it with us in the comments!', '5-open-source-developers-tell-us-how-they-got-started', 1, 0, '2018-09-13 01:52:34', '2018-09-13 06:25:50'),
(4, 'Python vs. C/C++ in embedded systems', '<figure>\r\n<img src=\"/images/python_vs_c/main.png\" alt=\"Roundcube screenshot\" class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\" />\r\n<figcaption style=\"font-size: 12px\">Image by: opensource.com</figcaption>\r\n</figure>\r\nThe C/C++ programming languages dominate embedded systems programming, though they have a number of disadvantages. Python, on the other hand, has many strengths that make it a great language for embedded systems. Let\'s look at the pros and cons of each, and why you should consider Python for embedded programming.\r\n\r\nC/C++ are compiled languages, while Python is an interpreted language. C/C++ have been around for ages; C was first developed in 1969, and C++ came along in 1983. Python is younger as it was created in 1989 by Guido van Rossum. Since then, it\'s become one of the most popular open source programming languages. All Python releases are open source and freely usable and distributable, even for commercial projects. (If you\'re looking for commercial- grade support and indemnification, distributions like ActivePython are available.)\r\n\r\n<h4>The case for Python</h4>\r\nPython is the most popular introductory programming language at the top computer science (CS) departments in the United States. According to a study by the Barr Group, eight of the top ten CS departments currently use Python to teach coding. Debate the merits of it if you want, but the simple fact is that the most widely understood language in the hiring pool of recent graduates is Python. It\'s dramatically more likely that a recent graduate will understand how to code in Python than in C/C++.\r\n\r\nHobbyist developers are likely to have some experience with Python, and it\'s more likely that they\'ll be proficient in Python than in C/C++. Since only about 40% of computer software engineers and system analysts have computer science degrees, a lot of industry hires are coming from hobbyist backgrounds. But when it comes to embedded systems, the numbers flip pretty severely. The Barr Group study shows that over 95% of the code for embedded systems is written in C/C++. This legacy on embedded systems might be hard for Python to overcome, but its attributes and the sheer number of people coding in Python might help it overtake C/C++ in the future.\r\n\r\nPython isn\'t only the most-popular language for introductory CS programs, it\'s also the fastest-growing language for embedded computing. Maybe that sounds silly when you scan the numbers again and realize it\'s the fastest-growing language of the remaining 5% of embedded systems code that aren\'t C/C+ +, but Python will start eating into C/C++\'s monopoly even more over the next few years. Hobbyists migrating into the industry with experience programming drones, robots, or other projects frequently have an Arduino or Raspberry Pi background. They\'ll likely have dealt with Python on some level in that time, and it\'s also likely that they\'ll have bumped up against some embedded systems programming.\r\n\r\nWhile C/C++ is slow to write, error prone, and frequently unreadable, Python is known for its writability, error reduction, and readability. The importance of readability can\'t be overemphasized: when you\'re working in a team, readability is paramount to maintaining the code. It has to be easily decipherable unless you\'re willing to shell out more time and money on debugging and quality assurance. The design reuse of Python far outclasses C/C++, and in today\'s Agile environments design reuse can be the difference between staying ahead or falling behind the competition.\r\n\r\nEmbedded algorithms are getting increasingly complex. Simple control loops are being replaced by neural networks and other heavily-involved processes that have helped Python gain its foothold. There are Python libraries like Theano that will optimize Python code for these processes. While Theano is mostly written in C/C++, Python is used to interface with high-performance libraries in a human-friendly way. Python libraries are thriving—PyPI, the Python package index, has over 80,000 modules, and these massive compendiums dramatically increase the productivity of programmers by giving them the option to skip a few steps and use already-established functions in their own code.\r\n\r\n<h4>The case for C/C++</h4>\r\nThe case for C/C++ is pretty obvious: it creates more compact and faster runtime code, and it\'s already the language of choice for 95% of embedded system code, so it has a whole legacy that Python will have to overcome. When it comes to speed, however, runtime speed isn\'t the only aspect of development to consider—you also have to consider development speed. While Python may be less efficient than C/C++ at runtime, during development it\'s much more efficient. Interpreters read each line of code, parse it, do runtime checks and call routines in order to execute the operations in the code. This is a lot more activity than what you get from running C/C++ code, where the same line of code might be compiled into just a couple of instructions. This can lead to slower runtime speeds and higher energy consumption with Python.\r\n\r\n<h4>Improving Python\'s speed</h4>\r\nSo the main case against Python versus C/C++ is its runtime speed, but there are several ways to optimize the code so it runs more efficiently. Aside from libraries like Theano, there are optimizing extensions for Python like Cython, which is essentially Python with static typing and keywords to run math more quickly. Because Cython is statically typed, you can easily compile to C/C++ and run at C/C++ speeds.\r\n\r\nJust-In-Time (JIT) compilers are another good way to improve Python\'s runtime speed. These compilers work in parallel with Python\'s interpreter to generate compiled machine instructions for code inside loops. This allows subsequent passes by the interpreter to execute faster. The PyPy JIT compiler is able to increase Python\'s execution speed by nearly a factor of two. JIT compilers should only be used if there\'s enough space, though, and embedded systems don\'t usually have a lot of that to spare. The best optimization is to use better data structures and algorithms, but this is the hardest task in software design and implementation, so it might be best to utilize one of the tools above, depending on your skill level.\r\n\r\n<h4>Using Python to communicate with embedded systems</h4>\r\nPython might be at its strongest when used as a communication middleman between the user and the embedded system they\'re working with. Sending messages through Python to or from an embedded system allows the user to automate testing. Python scripts can put the system into different states, set configurations, and test all sorts of real-world use cases. Python can also be used to receive embedded system data that can be stored for analysis. Programmers can then use Python to develop parameters and other methods of analyzing that data.\r\n\r\nCurrently the main debate about the merits of Python and C/C++ comes down to what\'s more important to your team: development speed or runtime speed. In the future, though, it might not be up to Python programmers to make their case for its use in embedded systems, but rather for embedded systems designers to figure out how to accommodate the relentlessly increasing popularity of Python.', 'python-vs-cc-in-embedded-systems', 1, 0, '2018-09-13 01:57:43', '2018-09-13 06:27:34'),
(5, '4 open source alternatives to Gmail', '<figure>\r\n<img src=\"/images/4_alternatives_to_gmail/main.png\" alt=\"Roundcube screenshot\" class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\" />\r\n<figcaption style=\"font-size: 12px\">Image by : Judith E. Bell. Modified by Opensource.com. CC BY-SA 2.0.</figcaption>\r\n</figure>\r\nGmail has enjoyed phenomenal success, and regardless of which study you choose to look at for exact numbers, there\'s no doubt that Gmail is towards the top of the pack when it comes to market share. For certain circles, Gmail has become synonymous with email, or at least with webmail. Many appreciate its clean interface and the simple ability to access their inbox from anywhere.\r\n\r\nBut Gmail is far from the only name in the game when it comes to web-based email clients. In fact, there are a number of open source alternatives available for those who want more freedom, and occasionally, a completely different approach to managing their email without relying on a desktop client. You\'ll still need an email server to use with these clients. If you don\'t already have a favorite, look for an upcoming article with some options to consider.\r\n\r\nLet\'s take a look at just a few of the free, open source webmail clients out there available for you to choose from.\r\n\r\n<h4>Roundcube</h4>\r\nFirst up on the list is Roundcube. Roundcube is a modern webmail client that will install easily on a standard LAMP (Linux, Apache, MySQL, and PHP) stack. It features a drag-and-drop interface that generally feels modern and fast, and comes with a slew of features: canned responses, spell checking, translation into over 70 languages, a templating system, tight address book integration, and many more. It also features a pluggable API for creating extensions.\r\n\r\nIt comes with a comprehensive search tool, and a number of features on the roadmap, from calendaring to a mobile UI to conversation view, sound promising, but at the moment these missing features do hold it back a bit compared to some other options.\r\n<figure class=\"text-center\">\r\n<img src=\"/images/4_alternatives_to_gmail/roundcube.jpg\" alt=\"Roundcube screenshot\" class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\" />\r\n<figcaption style=\"font-size: 12px\">Roundcube screenshot courtesy of the project\'s website.</figcaption>\r\n</figure>\r\nRoundcube is available as open source under the GPLv3.\r\n\r\n<h4>Zimbra</h4>\r\nThe next client on the list is Zimbra, which I have used extensively for work. Zimbra includes both a webmail client and an email server, so if you\'re looking for an all-in-one solution, it may be a good choice.\r\n\r\nZimbra is a well-maintained project that has been hosted at a number of different corporate entities through the years, and was acquired by Synacore in 2016. It features most of the things you\'ve come to expect in a modern webmail client, from webmail to folders to contact lists to a number of pluggable extensions, and generally works very well. I have to admit that I\'m most familiar with an older version of Zimbra, which felt at times slow and clunky, especially on mobile, but it appears that more recent versions have overcome these issues and provide a snappy, clean interface regardless of the device you are using. A desktop client is also available for those who prefer a more native experience. For more on Zimbra, see this article from Zimbra\'s Olivier Thierry, who shares a good deal more about Zimbra\'s role in the open source community.\r\n<figure class=\"text-center\">\r\n<img src=\"/images/4_alternatives_to_gmail/zimbra.jpg\" alt=\"Roundcube screenshot\" class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\" />\r\n<figcaption style=\"font-size: 12px\">Zimbra screenshot courtesy of Clemente under the GNU Free Documentation License.</figcaption>\r\n</figure>\r\nZimbra\'s web client is licensed under a Common Public Attribution License, and the server code is available under GPLv2. S\r\n\r\n<h4>SquirrelMail</h4>\r\nI have to admit, SquirrelMail (self-described as \"webmail for nuts\") does not have all of the bells and whistles of some more modern email clients, but it\'s simple to install and use and therefore was my go-to webmail tool for many years when I was setting up websites and needed a mail client that was easy and \"just works.\" As I am no longer doing client work and shifted towards using forwarders instead of dedicated email accounts for personal projects, I realized it had been awhile since I took a look at SquirrelMail. For better or for worse, it\'s exactly where I left it.\r\n\r\nSquirrelMail started in 1999 as an early entry into the field of webmail clients, with a focus on low resource consumption on both the server and client side. It requires little in the way of special extensions of technologies to be used, which back when it was created was quite important, as browsers had not yet standardized in the way we expect them to be today. The flip side of its somewhat dated interface is that it has been tested and used in production environments for many years, and it\'s a good choice for someone who wants a webmail client with few frills but also few headaches to administer.\r\n<figure class=\"text-center\">\r\n<img src=\"/images/4_alternatives_to_gmail/squirrelmail.jpg\" alt=\"Roundcube screenshot\" class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\" />\r\n<figcaption style=\"font-size: 12px\">SquirrelMail screenshot courtesy of the project website.</figcaption>\r\n</figure>\r\nSquirrelMail is written in PHP and is licensed under the GPL.\r\n\r\n<h4>Rainloop</h4>\r\nNext up is Rainloop. Rainloop is a very modern entry into the webmail arena, and its interface is definitely closer to what you might expect if you\'re used to Gmail or another commercial email client. It comes with most features you\'ve come to expect, including email address autocompletion, drag-and-drop and keyboard interfaces, filtering support, and many others, and it can easily be extended with additional plugins. It integrates with other online accounts like Facebook, Twitter, Google, and Dropbox for a more connected experience, and it also renders HTML emails very well compared to some other clients I\'ve used, which can struggle with complex markup.\r\n\r\nIt\'s easy to install, and you can try Rainloop in an online demo to decide if it\'s a good fit for you.\r\n<figure class=\"text-center\">\r\n<img src=\"/images/4_alternatives_to_gmail/rainloop.jpg\" alt=\"Roundcube screenshot\"  class=\"col-sm-10 col-md-10 col-lg-6 p-0\" style=\"box-shadow: 0px 0px 10px black\" />\r\n<figcaption style=\"font-size: 12px\">Rainloop screenshot by author.</figcaption>\r\n</figure>\r\nRainloop is primarily written in PHP, and the community edition is licensed under the AGPL. You can also check out the source code on GitHub.\r\n\r\n<h4>More options</h4>\r\n<ul><li><b>Mailspring</b> is a new option that supports multiple accounts, read receipts, translations, undo send, and other popular email client features. It is a fork developed by one of the creators of Nylas Mail, which was maintained until Spring 2017.</li>\r\n<li><b>Cypht</b> is a lightweight email client and news reader written in PHP and JavaScript and licensed under GPL v2. It was developed by the creators of HastyMail, an older GPL-licensed email client.</li>\r\n<li><b>Mailpile</b> is an HTML 5 email client, written in Python, and available under the AGPL. Currently in development, Mailpile focuses on speed and privacy.</li>\r\n<li><b>WebMail</b> Lite is a modern but minimalist option, licensed under the AGPL and written mostly in PHP.</li>\r\n<li><b>Open WebMail</b> is a GPL-licensed client that aims to provide efficient memory management for very large mail files. </li>\r\n<li><b>Kite</b> was on the list the last time we published this review, but it\'s now obsolete. It was designed to go head-to-head with Gmail, and it\'s too bad the project didn\'t advance.</li>\r\n<li>There are also a number of groupware solutions, such as Horde, which provide webmail in addition to other collaboration tools.</li>\r\n</ul>\r\nThis is by no means a comprehensive list. What\'s your favorite open source webmail client?', '4-open-source-alternatives-to-gmail', 1, 0, '2018-09-13 02:39:42', '2018-09-13 06:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manager', 'Manager', 'Exclusive priviledges !', '2018-06-04 06:22:40', '2018-06-04 06:22:40'),
(2, 'member', 'Member', 'Site user !', '2018-06-04 11:46:16', '2018-06-04 11:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'mak', 'm@gmail.com', '$2y$10$ME2B4/2q6uDgSBbuOFY98OKCyIBTpfCrDh8zpLxPk5ewE5qLauw4y', 'HOYGWKvATxIeNfRBfVY7i25TLzB5kHaJLHXD0m63hnjyCmo3zsFKuOrux4dX', '2018-08-28 14:45:01', '2018-08-28 14:46:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_post_id_index` (`post_id`),
  ADD KEY `category_post_category_id_index` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
