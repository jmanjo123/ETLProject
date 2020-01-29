-- Create tables for raw data to be loaded into
CREATE TABLE listings_locations (
id INT PRIMARY KEY,
city TEXT,
state TEXT,
zipcode INT,
latitude INT,
longitude INT);


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


CREATE TABLE Url (
id INT,
listing_url TEXT,
picture_url TEXT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES  listings_locations(id));


CREATE TABLE Hosts (
id INT,
host_id INT,
host_url TEXT,
host_name TEXT,
host_since DATE,
host_location TEXT,
host_response_rate INT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES listings_locations(id));


SELECT * FROM Hosts