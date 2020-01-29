-- Create tables for raw data to be loaded into

DROP TABLE if exists listings_locations
DROP TABLE  if exists listings_details;
DROP  TABLE  if exists url;
DROP  TABLE  if exists hosts;


CREATE TABLE listings_locations (
id INT PRIMARY KEY,
city TEXT,
state TEXT,
zipcode TEXT,
latitude FLOAT,
longitude FLOAT);


CREATE TABLE listings_details (
id INT ,
name TEXT,
summary TEXT,
property_type TEXT,
bathrooms INT,
bedrooms  INT,
beds INT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES listings_locations(id));


CREATE TABLE url (
id INT,
listing_url TEXT,
picture_url TEXT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES  listings_locations(id));


CREATE TABLE hosts (
id INT,
host_id INT,
host_url TEXT,
host_name TEXT,
host_since DATE,
host_location TEXT,
host_response_rate INT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES listings_locations(id));


SELECT * FROM url
SELECT * FROM hosts
SELECT * FROM listings_locations
SELECT * FROM listings_details
