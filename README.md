# PHP Skeleton Project

This project is a basic PHP knowledge application. It uses MVC (Model-View-Controller) to host the user's authentication, database connection and transfer as basic. The project is designed to be programmed without requiring programming. It is extremely light and fast.

## Core Directory

- **App.php**: Manages the application container. Used for storing and resolving dependencies.
- **Authenticator.php**: Contains functions necessary for user authentication processes.
- **Container.php**: The container class that facilitates binding and resolving dependencies.
- **Database.php**: Contains functions required for database connections and query operations.
- **functions.php**: Contains helper functions.
- **Response.php**: Defines HTTP response codes.
- **Router.php**: Manages HTTP routing.
- **Session.php**: Provides functionality for session management.
- **ValidationException.php**: A custom exception class used to handle validation errors.
- **Validator.php**: Contains data validation functions.

## Http Directory

- **Controllers**: Controllers that handle HTTP requests are located here.
- **Forms**: Contains classes related to form processing and validation.

## Public Directory

- **index.php**: The entry point of the application. All requests are initiated from here.
- **views**: The directory containing files that mix HTML and PHP.

## Root Directory

- **bootstrap.php**: Initializes the application container and binds necessary dependencies.
- **config.php**: Contains application configuration settings.
- **routes.php**: Defines the routing settings for the application.

## Installation

1. **Create the Database**: Create a database named `php_skeleton`. You can use SQL files to create the necessary tables.
2. **Configure**: Update the `config.php` file according to your needs. Add your database connection settings here.
3. **Install Dependencies**: Run `composer install` to install any dependencies.
4. **Run Your Project**: Start the project by running the `public/index.php` file on your web server.

## Usage

After starting your project, you can navigate to the following URLs:

- Home: `/`
- About: `/about`
- Contact: `/contact`
- Notes: `/notes`
- Create Note: `/notes/create`
- Register: `/register`
- Login: `/login`

## Contributing

If you would like to contribute to this project, please open a pull request or report any issues.

## License

This project is licensed under the MIT License. For more information, please refer to the LICENSE file.
