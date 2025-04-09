

CREATE user 'charity'@'localhost' IDENTIFIED BY 1234;
CREATE user 'Neo'@'localhost' IDENTIFIED by 1234;
CREATE user 'lucy'@'localhost' IDENTIFIED by 1234;
CREATE user 'ann'@'localhost' IDENTIFIED by 1234;
CREATE user 'james'@'localhost' IDENTIFIED by 1234;
CREATE user 'mike'@'localhost' IDENTIFIED by 1234;




CREATE role 'admin';
CREATE role 'user';
create role 'guest';




GRANT ALL PRIVILEGES ON bookstore.* to 'admin';
GRANT SELECT,UPDATE,DELETE,INSERT ON bookstore.* to 'user';
GRANT SELECT ON bookstore.* to 'guest';




GRANT 'admin' to 'lucy'@'localhost';
GRANT 'admin' to 'james'@'localhost';
GRANT 'user' to 'mike'@'localhost';
GRANT 'user' to 'Neo'@'localhost';
GRANT 'guest' to 'charity'@'localhost';
GRANT 'guest' to 'ann'@'localhost';




SET DEFAULT ROLE ALL TO 'lucy'@'localhost';
SET DEFAULT ROLE ALL TO 'james'@'localhost';
SET DEFAULT ROLE ALL TO 'mike'@'localhost';
SET DEFAULT ROLE ALL TO 'Neo'@'localhost';
SET DEFAULT ROLE ALL TO 'charity'@'localhost';
SET DEFAULT ROLE ALL TO 'ann'@'localhost';





SHOW GRANTS FOR 'ann'@'localhost';
SHOW GRANTS FOR 'charity'@'localhost';
SHOW GRANTS FOR 'Neo'@'localhost';
SHOW GRANTS FOR 'mike'@'localhost';
SHOW GRANTS FOR 'james'@'localhost';
SHOW GRANTS FOR 'lucy'@'localhost';







