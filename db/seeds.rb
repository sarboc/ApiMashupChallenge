# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
		Api.create({
			name: "Google Maps",
			url: "https://developers.google.com/maps/",
			description: "The Google Maps API allow for the embedding of Google Maps onto web pages of outside developers, using a simple JavaScript interface or a Flash interface. It is designed to work on both mobile devices as well as traditional desktop browser applications. The API includes language localization for over 50 languages, region localization and geocoding, and has mechanisms for enterprise developers who want to utilize the Google Maps API within an intranet. The API HTTP services can be accessed over a secure (HTTPS) connection by Google Maps API Premier customers.",
			requires_key: "yes"
			})
		Api.create({
			name: "Twitter",
			url: "https://dev.twitter.com/docs",
			description: "The Twitter micro-blogging service includes two RESTful APIs. The Twitter REST API methods allow developers to access core Twitter data. This includes update timelines, status data, and user information. The Search API methods give developers methods to interact with Twitter Search and trends data. The API presently supports the following data formats: XML, JSON, and the RSS and Atom syndication formats, with some methods only accepting a subset of these formats.",
			requires_key: "no"
			})
		Api.create({
			name: "YouTube",
			url: "https://developers.google.com/youtube/",
			description: "The Data API allows users to integrate their program with YouTube and allow it to perform many of the operations available on the website. It provides the capability to search for videos, retrieve standard feeds, and see related content. A program can also authenticate as a user to upload videos, modify user playlists, and more.
\n\n
This integration can be used for a variety of uses such as developing a web application allowing users to upload video to YouTube, or a device or desktop application that brings the YouTube experience to a new platform. The Data API gives users programmatic access to the video and user information stored on YouTube. This can be used to personalize a web site or application with the user's existing information as well as perform actions like commenting on and rating videos. This RESTful API provides responses in XML format.",
			requires_key: "yes"
			})
		Api.create({
			name: "Flickr",
			url: "http://www.flickr.com/services/api/",
			description: "The Flickr API can be used to retrieve photos from the Flickr photo sharing service using a variety of feeds - public photos and videos, favorites, friends, group pools, discussions, and more. The API can also be used to upload photos and video.The Flickr API supports many protocols including REST, SOAP, XML-RPC. Responses can be formatted in XML, XML-RPC, JSON and PHP. Documentation is included for 14 API Kit libraries.",
			requires_key: "yes"
			})
		Api.create({
			name: "Amazon Product Advertising",
			url: "https://affiliate-program.amazon.com/gp/advertising/api/detail/main.html",
			description: "What was formerly the ECS - eCommerce Service - has been renamed the Product Advertising API. Through this API developers can retrieve product information. The API exposes Amazon's product data and e-commerce functionality. This allows developers, web site publishers and others to leverage the Amazon Product Discovery features that Amazon uses to power its own business, and potentially make money as an Amazon affiliate. Additionally, the API has features allowing developers to advertise proucts, let users search for Amazon products and help users discover Amazon products. Both REST and SOAP APIs are provided, this profile is for the REST API.",
			requires_key: "yes"
			})
		Api.create({
			name: "Facebook",
			url: "http://developers.facebook.com/",
			description: "The Facebook API is a platform for building applications that are available to the members of the social network of Facebook. The API allows applications to use the social connections and profile information to make applications more involving, and to publish activities to the news feed and profile pages of Facebook, subject to individual users privacy settings. With the API, users can add social context to their applications by utilizing profile, friend, Page, group, photo, and event data. The API uses RESTful protocol and responses are localized and in XML format.",
			requires_key: "yes"
			})
		Api.create({
			name: "Twilio",
			url: "http://www.twilio.com/",
			description: "Twilio provides a simple hosted API and markup language for businesses to quickly build scalable, reliable and advanced voice and SMS communications applications. Twilio provides a telephony infrastructure web service \"in the cloud\", enabling web programmers to integrate real-time phone calls into their applications. Twilio's simple Pay-As-You-Go pricing model means customers pay for capacity only when they need it, not before. Voice applications written on Twilio's cloud solution scale transparently, eliminating programming, operational and contractual headaches frequently associated with rapid growth or traffic spikes. 
\n\n
Twilio provides a cloud API for voice and SMS communications that leverages existing web development skills, resources and infrastructure. It minimizes the learning curve required to build advanced, reliable voice communications applications that solve critical business needs. The syntax and programming model are focused on making application development as close to the request/response model of web application development as possible. The API uses a RESTful interface and responses are formatted in XML or CSV.",
			requires_key: "yes"
			})
		Api.create({
			name: "last.fm",
			url: "http://www.last.fm/api",
			description: "The Last.fm API gives users the ability to build programs using Last.fm data, whether on the web, the desktop or mobile devices. The RESTful API allows for read and write access to the full slate of last.fm music data resources - albums, artists, playlists, events, users, and more. It allows users to call methods that respond in either XML or JSON. ",
			requires_key: "yes"
			})
		Api.create({
			name: "foursquare",
			url: "https://developer.foursquare.com/",
			description: "foursquare makes the real world easier to use. We build tools that help you keep up with friends, discover what’s nearby, save money and unlock deals. Whether you’re setting off on a trip around the world, coordinating a night out with friends, or trying to pick out the best dish at your local restaurant, foursquare is the perfect companion.
\n\n
The foursquare APIs grants access to the company's database of locations as well as information on venue check in's. The APIs are: The Core API, Real-time API, Merchant Platform, Venues Platform. The APIs are RESTful and support XML, JSON, JSONP.",
			requires_key: "no"
			})
		Api.create({
			name: "Wikipedia",
			url: "http://www.mediawiki.org/wiki/API",
			description: "The unofficial Wikipedia API. Because Wikipedia is built using MediaWiki, which in turn supports an API, Wikipedia does as well. This provides developers code-level access to the entire Wikipedia reference. The goal of this API is to provide direct, high-level access to the data contained in the MediaWiki databases. Client programs can use the API to login, get data, and post changes. The API supports thin web-based JavaScript clients, such as Navigation popups or LiveRC, end-user applications (such as vandal fighter), and can be accessed by another web site (tool server's utilities).
\n\n
The API uses RESTful calls and supports a wide variety of formats including XML, JSON, PHP, YAML and others.",
			requires_key: "no"
			})
		Api.create({
			name: "Yelp",
			url: "http://www.yelp.com/developers",
			description: "The Yelp APIs are RESTful APIs and users can retrieve business review and rating, information for a particular geographic region or location.display review information for a particular business, determine accurate neighborhood name information for a particular location, track recent reviews for a particular business, display pictures of highly rated local businesses and of the top reviewers for that business, determine a particular business' review and rating information based on the phone number for that business. The default output is JSON. This output format was chosen due to the availability of JSON parsers in many languages. The Yelp v2.0 API enables access to more relevant search results that more closely match the results on Yelp. It uses a standard and secure authorization protocol (OAuth 1.0a, xAuth).",
			requires_key: "yes"
			})
		Api.create({
			name: "Instagram",
			url: "http://instagram.com/developer/",
			description: "Instagram is a photo sharing iPhone app and service. Users take photos and can share them with Instagram contacts, as well as friends on other social networks like Twitter and Facebook. The Instagram API provides access to user authentication, friend connections, photos and all the other elements of the iPhone app--including uploading new media.",
			requires_key: "yes"
			})
		Api.create({
			name: "Google Translate",
			url: "https://developers.google.com/translate/",
			description: "From their site: The University Research Program for Google Translate provides researchers, in the field of automatic machine translation, tools to help compare and contrast with, and build on top of, Google's statistical machine translation system. Participation in the program will allow researchers programmatic access to Google's translation service. A translation request returns either: A single translation, the highest scoring output of Google Translate As above but with detailed word alignment information A list of the n-best translations with detailed scoring information.
\n\n
The Google Translate API is now in its second version.",
			requires_key: "yes"
			})
		Api.create({
			name: "BBC",
			url: "http://www.bbc.co.uk/programmes/developers",
			description: "The updated service is intended to provide a persistent web presence for all BBC programs, both radio and television, in compliance with principles of linked data. A complete ontology defines relationships among programs and their web properties. Also available is a comprehensive schedule, program listings by genre, and program details, including episode breakdowns.
\n\n
API methods support retrieval of schedule information for specific dates or as an offset from the current date. Methods also provide program lists grouped by genre and program details, including cast, episode lists, and more.",
			requires_key: "no"
			})
		Api.create({
			name: "ChartLyrics",
			url: "http://www.chartlyrics.com/api.aspx",
			description: "ChartLyrics is a lyrics database sorted by artists or songs. The Lyric API uses either a SOAP or REST interface to allow users and developers to access the database. The API provides 2 functions. SearchLyric to search the available lyrics and GetLyric to retrieve the lyric.",
			requires_key: "no"
			})