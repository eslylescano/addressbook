

## About AddressBook

AddresBook is a simple CRUD for manage contacts for a user created in Laravel, where you can create, add,delete and update contacts.

## Requirements
Have a php version 7.0.0 install.

## Configuration the project

1) Download the project
(git clone https://github.com/eslylescano/addressbook.git projectname)
cd projectname
composer install(you need to have composer installed)

2) Create a database call: address_book(for example).

3) Open .env file and change the following:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=8889
DB_DATABASE=address_book
DB_USERNAME=root
DB_PASSWORD=root

If you are running in localhost, leave by default DB_HOST=127.0.0.1; if not, add the ip from the server that you are using.

Change port to 3306 if you are running in cloud server.

For DB_DATABASE,DB_USERNAME,DB_PASSWORD change to your own configuration if the you have create a diferent database name, and diferent username and pasword.

4) Run address_book.sql in your database and it will add the tables to your database.

## Default data for testing the application
For testing reasons I have created 3 users:

a) username:user1@gmail.com
   password:123456

b) username:user2@gmail.com
   password:123456

c) username:user3@gmail.com
   password:123456

## Aplication in a real server
http://eslylescano.com/addressbook/

## Portfolio from the developer
http://eslylescano.com