--Copy and paste this into the SQL field. This is required to establish a database connection.

CREATE USER 'AAUser'@'localhost' IDENTIFIED BY 'AAPass';
GRANT SELECT ON animal_alliance.* TO 'AAUser'@'localhost';
GRANT INSERT ON animal_alliance.* TO 'AAUser'@'localhost';
GRANT UPDATE ON animal_alliance.* TO 'AAUser'@'localhost';
GRANT DELETE ON animal_alliance.* TO 'AAUser'@'localhost';
FLUSH PRIVILEGES;