# CS 1555 Term Project Milestone 2

### Notes for running our driver program using the PostgreSQL driver
- To run the driver locally, you have to add your username and password on lines 15 & 16 (the username and password that you use to log into the psql shell)
- To compile the driver program:
  - Windows: `javac -cp "postgresql-42.2.18.jar;." team11.java`
  - Mac OS/Linux: `javac -cp postgresql-42.2.18.jar team11.java `
- To execute the driver program:
  - Windows: `java -cp "postgresql-42.2.18.jar;." team11`
  - Mac OS/Linux: `java -cp postgresql-42.2.18.jar:. team11`
