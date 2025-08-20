# Rails Controller & View Lab

Welcome to the Controller & View Practice Lab! This is a Rails 8.0.2.1 app using Ruby 3.4.5.

## Setup Instructions

1. **Install dependencies:**

   ```sh
   bundle install
   ```
2. **Run the server:**

   ```sh
   bin/rails server
   ```

   Visit [http://localhost:3000](http://localhost:3000) in your browser.
3. **Run the test suite:**

   ```sh
   bundle exec rspec
   ```

## Your Task

- Generate a controller named `Pages` with an action `home`.
- Create a view template that displays the text “Welcome to Rails Practice 2”.
- Add a root route pointing to `Pages#home`.

## Example Steps

1. Generate the controller:
   ```sh
   bin/rails generate controller Pages home
   ```
2. Set the root route in `config/routes.rb`:
   ```ruby
   root "pages#home"
   ```
3. Edit the view at `app/views/pages/home.html.erb` to show:
   ```erb
   Welcome to Rails Practice 2
   ```

## RSpec Test

A test is provided to check that visiting `/` returns status 200 and includes “Welcome to Rails Practice 2”.

---

Happy coding!
