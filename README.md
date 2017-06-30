# _Zaps Exports_

#### _Online catalog for food distributor, Friday June 30, 2017_

#### By _**Nick Powell**_

## Description

_This is a catalog site for a fictional "zaps Specialty Exports" This site currently allows a user to add a product and product details to the catalog. The catalog is then displayed using filters such as; number of reviews, recently added, and all products.

After product is added. Users are then able to go to a details page about that product. Here they can add reviews with a rating number and a comment._


## Setup/Installation Requirements

### Access Atom Files

* _Ensure connection to the Internet_
* _On a mac using spotlight search type in terminal_
* _Once in terminal enter the following commands to clone the file to your desktop and open the repository:_
```
$ cd desktop
$ git clone https://github.com/n-powell/zaps-exports.git
$ cd zaps-exports
$ bundle install
$ atom .
```
* _This will open all of the files included in the zaps-exports folder including Gemfile, Gemfile.lock, app.rb, README.md, views folder, spec folder, public folder, lib folder_
* _To make changes to the look of the file you will need to access the styles.css file._

### Create Database and Tables
* _In the terminal enter the following commands to start the postgres:_

```
$ postgres
```
* _Open another tab in the terminal enter the following commands to start the databases needed for this program:_

```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

### Run the Program

```
$ rails serve
```
* _Open your browser and enter `localhost:3000` as the URL path._

## Known Bugs

_You may need to reset the database if you run into seeding issues._

```
$ rake db:reset
```


## Support and contact details

_Please contact me for details placeholder@nick.com._

## Technologies Used

* HTML
* CSS
* Bootstrap
* Postgres
* Ruby
* Rails

### License

*This software is licensed under MIT license.*

Copyright (c) 2017 **_Nick Powell_**
