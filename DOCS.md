## Project Name - MVC APP 

## Technologies Used

Java
Servlets
JSP (JavaServer Pages)
HTML
CSS
Bootstrap (optional, if used)
Apache Tomcat
XAMPP (or any other web server of your choice)
Maven

## Description

This project is an MVC web application built using Java Servlets and JSP (JavaServer Pages). It follows the Model-View-Controller (MVC) architecture and includes separate controllers, models, and views packages. The project utilizes the Apache Tomcat server for running the web application locally. XAMPP is used for managing the MySQL database. Maven is used as the build tool to manage dependencies and packages.

#Setup Instructions

- Fork the repository
  
- Clone the repository to your local machine using the following command:
$ git clone git@github.com:Zshiva/Java-Assignment.git

## Import the project into IntelliJ IDEA:

- Open IntelliJ IDEA.
- Click on "Open or Import" and navigate to the project's root folder.
- Select the pom.xml file and click "Open" to import the project.

## Configure the Apache Tomcat server:

- Download and install Apache Tomcat (if not already installed).
- Add the Apache Tomcat server in IntelliJ IDEA:
- Open IntelliJ IDEA.
- Click on "Configure" > "Settings" > "Build, Execution, Deployment" > "Application Servers".
- Click on the "+" icon and select "Tomcat Server" > "Local".
- Choose the Tomcat installation directory and click "OK".
- Configure the database connection using XAMPP:

### Install XAMPP and start the Apache and MySQL services.

## Project Structure
- src/main/java: Contains the Java classes.
- Controller: Contains the Servlet classes handling HTTP requests and responses.
- Model: Contains the Java classes representing the data models.

- src/main/webapp: Contains the static resources (HTML, CSS, JavaScript) and JSP files.
- Views: Contains the JSP files for rendering the views.

## Run the project locally:
- The web application will be accessible at http://localhost:8080/Java-Assignment/...
