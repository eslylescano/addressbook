

## About AddressBook

AddresBook is a simple CRUD for manage contacts for a user created in Laravel, where you can create, add,delete and update contacts. Also have the funcionality of search contacts int the database.

## Installation
Have php version 7.0.0 installed or higher.

1)Download the project(git clone https://github.com/eslylescano/addressbook.git projectname)

2)cd projectname

3)run this command: composer install (you need to have composer installed)
https://getcomposer.org

4) create .env file in the root directory using .env.example file

5)run this command:php artisan key:generate

For more details watch: https://www.youtube.com/watch?v=QwWnXNyhioM

## Configuration the project
1) Create a database call: address_book(for example).

2) Open .env file and change the following:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
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