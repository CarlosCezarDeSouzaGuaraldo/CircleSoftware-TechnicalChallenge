# CircleSoftware-TechnicalChallenge :computer:

CircleSoftware-TechnicalChallenge is a web application developed with Ruby on Rails to generate the last digit of a 13-character ISBN code, from the first 12 digits entered by the user.

<div align="center">
  <img src="https://user-images.githubusercontent.com/66181262/236372115-0b94c85a-2840-484d-89f0-8214e7970430.png" width="400"/>
</div>

## Languages and Libraries Used: :books:

* Ruby 3.0.2
* Rails 6.1.4.1
* RSpec 5.0.0

## Environment Setup :wrench:

Before running the project, make sure the following tools are installed on your machine:

* Ruby
* Rails
* Git

Next, run the following commands in your terminal to clone the project and install the dependencies:

```console
$ git clone https://github.com/CarlosCezarDeSouzaGuaraldo/CircleSoftware-TechnicalChallenge.git

$ cd CircleSoftware-TechnicalChallenge

$ bundle install
```

## Testing the Application :test_tube:

To run automated tests, simply execute the following command in the terminal:
```console
$ rspec
```

That will run all automated tests in the project and show the results in the terminal. Make sure all tests have passed before making any changes to the code or deploying to production.

## Running the Project :rocket:

To run the project, simply run the following command in the terminal:

```console
$ rails s
```

This will start the local server on port 3000. To access the project, simply open your browser and type the following URL: 

`http://localhost:3000/api/v1/isbn/:id`

> The **`:id`** parameter is the first 12 digits provided by the user.
