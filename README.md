# Installation Steps (for windows) 
----------------------------------------
# Day1
### Step 1 - Install Ruby from official site (https://rubyinstaller.org/).    
### step 2 - To check it is properly installed or not. Type ruby -v (in cmd).   
### step 3 - Now install the gem using cmd(admin) -> gem install rails     
### step 4 - Check it is installed or not using command -> rails -v    
### step 5 - Then create app in a a seprate folder for rails use command -> rails new YOUR_APP_NAME    
### step 6 - Now navigate to the folder in cmd. Then run the command to start the server -> rails s   
### step 7 - Then copy the url (default 3000) and paste on the browser if it is working then it is successfully installed.   
### step 8 - If you want to change the port number then only use the command -> rails s -p YOUR_PORT_NUM.    

## Some rails commands 

#### create this rails application -> rails new App_Name -d  postgresql   (here d for custom database)
### to start ther rails server -> rails s    
### create rails database -> rails db:create     
### now setup the database.yml file by pasting the code ->   
##### Inside:   
#####  default: &default     
#####  database: postgresql     
#####  username: postgres   #(if ur username is postgres)
#####  password: YOUR_PASSWORD  
#####  host: localhost   

#### Then try running Your app (it should run without error)

## Folder Structuring
#### app -> all files of MVC 
#### bin -> provides supports for the commands that we run
#### config -> helps to manage the configration for production,testing and development
###### config--> environments -->  for production,testing and development enviroments  
###### config--> locales (for which language you want to show to user)   
###### config--> importmap (related to liberary)   
###### config--> routes (by this url related query will be done)
#### db folder(all the database related queries like seeding, etc)    
#### log wil keep all the details about app like errors,time,response success/fail,etc    
#### public (will have public assets like favicon,png,images,etc)
#### tmp (for cache related files)
#### vendor (for third party liberary)   
#### Gemfile (keep liberary versions)


# DaySprings – Ruby & Rails Learning Notes

---

## Day 1 – Ruby & Rails Basics

### Ruby

* Ruby is a **dynamically typed**, **open-source** programming language known for **simplicity** and **developer productivity**.
* Everything in Ruby is an **object**.
* Latest stable version: **Ruby 3.x**.
* Ruby generally follows **SOLID principles** (with limited emphasis on Interface Segregation due to Ruby’s dynamic nature).

### Rails

* Rails is a **web application framework built on Ruby**.
* It helps developers build applications faster by providing conventions and boilerplate code.
* Latest major version: **Rails 8.x**.

* Ruby alone can create applications, but frameworks like Rails:

  * Reduce development time
  * Provide structure
  * Generate boilerplate code automatically

### Creating a Rails Project

Rails projects can be created in multiple ways:

1. `rails new project_name`
2. `rails new project_name --api` (API-only / two-tier architecture)
3. **Scaffold** (auto-creates MVC components)

### Commands to Remember

* `ruby --version`
* `rails --version`
* `gem install rails`
* `rails new ProjectName`

---

##  Day 2 – PostgreSQL, Scaffold & Console

### Project with PostgreSQL

Main database commands:

* `rails db:create` → Creates the database
* `rails db:migrate` → Applies schema changes
* `rails db:seed` → Inserts data from `seeds.rb` file(first create the seed.rb file).

* Correct order is important: **create → migrate → seed**

### Scaffold

* Scaffold generates the **complete skeleton** of an application:

  * Model
  * Controller
  * Views
  * Routes

Command: rails generate scaffold Customer name:string email:string     

Controller-only generation: rails generate controller Customers    

### Project Creation Commands

* rails new project_name
* rails new project_name -d postgresql
* rails new project_name -d postgresql --skip-test

### Rails Console

* rails console (provides an environment where we can run Rails commands).

---

##  Day 3 – Rails Features & File Structure

### Main Features

#### Syntactic Sugar (Rails auto-generates MVC components without writing everything manually).

#### Convention Over Configuration (Rails uses naming conventions to auto-configure behavior).

```ruby
Naming Rules:
rails generate model Customer   (to generate Customer model, and first letter will be capital like here "Customer" )
```

### Config Folder

Controls how the Rails application behaves.

Important files:

* `config/database.yml` → Database configuration
* `config/routes.rb` → Maps URLs to controllers
* `config/application.rb` → Main app configuration
* `config/environment.rb` → App entry point
* `config/environments/` → environment-specific settings


##  Day 4 – app Folder & Ruby Basics

### app Folder

Main application code lives here.

* **controllers** → Handle requests & responses
* **views** → UI files (`.html.erb`)
* **models** → Database logic
* **javascript** → Frontend behavior (Rails 8 integration)
* **mailers** → Sending emails
* **jobs** → Background tasks

### Ruby Data Types

* String (mutable)
* Numbers (integer, float) 
* Symbol (immutable)
* Boolean (true, false, nil)
* Arrays
* Hashes

All data types are objects.

### Variables

* Local → `name`
* Global → `$name`
* Instance → `@name`
* Class → `@@name`
* Constant → `NAME`

---

## Day 5 – Methods, Type Casting & Product Scaffold

* Single-line → `#`   
* Multi-line → `=begin`  `=end`  

### Type Casting

* User input is always a **String**.
* Ruby does **not** do implicit type casting.
* so for the integer inputs we need to convert it into number.

Examples:

* `"10".to_i`
* `10.to_s`
* `"10.5".to_f`

### Product Scaffold

* Command: rails generate scaffold Product name:string description:text price:decimal stock:integer is_active:boolean

* After any DB-related change run: rails db:migrate


### Ways to Insert Data

1. **UI** (Rails-generated forms)
2. **Manual SQL (DBeaver)**
3. **Seeds file (`db/seeds.rb`)**
4. **Rails Console**

Example SQL:

```sql
INSERT INTO products (name, description, price, stock, is_active, created_at, updated_at)
VALUES ('IQ', 'The IQ new product', 80, 2, TRUE, '2026-01-16', '2026-01-16');
```

Example seed:

```ruby
Product.create(name: "P1", description: "The P1 product", price: 900, stock: 30, is_active: true)
```
---

## Day 6 – Ruby Loops & Enumerable Methods

##  Ruby Loops

### `for` Loop

Used when the range or count is known.

```ruby
arr = [2, 4, 6, 8, 10, 12]

for i in 10..15   # inclusive range
  print i
end
```

Key Points:

* Automatically increments
* Manual increment does not work
* `..` includes both start and end values

---

### `while` Loop

Executes while the condition is true.

```ruby
i = 0
while i <= 10
  puts i
  i += 1
end
```

Key Points:

* Condition checked before execution
* Manual initialization and increment required

---

### `loop do`

Infinite loop with explicit exit condition.

```ruby
k = 0
loop do
  puts "student : #{k}"
  k += 1
  break if k > 30
end
```

Key Points:

* Runs continuously
* `break` is mandatory to stop

---

### `until` Loop

Opposite of `while`.

```ruby
c = 0
until c > 15
  puts c
  c += 1
end
```

Key Points:

* Runs when the condition will be false

---

### Loop Control Keywords

```text
break → exits the loop
next  → skips current iteration
redo  → repeats current iteration
```

---

##  Enumerable Methods

### Array Used

```ruby
arr = [2, 4, 6, 8, 10, 12]
```

---

### `select` and `select!`

```ruby
arr.select { |num| num > 4 }
arr.select! { |num| num > 4 }
```

Key Difference:

* `select` returns filtered values
* `select!` modifies the original array

---

### `reject` and `reject!`

```ruby
arr.reject { |num| num > 2 }
arr.reject! { |num| num > 2 }
```

Key Difference:

* `reject` keeps original array unchanged
* `reject!` permanently modifies it

---

### `any?` and `all?`

```ruby
arr2 = [1, 2, 3, 4, 5]

arr2.any? { |num| num > 5 }
arr2.all? { |num| num > 0 }
```

Meaning:

* `any?` → at least one condition is true
* `all?` → all conditions are true

---

### `map`, `collect`, `each`

```ruby
arr2.map { |num| num ** 2 }
arr2.collect { |num| num ** 2 }
arr2.each { |num| num ** 2 }
```

Key Difference:

* `map` and `collect` return a new array
* `each` returns the original array

---

## Key Learning (Day 6)

* Ruby offers multiple loop types for different scenarios
* Enumerable methods reduce manual looping
* Methods end with `!` change the data in-place (does changes in same array)

---
**Day 7 – Ruby OOPS (Inheritance & Method Overriding)**
---
### Classes & Objects

* A class is a blueprint for creating objects.
* An object is an instance of a class.
* Methods define the behavior of an object.
* Instance variables (`@variable`) store object-specific data.

---

### Inheritance

* Inheritance allows one class to reuse another class’s methods and variables.
* Child classes inherit behavior from parent classes using `<` symbol.
* Helps reduce code duplication.
* Parent instance variables are accessible in child classes.

---

### Method Overriding

* Child class can redefine a method from the parent class also known as Overriding.   
* Ruby always calls the child method first if names match.  

---

### `super` Keyword

* `super` calls the parent class method.
* Can be used with or without arguments.
* Helps extend parent functionality instead of replacing it.

---

### Method Lookup

* Ruby searches for methods in this order:

  1. Current class
  2. Parent class
  3. Object(kernel,module)
  4. Basic Object

* `ancestors` shows the method lookup whole chain.

---

### Built-in Reflection Methods

* `respond_to?` checks if an object can respond to a method.
* Useful for safer method calls and debugging.

---

### Method Overriding Example (Concept)

* Same method name in parent and child.
* Parent logic can be reused using `super`.
* Child method changes output or behavior.

---

## Day 8 – Conditional Statements & Methods in Ruby

### 1. Conditional Statements

#### if / else

Check a condition and run code accordingly:

```ruby
stock = 20
if stock > 0
  puts "Item available"
else
  puts "Item not available"
end
```

### Ternary Operator

Shorter version of if/else:

```ruby
is_active = true
puts is_active ? "Active" : "Not Active"
```

### elsif

Check multiple conditions in sequence:

```ruby
price = 250
if price < 200
  discount = 10
elsif price < 300
  discount = 20
else
  discount = 5
end
puts discount
```

### case / when

Cleaner way to check multiple values:

```ruby
case price
when 100..200 then discount = 10
when 201..300 then discount = 20
else discount = 5
end
puts discount
```

### unless

Runs code only if the condition is false (it is opposite of if):

```ruby
email = nil
puts "Email missing" unless email
```

---

## 2. Methods & Access Modifiers

Ruby lets you control who can use your methods:

* public → accessible anywhere
* private → can only be called inside the class
* protected → accessible in class and subclasses

Example:

```ruby
class Product
  def public_method
    puts "I am public"
  end

  private
  def private_method
    puts "I am private"
  end
end
```

## Day 9 Rails Models: Customer & Product Validations

### Customer Model (`Customer < ApplicationRecord`)
### Built-in Validations

* Name is **required** and limited to 3–20 characters:

```ruby
validates :name, presence: true, length: { minimum: 3, maximum: 20 }
```

* Email is **required** and **unique**:

```ruby
validates :email, presence: true, uniqueness: true
```

### Custom Validations

#### Profanity check for `name` and `email`:

```ruby
validate :deny_profanity

def deny_profanity
  profanity_words = /lopper|nonsence|idiot/i
  errors.add(:name, "is inappropriate") if name =~ profanity_words
  errors.add(:email, "is inappropriate") if email =~ profanity_words
end
```

* Check if email is present:

```ruby
def check_email
  email.present?
end
```

#### Usage Example (Rails Console)

```ruby
customer = Customer.first
customer.check_email
customer.check_name
```

## Product Model (`Product < ApplicationRecord`)

### Built-in Validations

* Name, description, stock, price, and is_active are validated:

```ruby
validates :name, presence: true, length: { minimum: 4, maximum: 30 }
validates :price, numericality: { greater_than_or_equal_to: 1 }
validates :stock, numericality: { greater_than_or_equal_to: 1 }, length: { maximum: 500 }
validates :description, length: { minimum: 8, maximum: 460 }, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: "only letters, numbers, and spaces allowed" }
validates :is_active, presence: true, acceptance: true, if: :price?
validates :stock, presence: true, if: :is_active?
```

### Custom Validation

* Ensure `is_active` is checked only if `price` and `stock` are present:

```ruby

validate :check_is_active

def check_is_active
  if is_active? && (price.blank? || stock.blank?)
    errors.add(:is_active, "cannot be checked unless price and stock are filled out")
  end
end
```

### Helper Methods

#### Check description validity:

```ruby
def check_validity
  description =~ /\A[a-zA-Z0-9 ]+\z/
end
```

* **Check stock availability**:

```ruby
def check_availability
  stock > 0
end
```

**Apply discount**:

```ruby
def apply_discount(discount_percentage)
  price - (price * discount_percentage / 100)
end
```

 **Calculate total amount** (with discount and stock check):

```ruby
def total_amount
  if check_availability
    apply_discount(10).round
  else
    "Item is not available"
  end
end
```

### Notes with some imp points about code 

1. **Built-in validations cover most use-cases**

   * Presence, uniqueness, numericality, length, format, acceptance, inclusion/exclusion.
   * Saves time and keeps code DRY.

2. **Custom validations enforce business rules**

   * For example:

     * Profanity filters (`deny_profanity`)
     * Stock-price relationships
     * Conditional validations (`is_active` only if price & stock exist)

3. **Use helper methods in models**

   * Methods like `check_availability`, `apply_discount`, `total_amount` make logic reusable and testable.

4. **Always check dependencies**

   * Example: `is_active` cannot be true unless `price` and `stock` are present.
   * Helps maintain **data integrity**.

5. **Display errors properly in views**

   * Use `@model.errors.full_messages` to show user-friendly error messages.
   * Prevents saving invalid data and improves UX.

6. **Use format validations to restrict unwanted input**

   * Avoid special characters in fields like `name` and `description`.
   * Example: `/\A[a-zA-Z0-9 ]+\z/`

7. **Conditional validations are powerful**

   * Use `if:` or `unless:` to run validations only under certain conditions.
   * Example: `validates :stock, presence: true, if: :is_active?`

8. **Never manually edit `schema.rb` or database fields**

   * Always use **migrations** to make changes.
   * Prevents schema inconsistency.

9. **Keep validation errors concise and informative**

   * Helps users understand what went wrong without confusing messages.

10. **Test validations in Rails console**

    * Always try creating invalid and valid records in the console to confirm your rules work.

## Day 10 – Rails Scopes

#### Def:- A scope is a custom query defined in a Rails model. It is mainly used when the same query is needed multiple times.
---

## Scope Examples

### 1. Out of Stock products

Fetch products whose stock is zero or less.

```ruby
scope :out_of_stock, -> { where("stock <= ?", 0) }
#or
scope :out_of_stock, -> { where(stock: 0) }
```

---

### 2. Writing Custom / Raw SQL Query

Scopes can also contain raw SQL queries.

```ruby
scope :test_scope, -> { query {} }
```

---

### 3. Whitelisted products

Fetch products whose IDs are in a given list.

```ruby
scope :whitelisted_products, -> { where("id IN (?)", [1, 2, 3]) }
```

---

### 4. Unique Emails

Fetch distinct email values from records.

```ruby
scope :unique_emails, -> { where(email: "rahul@gmail.com").select(:email).distinct }
```

---

### 5. Blacklisted Customers (Parameterized Scope)

Scopes can accept parameters.

```ruby
scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
```

Usage:

```ruby
@customers = Customer.blacklisted_customers([3, 6, 9, 10])
```

---

## Method Chaining

Scopes can be chained together because they return ActiveRecord relations.

Example:

```ruby
Product.out_of_stock.whitelisted_products
```

---

#### Controller Examples ---like how will use

#### Customers Controller

```ruby
def index
  @customers = Customer.all
  # @customers = Customer.blacklisted_customers([1,2,3])
end
```

---

#### products Controller

```ruby
def index
  @products = Product.out_of_stock
end
```

---

## Day 11 -> Republic Day (no task given)

## Day 12 - Notes

| Component Name        | Available From (Rails) | What it is / Why it is used                                                                                        |
| --------------------- | ---------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **Active Model**      | Rails 3.0              | Provides model features like validations and callbacks **without a database**. Used when you don’t need DB tables. |
| **Active Record**     | Rails 1.0              | ORM layer. Connects Rails to database, handles CRUD, migrations, and represents table rows as Ruby objects.        |
| **Action Controller** | Rails 1.0              | Handles browser requests, talks to models, and sends data to views. Acts as the app’s manager.                     |
| **Action View**       | Rails 1.0              | Generates HTML using ERB/HAML and displays data received from controller.                                          |
| **Action Dispatch**   | Rails 1.0              | Handles routing and decides which controller and action should handle a request.                                   |
| **Action Mailer**     | Rails 1.0              | Used to send emails like welcome emails, password reset, notifications, etc.                                       |
| **Active Support**    | Rails 1.0              | Utility library that extends Ruby with helpers like date, time, string helpers.                                    |
| **Active Job**        | Rails 4.2              | Manages background jobs (long-running tasks like emails, reports). Works with Sidekiq, Resque, etc.                |
| **Action Cable**      | Rails 5.0              | Provides WebSocket support for real-time features like chat and live notifications.                                |
| **Active Storage**    | Rails 5.2              | Handles file uploads (images, videos, documents) and stores them locally or on cloud (S3, etc.).                   |


### Task 1. Generating a Controller 
* rails generate controller admin
* Rails creates files related to controller and views (Action Pack).
* these are the file will be genereted
```ruby 
app/controllers/admin_controller.rb → controller file   
app/views/admin/ → folder admin views    
app/helpers/admin_helper.rb → helper file   
test/controllers/admin_controller_test.rb → controller test file   
```
--- 

### Task 2. Generating a Model
* To generate: 
```ruby 
rails generate model admin
```

```ruby 
app/models/admin.rb → model file
db/migrate/XXXXXXXX_create_admins.rb → migration file
test/models/admin_test.rb → model test file
test/fixtures/admins.yml → test data
```
* then run this command: rails db:migrate is used to modify the database schema   

* If we Deleting show.html.erb file
* Error: ActionController::UnknownFormat in CustomersController#show CustomersController#show is missing a template for this request format.

** why?**   
* Show action(method) exists in the controller and when we hit that url it will try to call the show.html.erb view file, which is missing.   

---

### Task 3 (Try this in routes):
```ruby 
resources :products, except: [:show]
resources :products, only: [:new, :destroy]
```

* resources :products, except: [:show] (It will create index, new, create, edit, update, destroy but not show page).   
* Then If we try to open show page. Will get 
```ruby
Error Class: ActionController::RoutingError ( "No route matches [GET] '/products/1'" (or whatever ID you use)) 
```
* To create only a specific set of routes we use -> only.  
* only these routes will be create -> [:new, :destroy]
* URL: /products/1    -> (here 1 is id to show)  
```ruby 
Error we get: We will get this error,ActionController::RoutingError , No route matches [GET] "/products/1"
```

--- 

## Day 13 (add_column, action_text)

### Some routes commands:

```ruby 
rails route
rails route | grep product_path
```

### ⚠️Note: WE SHOULD NOT MODIFY THE schema.rb (db file)

## Concepts

### For adding column in your Database (follow the case):
```ruby 
command :- rails generate migration className_with_tableName column_name:datatype_based_sql

Ex:- rails generate migration AddColumnPhoneToCustomer1 phone_number:integer

Then Run: rails db:migrate
```
* then add that exact column name in table_name_controller.
* In here we need to pass proper readable classname with attached table name and then column_name as we want.
* then check in Your schema.rb it is added or not.

### Steps to create action text (in you form).
* before installing check your app folder inside your applicaiton, javascript folder is present or not. 
* Then check inside or search using ctrl+p (better) about these files are present or not.
```ruby
 1) applicaiton.js
 2) importmap.rb
```

* if not present run below commands:

```ruby
for rails version 8 -> rails importmap:install
for rails version 7 -> rails javascript:install
```

* to bring rich text editing capabilities to your Rails application form like (adding media files, adding underlines, itallic, bullets point in the textarea, etc).

* Then run below command: 

```ruby 
command :- rails action_text:install
```
* This will modify above mentioned two files and create a new file with actiontext.css in app/assets/stylesheet

## Tasks :

### 1) compare the difference between schema.rb file before and after installation action_text.

* after installation we got some changes :
```begin
  1) create_table "action_text_rich_texts"
  2) create_table "active_storage_attachments"
  3) create_table "active_storage_blobs"
  4) create_table "active_storage_variant_records"
  5) add_foreign_key "active_storage_attachments"
  6) add_foreign_key "active_storage_variant_records"

  these are the some code snippets added.
```  

### 2) To inspect in each controller method and acknowledgement using below command:

```ruby
  rails params:inspect
```

### 3) create two array and check intersection output (&) between them.

```ruby
a1 = [1,2,3,6,3,nil,4,5,nil,6,nil,"",""]
a2 = [1,4,2,4,7,9]

p a1&a2     # [1, 2, 4]
p "------"
p a1&a1     # [1, 2, 3, 6, nil, 4, 5, ""]
# we are getting the distinct value when we are doing intersect with same array
```

### 4) Implement action_text in Product and Customer table 

* Did changes in the code for these files for implementing it.
```begin
steps 1: model/product.rb
steps 2: product_controller.rb(in that product_params action)
steps 3: write in view (_form, _edit,etc).
```

---

## Day 14 (active_storage, column_adding_migration)

## Tasks :

### 1) create column for invoice through attachment (has_one_attached) in product table

* Step 1: add this in table.rb (model) file -> has_one_attached: column_name
* step 2: add the same col_name (in symbol form) in def customer1_params of controller.  
* step 3: then implement it in the view wherever needed(in html.erb files). (Like this -> <%= form.rich_text_area :col_name %> )

### 2) create column dateofbirth(DOB) in customer using generate migration.

* Step 1: run the command-> rails generate migration Add/RemoveColumnCol_nameToTab_name col_name:datatype (based on sql)
```ruby 
Ex : rails generate migration AddColumnBirthDateToCustomer1 birth_date:date
```
* step 2: then run -> rails db:migrate
* step 3: check schema.rb it is added or not.

### 3) Form helpers (rails docs)


## Concepts:

### For active storage installation
```ruby
* Install using terminal :- rails active_storage:install
* this should be :local if not change it :- config.active_storage.service = :local
* Follow task 1 to use.
* for cloud configration we configure config/storage.yml
```

### For using active_storage in Html use -> <%= form.file_field :col_name %> 

### Priority Order for writing in model.rb file (good practice)

* 1) action_text/storage (at the top most)
* 2) validation
* 3) scopes
* 4) methods

### For allowing multiple file adding/selection using html.erb add -> multiple:true (in .html.erb file)
---

## Day 15 (Action_Mailer) (first sending we will configure)

## Tasks : create Order table in same application
* Step 1 generate model with col names(details:string, count:int)
* Step 2 generate controller
* Step 3 run db:migrate
* Step 4 empty controller and view files will be generated we need to add code to all the classes now Perform CRUD 

## Concepts and commands

### Rails Action Mailer with Letter Opener – Step‑by‑Step Notes Rails Action Mailer with Letter Opener – Step-by-Step

#### Protocols(rules) for mails - SMTP, POP, IMAP
####  Restful api is capable of handling all type of data like JSON, XML, Hash, etc.  

### What is Action Mailer?
* Action Mailer is used to send emails from a Rails application.This class is present in rails since rails V.1
* It is commonly used for:
  * Welcome emails
  * Password reset emails
  * Notifications
* In development mode, we use **Letter Opener** to preview emails in the browser instead of sending real emails.

## Steps

### Step 1: Generate Mailer

```ruby
command : rails generate mailer CustomerMailer
```

* This creates:
  1) `app/mailers/customer_mailer.rb`
  2) `app/views/customer_mailer/` (folder for email templates)

### Step 2: Enable Action Mailer

* Open → `config/application.rb`
* Add below line:

```ruby
require "action_mailer/railtie"
```

* This loads Rails mailer functionality into your application.

### Step 3: Configure Development Environment

* Open → `config/environments/development.rb`
* Add:

```ruby
config.action_mailer.perform_deliveries = true
config.action_mailer.delivery_method = :letter_opener
```

* Meaning:

  * `perform_deliveries = true`
    → Allows sending emails  

  * `delivery_method = :letter_opener`
    → Opens emails in browser instead of sending real emails  

### Step 4: Write Mailer Logic

* Open → `app/mailers/customer_mailer.rb`

```ruby
class CustomerMailer < ApplicationMailer
  def welcome_email
    @customer = params[:customer]
    mail(to: @customer.email, subject: "Welcome to my app...")
  end
end
```

* What happens here:

  * Receives customer data using `params`
  * Sends email to customer's email address
  * Sets subject line

### Step 5: Create Mailer View (Email Template)

Create file:

`app/views/customer_mailer/welcome_email.html.erb`

```html
<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <h1>Welcome to New Connection App, <%= @customer.name %>!</h1>
    <p>
      You have successfully joined this community
      your email is: <%= @customer.email %>.<br>
    </p>

    <p>Thanks for joining and have a fantastic day!</p>
  </body>
</html>
```

* This is the actual email template that users will receive.

### Step 6: Trigger Email from Controller

* Open → `customers_controller.rb`
* Add:

```ruby
CustomerMailer.with(customer: @customer).welcome_email.deliver
```

* When customer is created → welcome email is sent automatically.

### Step 7: Add Required Gems

In `Gemfile`:

```ruby
gem "letter_opener", group: :development
gem "letter_opener_web", group: :development
```

Then run:

```ruby
bundle install
```

* These gems:
  * Prevent real email sending in development
  * Open emails in browser

### Step 8: Add Route for Email Preview

In `config/routes.rb`:

```ruby
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
```

Now visit in browser:

```ruby
http://localhost:3000/letter_opener
```

* All sent emails will be visible here.

## Flow Summary

1) Generate Mailer  
2) Enable Action Mailer  
3) Configure Development Settings  
4) Write Mailer Method  
5) Create Email Template  
6) Trigger from Controller  
7) Add Gems  
8) Preview Emails in Browser  


# Day 16 – Action Mailbox (Receiving Emails in Rails)

## Concepts

### What is Action Mailbox?
* Action Mailbox is used to receive incoming emails in a Rails application.
* It routes emails to mailboxes.
* It processes email content inside the application.
* Useful for:
  * Support systems
  * Contact forms via email
  * Automated email-based workflows

## Tasks : No Task

### 1) Install Action Mailbox

```ruby
command : rails action_mailbox:install
```

* Generated files:

  1) `app/mailboxes/application_mailbox.rb`  
  2) `db/migrate/XXXXX_create_action_mailbox_tables.action_mailbox.rb`

### 2) Run Database Migration

```ruby
command : rails db:migrate
```

* Table created:

  * `action_mailbox_inbound_emails`

* Purpose:
  * Stores all incoming emails.
  * Tracks status of received emails.

### 3) Production Configuration

* Open → `config/environments/production.rb`

Add:

```ruby
config.action_mailbox.ingress = :any_ingress_server
```

* Default ingress is:

```ruby
:relay
```

* Ingress defines how emails enter your Rails application.

### 4) Application Mailbox Routing

* Open → `app/mailboxes/application_mailbox.rb`

```ruby
class ApplicationMailbox < ActionMailbox::Base
  routing all: :support
end
```

* Meaning:

  * All incoming emails are routed to `SupportMailbox`.

### 5) Generate Support Mailbox

```ruby
command : rails generate mailbox support
```

* Generated files:

  1) `app/mailboxes/support_mailbox.rb`  
  2) `test/mailboxes/support_mailbox_test.rb`

### 6) Support Mailbox Logic

* Open → `app/mailboxes/support_mailbox.rb`

```ruby
class SupportMailbox < ApplicationMailbox
  def process
    # this action is for processing emails 
    # Mail.decoded # for fetching mail body
    # Mail.from    # f\from whom mail was sent
    # Mail.subject # give the subject
  end
end
```

* The `process` method:
  * Handles incoming email data.
  * Allows you to store email content.
  * Can trigger business logic.

### 7) View Incoming Emails (Development Mode)

Start server:

```ruby
rails s
```

Open in browser (at this link incoming Emails will be Present):

```
http://127.0.0.1:3000/rails/conductor/action_mailbox/inbound_emails
```

You can:

* View inbound emails  
* Create test emails using form or raw source  
* Check message ID  
* Check delivery status  

## Flow Summary

1) Install Action Mailbox  
2) Run Migration  
3) Configure Ingress  
4) Set Routing in ApplicationMailbox  
5) Generate Custom Mailbox  
6) Define process Method  
7) View & Test Incoming Emails  

---

# Day 17 – Namespaced Models & Active Record Methods



## 1) Creating Namespaced Model (Under a Model)

### Generate Migration for Namespaced Model

```ruby
command : rails generate migration Modelname::NamedscopeModelname
```

Example:

```ruby
rails generate migration Product::Category
```

Then run:

```ruby
rails db:migrate
```

This creates a namespaced structure like:

```
app/models/product/category.rb
```



## 2) Adding Column to Namespaced Model

```ruby
command : rails generate migration AddColumnToModel_Name column:datatype
```

Example:

```ruby
rails generate migration AddColumnCategory_nameToProductCategory category_name:string
```

Then:

```ruby
rails db:migrate
```



## Active Record Methods

### Insert Methods

```ruby
Model_name.insert({column: value, column: value})

Model_name.insert({})

Model_name.insert_all([{},{},{},...])
```

* `insert` → inserts single record (without validations/callbacks)
* `insert_all` → inserts multiple records at once



### Find Methods

```ruby
Model.find(id)
```
* Returns record if present  
* Raises exception if not found  

```ruby
Model.find_by(id: id)
```
* Returns record if present  
* Returns `nil` if not found  



### Record Position Methods

```ruby
Model.first
Model.second
Model.third
Model.fourth
Model.fifth
Model.last
```

Used to fetch records based on position.

## Summary

## Day 17
* Namespaced Models
* Adding columns to namespaced tables
* Active Record insert & find methods

---

## Day 18 – Active Support & Core Extensions


## 1) Core Extensions

Rails provides extra helper methods via **Active Support**.

These methods are not part of pure Ruby — they are available only inside Rails.


## Date & Time Calculations

### Current Time

```ruby
Time.zone.now
```

Example:

```ruby
a = Time.zone.now
a + 2.day
a + 3.week
a + 3.month
a + 2.hour
a + 2.days
```

Rails automatically understands:

* `n.day`
* `n.days`
* `n.week`
* `n.month`
* `n.hour`

Example Output:

```
2026-02-04 05:42:22 UTC
a + 2.day  => 2026-02-06
a + 3.week => 2026-02-25
a + 3.month => 2026-05-04
```


## Date Methods

```ruby
Date.today
Date.new(year, month, day)
```

Beginning & End Methods:

```ruby
Date.today.beginning_of_day
Date.today.beginning_of_week
Date.today.beginning_of_month
Date.today.beginning_of_year
```

```ruby
Date.today.end_of_day
Date.today.end_of_week
Date.today.end_of_month
Date.today.end_of_year
```


## 2) Instrumentation (Pub/Sub)

* Rails supports Publish-Subscribe pattern.
* Used internally for logging, monitoring, performance tracking.


## 3) ActiveSupport::Concern

* Used to organize shared modules cleanly.
* Helps in writing reusable logic.
* Avoids manual `included do` boilerplate issues.


## 4) Multi-language Translations (I18n)

Rails uses `I18n` module for translations.

Configuration file:

```
config/locales/en.yml
```

I18n stores translation keys and values.

Example:

```ruby
I18n.t("welcome.message")
```


## 5) Active Support Utility Methods

These methods work on Strings, Arrays, Hashes, Objects.

### Blank / Present / Nil / Empty

```ruby
" ".blank?    # true
[].blank?     # true
{}.blank?     # true
```

```ruby
" ".nil?      # false
[].nil?       # false
{}.nil?       # false
```

```ruby
" ".present?  # false
[].present?   # false
{}.present?   # false
```

```ruby
"".empty?     # true
[].empty?     # true
{}.empty?     # true
```

### Difference Between Them

| Method | Meaning |
|--------|---------|
| blank? | true if empty or whitespace |
| present? | opposite of blank? |
| nil? | checks if object is nil |
| empty? | checks if collection/string length is zero |


## N+1 Query Problem

## What is the N+1 Query Problem?

The N+1 query problem occurs when:

* One query fetches parent records  
* Additional queries are fired for each child record  
* This usually happens due to lazy loading  



## Example (Bad Practice)

```ruby
User.all.each do |user|
  puts user.posts.count
end
```

Causes 1 query for users + N queries for posts



## Solution: Eager Loading using includes

```ruby
User.includes(:posts).each do |user|
  puts user.posts.count
end
```

Fetches all data using minimum queries


## Day 18
* Active Support core extensions
* Date & Time calculations
* Instrumentation
* ActiveSupport::Concern
* I18n translations
* blank?, present?, empty?, nil? methods
* N+1 problem
* 1+1 solution 

---

# Day 19 – Associations in Ruby on Rails

Associations in Rails define relationships between models (tables).  
They help ActiveRecord understand how records are connected and allow easy data access without writing complex SQL queries.


### Example

A User can have:

* one Vendor  
* many Posts  
* many Orders  


## Types of Associations (Sql)

There are 4 types of relationships between database tables:


### 1. One-to-One

One record in table A is linked to one record in table B  

Example:  
User → Profile  


### 2. One-to-Many

One record in table A is linked to many records in table B  

Example:  
User → Posts  


### 3. Many-to-One

Many records in table A belong to one record in table B  

Example:  
Posts → User  

This is the reverse of one-to-many and is implemented using belongs_to.


### 4. Many-to-Many

Many records in table A are linked to many records in table B  

Example:  
Students ↔ Courses  

## Ways to Define Associations in Rails

Rails provides 6 ways to achieve association:

```
has_one
has_many
belongs_to
has_one :through
has_many :through
has_and_belongs_to_many
```

Apart from that Rails provides one separate type of association also as a polymorphic association.


## Polymorphic Association

### What is a Polymorphic Association?

A polymorphic association allows a single model to belong to multiple models.
One table acts as a child for multiple parent tables.


### Required Columns

A polymorphic table must contain two columns:

* record_type – stores the parent model name  
* record_id – stores the parent model’s primary key  


### Example

Active Storage uses polymorphic associations:

* A file can belong to a User  
* A Product  
* A Post  


## Creating Associations Using Generate Commands (New Tables)

### Step 1️ Create Parent Model

```ruby
rails generate model User name:string email:string
rails db:migrate
```


### Step 2️ Create Child Model with Reference

```ruby
rails generate model Vendor name:string location:string user:references
rails db:migrate
```


### What user:references Does Automatically

* Adds a user_id column  
* Creates a foreign key constraint  
* Builds SQL-level association  


## SQL-Level Associations (Database Side)

After running migrations, Rails generates SQL relations.


### User Migration

```ruby
class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
```


### Vendor Migration

```ruby
class CreateVendors < ActiveRecord::Migration[8.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
```


### Important Note (Corrected Explanation)

If you try to delete the parent table (users) before the child table (vendors), you will get a foreign key constraint error.

Always delete child tables first, then parent tables  
Or use `dependent: :destroy` in Rails models.


## Rails-Level Associations (Model Side)

After database setup, we must define associations inside models so Rails understands the relationship.


### Vendor Model

```ruby
class Vendor < ApplicationRecord
  belongs_to :user
end
```

Meaning:

* vendors table contains user_id  
* Each vendor belongs to one user  
* belongs_to is always written in singular  


### User Model

```ruby
class User < ApplicationRecord
  has_one :vendor
end
```

Meaning:

* One user can have only one vendor  
* User table does not store the foreign key  

Note: Using has_one :vendor (singular) tells Rails that this is a one-to-one relationship.


### How Rails Associations Help

With proper associations, Rails provides:

### Easy Data Access

```ruby
user.vendor
vendor.user
```

### Additional Benefits

* Automatic validations  
* Cleaner and readable code  
* Powerful query helpers  
* Less SQL writing  


## Creating Associations for an Existing Table

### Generate Migration to Add Foreign Key

```ruby
rails generate migration AddProductToOrder product:references
```


### Generated Migration File

```ruby
class AddProductToOrders < ActiveRecord::Migration[8.1]
  def change
    add_reference :orders, :product, null: true, foreign_key: true
  end
end
```


### What this does:

* Adds product_id column to orders table  
* Creates SQL-level association  


## Rails-Level Association for Existing Tables

### Product Model

```ruby
class Product < ApplicationRecord
  has_many :orders
end
```


### Order Model

```ruby
class Order < ApplicationRecord
  belongs_to :product
end
```

Note: when using has_many :orders (we shall put plural to tell Rails, this is one-to-many relationship)

## Useful Rails Association Methods

```ruby
User.create
User.insert_all([{},{},{}])   (for inserting many records at a time.)

User.last.vendor.create
```

### Explanation

User.last.vendor.create

* Automatically sets user_id  
* Creates a vendor linked to User.last  


## Foreign Key Constraints in Rails (PostgreSQL)

Foreign key errors can be occurs in a Rails application and the reasons why? it occured.

### Task 1. Dropping a Parent Table Before Child Table

#### Scenario

When you attempt to drop a parent table while a child table still references it via a foreign key.

#### Command Example

```sql
DROP TABLE test1s;
```


#### Error

```
ERROR: cannot drop table test1s because other objects depend on it
DETAIL: constraint fk_rails_7b882ba334 on table test2s depends on table test1s
HINT: Use DROP ... CASCADE to drop the dependent objects too.
```


#### Explanation

* test2s has a foreign key (test1_id) referencing test1s  
* PostgreSQL prevents deleting the parent table to maintain referential integrity  


#### Correct Approaches

Option 1: Drop child table first

```ruby
rails generate migration DropTest2s
rails db:migrate
```

Option 2: Use CASCADE (Not recommended in Rails)

```sql
DROP TABLE test1s CASCADE;
```

This will also delete dependent constraints and objects.


### Task 2. Inserting an Invalid Foreign Key into Child Table

#### Scenario

You insert a foreign key value into a child table that does not exist in the parent table.


#### Command Example

```ruby
Test2.insert({ name: "Rahul", test1_id: 99 })
```


#### Error

```ruby
PG::ForeignKeyViolation: ERROR: insert or update on table "test2s"
violates foreign key constraint "fk_rails_7b882ba334"
DETAIL: Key (test1_id)=(99) is not present in table "test1s".
```


### Explanation

* test1_id = 99 does not exist in test1s  
* PostgreSQL blocks the insert to protect data integrity  


### Correct Solution

Ensure the parent record exists before inserting:

```ruby
Test1.create(id: 99, name: "parent_record")
Test2.create(name: "Rahul", test1_id: 99)
```


### After the Task (What we got Issues and Ways to resolve it)

## Task 1: Create Tables with Relationship and Verify Associations

(In this task, we created two tables with a relationship and verified the association at both SQL level and Rails level)

### Steps to be followed:

* Created two tables with a foreign key relationship  
* Verified foreign key constraints at SQL (database) level  
* Checked behavior before adding Rails associations  
* Added Rails-level associations (has_many, belongs_to)  
* Verified behavior after adding Rails associations  

### Observation:

* At SQL level, foreign key ensures data integrity  
* At Rails level, associations make data access easier and readable  


## Task 2: Add Relationship to Existing Tables with Records

(In this task, we tried to create a relationship between already existing tables that contain data.)

### Problems I got:

* Migration failed due to existing records  
* Foreign key constraint caused an error  

### Solution for this:

* Handled the error by providing a default value or allowing null values  
* Successfully applied the relationship without data loss  

SQL-level association → ensures data consistency  
Rails-level association → improves developer experience  
Existing data needs special handling while adding relationships  

---

# Day 20 - Many-to-Many Association using HABTM (Product & Tag table)

Rails supports many-to-many relationships in two standard ways:

5. has_many :through  
6. has_and_belongs_to_many (HABTM)


### 5. has_many :through

This is the recommended approach for most real-world applications.

## Why use has_many :through?

* Supports extra columns in the join table  
* Allows validations, callbacks, and scopes  
* Business logic can live in the join model  
* More flexible and scalable  


## Example: Product ↔ Offer via ProductOffer

### Step 1: Create Offer Model

```ruby
rails generate model Offer name:string description:string discount:string
rails db:migrate
```


### Step 2: Create Join Model

```ruby
rails generate model ProductOffer product:references offer:references
rails db:migrate
```


### Generated migration:

```ruby
class CreateProductOffers < ActiveRecord::Migration[8.1]
  def change
    create_table :product_offers do |t|
      t.references :product, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
```


### Database table:

```ruby
create_table "product_offers" do |t|
  t.bigint "product_id", null: false
  t.bigint "offer_id", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
```


## Define Associations

### Product model

```ruby
class Product < ApplicationRecord
  has_many :product_offers
  has_many :offers, through: :product_offers
end
```


### Offer model

```ruby
class Offer < ApplicationRecord
  has_many :product_offers
  has_many :products, through: :product_offers
end
```


### Join model

```ruby
class ProductOffer < ApplicationRecord
  belongs_to :product
  belongs_to :offer
end
```


## HABTM vs has_many :through

### Similarities

| Feature | has_many :through | has_and_belongs_to_many |
|----------|------------------|--------------------------|
| Relationship Type | Many-to-many | Many-to-many |
| Foreign Keys | Yes | Yes |
| Join Table Required | Yes | Yes |
| Data Access | Bidirectional | Bidirectional |


### Differences

| Feature | has_many :through | has_and_belongs_to_many |
|----------|------------------|--------------------------|
| Join Model | Required | Not required |
| Join Table Primary Key | Has id | No primary key |
| Extra Attributes in Join Table | Supported | Not supported |
| Validations | Supported | Not supported |
| Callbacks | Supported | Not supported |
| Business Logic | Can be added | Cannot be added |
| Flexibility | High | Low |


## dependent: :destroy

### What is dependent: :destroy?

When a parent record is deleted, Rails automatically deletes all associated child records.


### Why use it?

* Keeps the database clean  
* Prevents orphan records  
* Maintains data consistency  
* Avoids bugs and invalid references  


### Without dependent: :destroy

* Parent is deleted  
* Child records remain  
* Child records point to non-existent parent  
* Causes errors and confusing data  


### Example: One-to-One Association

#### User model

```ruby
class User < ApplicationRecord
  has_one :vendor, dependent: :destroy
end
```


### Vendor model

```ruby
class Vendor < ApplicationRecord
  belongs_to :user
end
```


### Deleting User

```ruby
User.find(4).destroy
```


### What Rails Does Internally

* Finds vendor associated with user  
* Deletes vendor first  
* Deletes user record  


### 6. has_and_belongs_to_many (HABTM)

This is the simplest way to create a many-to-many relationship.


### Key Characteristics

* Stores only foreign keys  
* No separate model for the join table  
* Join table exists only to connect two models  
* No validations, callbacks, or extra attributes  
* Faster to set up, but less flexible  


### Example: Product ↔ Tag

#### Step 1: Create Tag Model

```ruby
rails g model Tag name:string description:string
rails db:migrate
```


### Generated migration:

```ruby
class CreateTags < ActiveRecord::Migration[8.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
```


#### Step 2: Create Join Table

```ruby
rails generate migration CreateJoinTableProductsTags products tags
rails db:migrate
```


### Generated migration:

```ruby
class CreateJoinTableProductsTags < ActiveRecord::Migration[8.1]
  def change
    create_join_table :products, :tags do |t|
      # t.index [:product_id, :tag_id]
      # t.index [:tag_id, :product_id]
    end
  end
end
```


### Database table created:

```
products_tags
--------------
product_id | tag_id
```


## Step 3: Define Associations

### Product model

```ruby
class Product < ApplicationRecord
  has_and_belongs_to_many :tags
end
```


### Tag model

```ruby
class Tag < ApplicationRecord
  has_and_belongs_to_many :products
end
```


## Inserting Data into Join Table (Automatic)

```ruby
p1 = Product.second
p1.tags << Tag.last
```


### What happens internally?

* Rails automatically inserts a row into products_tags  
* No manual SQL insert required  

```
product_id | tag_id
2          | 5
```

This means Product 2 is linked with Tag 5.


## Fetching Associated Data

```ruby
p1.tags.map(&:name)
p1.tags.pluck(:name)
```

These return all tag names related to the product.

---


# Day 22

### Rollback Commands

#### rails db:rollback

```ruby
rails db:rollback
```

* Rolls back the last migration.

* Not used inside Rails console.  
* It is used in terminal.

#### rails db:rollback STEP=3

```ruby
rails db:rollback STEP=3
```

* Rolls back the last 3 migrations.

* It will undo the last three migration files in reverse order.

#### Important Points

* No need to run `rails db:migrate` immediately after rollback unless you want to apply migrations again.


### schema.rb

After every migration, `schema.rb` gets updated automatically.

Example:

```
schema.rb (version: 2026_02_10_061916)
```

The version changes after every successful migration.


### change, up, down (Migration Methods)

#### change

Default method used in migration.

Rails automatically knows how to reverse it.

#### up

Defines what should happen when migration runs.

#### down

Defines what should happen when migration rolls back.

Used when Rails cannot auto reverse (like modifying datatype).

For modifying datatype, sometimes `up` and `down` methods are required instead of `change`.


### Destroy Model

```ruby
rails destroy model ClassName
```

Deletes:

* Model file
* Migration file
* Related test files


### has_many :through vs HABTM

#### has_many :through

Model required.

Join table will have its own model.

Gives separate table.

#### has_and_belongs_to_many (HABTM)

No model required.

Only join table required.

No separate model logic.


### Creating has_many :through Example

#### Command Used

```ruby
rails g model Subscription type:string exp_date:date active:boolean product:references offer:references
rails db:migrate
```

Subscription -> singular model name.

It is bidirectional.

So we must define association in both models:

* belongs_to in Subscription
* has_many in Product
* has_many in Offer


### Rails Console Commands for Associations

#### Fetching Object

```ruby
p1 = Product.last
```

#### Get Related Offers

```ruby
p1.offers
```

#### Reload Association (Refresh Data)

```ruby
p1.offers.reload
```

* Used to refresh data instead of using cached result.

#### Get Offer IDs

```ruby
p1.offer_ids
```

* Returns ids in array related to that object.

#### Check if Association is Empty

```ruby
p1.offers.empty?
```

* Checks whether there is any associated offer.

#### Get Size of Association

```ruby
p1.offers.size
```

* Returns count of associated offers.

#### Check if Offers Exist

```ruby
p1.offers.exists?
```

* Checks whether at least one offer exists.

#### Find by Column

```ruby
p1.offers.find_by(offer_name: "Republic_day_sale")
```

* Find offer by column value.

#### Clear All Associated Records

```ruby
Product.find(1).offers.clear
```

* Removes all associated records for that object.
* Returns empty array.


### Association Commands Given

#### Attach Existing Offer to Product

```ruby
productObj = Product.find(5)
offerObj = Offer.find(2)
productObj.offers << offerObj
```

* Creates entry in join table.

#### Create Offer from Association

```ruby
productObj.offers.create(attributes)
```

* Automatically sets foreign keys.

#### Delete Specific Association

```ruby
productObj.offers.delete(offerObj)
```

* Removes relationship but does not delete offer record.


### Add Reference to Existing Table

```ruby
rails generate migration AddReferenceNameToTableName reference_table_name_in_singular:references
```

* Adds foreign key column to existing table.


### Updating Extra Columns in Join Table (has_many :through)

* Since Subscription is a join model, it can have extra attributes.

#### Update Single Subscription

```ruby
subscriptionObj.update(status: 'active', renewal_date: 1.month.from_now)
```

#### Update Specific Subscription in Collection

```ruby
productObj.subscriptions.where(offer_id: 5).update_all(status: 'active')
```

#### Update All Subscriptions Based on Condition

```ruby
productObj.subscriptions.each do |sub|
  sub.update(status: 'expired') if sub.exp_date < Date.today
end
```
* Used to modify all subscriptions of a product based on condition.

---


# Day 23 – Rails (Associations) & Migrations (and Examples)

### ActiveRecord Associations in Rails

Rails provides six types of associations to manage relationships between models.

| Association               | Description                                                    |
| ------------------------- | -------------------------------------------------------------- |
| `has_one`                 | Used for one-to-one relationship                               |
| `has_one :through`        | Strict one-to-one relationship through another model           |
| `has_many`                | Used for one-to-many relationship                              |
| `has_many :through`       | Many-to-many relationship using a join model                   |
| `has_and_belongs_to_many` | Many-to-many without a join model (only table no model)        |
| `belongs_to`              | Used on the foreign key side (makes association bidirectional) |


### Using Rails Migrations (used to make changes in the database structure)


* Creating tables
* Adding columns
* Adding references (foreign keys)
* Renaming tables/columns
* Removing columns
* Modifying data types
* Dropping tables

### Migration Naming Rules

When writing migration names:

### First word should be a **Verb**

  * Create
  * Add
  * Remove
  * Rename
  * Drop
  * Modify / Change

### Second word should be a **Noun**
  * Tab_name
  * Col_name


#### Some Migration Examples :

```ruby
rails g migration CreateTableBlog title:string:index author:string diption:string
rails g migration CreateTableUser name:string
rails g migration AddUserReferenceToBlog user:references  
rails g migration AddColumnEmailToUser email:string
rails g migration RemovePhoneFromUser phone_number:integer:index
rails g migration RenameColumnAuthorInUser
rails g migration ModifyColumnDiscriptionDatatype 
rails g migration DropTableUser
rails g migration CreateTableComments comments:string
rails g migration CreateTableComments comments:string
rails g migration Rename_Table
rails g migration CreateTableDummy
rails g migration DropTableDummy
```

###  Steps to perform :

#### Creating a Table

```ruby
rails generate migration CreateUsers name:string
```

Generated file:

```ruby
class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
  end
end
```


###  Adding Reference (Foreign Key)

```ruby
rails generate migration AddUserReferenceToVlogs user:references
```

Generated migration:

```ruby
class AddUserReferenceToVlogs < ActiveRecord::Migration[8.1]
  def change
    add_reference :vlogs, :user, null: false, foreign_key: true
  end
end
```

Adds:

* `user_id`
* Index
* Foreign key constraint

###  Adding a Column

```ruby
rails generate migration AddPhoneNumberToUsers phone_number:string
```

###  Removing a Column

```ruby
rails generate migration RemoveDescriptionFromVlogs description:string
rails db:migrate
```

Generated:

```ruby
remove_column :vlogs, :description, :string
```

### Renaming a Column

```ruby
rails generate migration RenameNameToUserNameToUsers
```

### Generated migration file will be **empty** (change action will be empty)

```ruby
class RenameNameToUserNameUsers < ActiveRecord::Migration[8.1]
  def change
  end
end
```

## ⚠️Note: After every migration file generation we need to run -> rails db:migrate

## ⚠️Note: Keep in mind below points
```ruby
* For renaming and modifying columns, Rails does NOT generate the method automatically.
* It creates an empty migration file. We have to manually write/edit the required method inside `def change`.
* Then run `rails db:migrate`.
```
### After modifing :

```ruby
def change
  rename_column :users, :name, :user_name
end
```

Then run:

```ruby
rails db:migrate
```

###  Modifying Column's Data Type

* Example: Changing `phone_number` datatype from integer to string.
* we generate migration file

```ruby
rails generate migration ChangePhoneNumberTypeInUsers
```

* The Generated file will be empty:

```ruby
class ChangePhoneNumberTypeInUsers < ActiveRecord::Migration[8.1]
  def change
  end
end
```

* Again, Rails will NOT auto-generate the method. We need to manually write it:

```ruby
def change
  change_column :users, :phone_number, :string
end
```

###  Renaming a Table

```ruby
rails generate migration RenameCustomersToUsers
```

* Editing generated migration file:

```ruby
def change
  rename_table :customers, :users
end
```

###  Dropping a Table

```ruby
rails generate migration DropUsers
```

* Editing generated migration file:

```ruby
def change
  drop_table :users
end
```

##  Rails DB Commands 

```ruby
rails db:migrate
```

* It Runs all pending migrations
* It Applies all database changes
* Updates `schema.rb`


```ruby
rails db:rollback
```

* Reverts the last migration
* Undo recent database change


```ruby
rails db:rollback STEP=2
```
* It also rollback upto given step


```ruby
rails db:migrate:redo
```

* Rollback + migrate again
* Useful when testing a migration


```ruby
rails db:migrate:redo STEP=2
```

* Redo multiple steps 

```ruby
rails db:reset
```
### Beaware before using this db:reset

* Drops database
* Creates database
* Runs migrations
* Runs seeds

* Deletes all data


```ruby 
rails db:seed
```

* Runs db/seeds.rb file
* Used to insert default/sample data


##  Ruby Methods

### uniq (Array)

```ruby
[1,2,3,1,2,3].uniq
```

Output:

```ruby
[1,2,3]
```

### chars (String)

```ruby
"rahul".chars
```

Output:

```ruby
["r","a","h","u","l"]
```
### Note: Good Practice to write code in Model is 
* Top-most/First  -> CONSTANTS
* Mid/Second      -> Association
* Last/Third      -> Validation

##  Rails Data Types

### String Types

* string
* text
* binary

### Numeric Types

* integer
* float
* decimal

### Date & Time Types

* date
* datetime
* timestamp
* time

--- 


# Day 25 Active Job

### Why we are using Rails components?

#### Rails components are used to create reusable, encapsulated, and testable building blocks.

They help to:

* Improve maintainability  
* Separate logic from view code  
* Build modular and reusable structure  
* Maintain consistency across application  
* Help developers build faster and cleaner applications  

Rails components include:

* Active Record  
* Active Job  
* Action Mailer  
* Action Cable  
* Action Controller  
* Action View  

### Some concepts of Database

After installing Solid Queue or configuring background jobs, these will be show as in terminal:

```ruby
identical  config/queue.yml     
identical  config/recurring.yml   
identical  db/queue_schema.rb   
identical  bin/jobs
identical  config/environments/production.rb   
```

* identical means the file already exists and Rails does not overwrite it.


### Notes & Configuration for Multiple Database

Rails supports multiple databases from Rails version 6 onwards.

We configure multiple databases inside:

```
config/database.yml
```

Purpose of multiple databases in same enviroment:

* Use one database for reading data  
* Use another database for writing data  
* Improve data security  
* Improve performance  
* Improve data integrity  

#### Example configuration

```ruby
development:
  primary:
    <<: *default
    database: learning_management_application_development

  secondary:
    <<: *default
    database: sample_database

  tertiary:
    <<: *default
    database: another_database
```

We can configure multiple databases like above example for using different databases for different purposes in a single environment.

Rails multi database feature does not require creating separate models for each database necessarily.

### Note about SQL Database

Active Record works only with relational databases like:

* PostgreSQL  
* MySQL  
* SQLite  

### Note about NoSQL Database

Active Record and Active Model do not work with NoSQL databases like MongoDB.

To work with MongoDB, we need to install this gem:

```ruby
gem 'mongoid'
```

Mongoid is an ODM (Object Document Mapper) for MongoDB.

### Action Dispatch

Action Dispatch is responsible for handling routing.

It connects:

Request → Controller → Response

It manages routes and request handling.

### Action Cable

Action Cable is used for real-time communication.
It uses WebSocket protocol.

Features:

#### 1) WebSocket
* Allows two-way communication between client and server.
* Connection can be opened and closed.

#### 2) Channel Creation

Channels help in managing communication.

Example:

* Chat channel  
* Notification channel  

#### 3) Pub-Sub Architecture

* Publisher sends message  
* Subscriber receives message  
* Used for real-time updates.

## Active Job

* Active Job helps manage background tasks.
* It runs jobs in background instead of blocking the main application.

Used for:

* Sending emails  
* Data processing  
* File processing  
* Background tasks  

#### It improves performance and user experience.

### Default Queue Adapter in Rails 8

Default adapter:

```
:solid_queue
```

Solid Queue is the default background job processor in Rails 8.

Check its presence in:

* Gemfile  
* Gemfile.lock  
* bin/jobs  
* config/deploy.yml  

### Why Active Job is used instead of Controller

If logic is placed inside controller:

* It runs synchronously  
* If failure happens, entire process restarts  

If logic is placed inside Active Job:

* It runs asynchronously  
* Can retry failed jobs  
* Does not block main application  

## Installing Solid Queue

### Step 1: Configure queue adapter

Open:

```
config/application.rb
```

Add:

```ruby
config.active_job.queue_adapter = :solid_queue
```

Alternative adapter:

```ruby
config.active_job.queue_adapter = :async
```

### Step 2: Install solid_queue

Run:

```ruby
rails solid_queue:install
```

This creates required configuration files.

### Step 3: Write mailer method

Example:

File:

```
app/mailers/customer_mailer.rb
```

```ruby
def review_email(customer1)
  @customer1 = customer1
  mail(to: @customer1.email, subject: "Review Email working")
end
```

### Step 4: Create a Job

Run:

```ruby
rails generate job ReviewHandler
```

This creates file:

```ruby
app/jobs/review_handler_job.rb
```

If file already exists, in terminal it will shows:

```ruby
identical
```

## External Background Job Servers

Rails Active Job supports external queue adapters.

### 1) Sidekiq

* Requires Redis to work.

* Uses Redis for job queue storage.

Functionality:

* Sending emails  
* Background processing  
* File processing  
* Image processing  

### 2) Redis

* Redis is an in-memory data store.

Used for:

* Caching  
* Background jobs  
* Session management  

Redis improves performance.

## Summary

Active Job is used for:

* Background processing  
* Sending emails  
* Running long tasks  
* Improving application performance  

Default adapter in Rails 8 is Solid Queue.

External adapters include:

* Sidekiq  
* Redis  

---

# Day 26 (OOP)

## Initialize (Constructor)

### Definition

Initialize is a special method in Ruby that runs automatically when we create an object of a class.

### Uses

* To set initial values when object is created  
* Values can be passed as parameters to initialize method  

### Example

```ruby
class Customer
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

c = Customer.new("Rahul")

puts c.name
```

### Important Points

* initialize method also gets inherited from parent to child  
* If parent and child both have initialize method, then to call parent constructor we use `super` in child class  

Example:

```ruby
class Parent
  def initialize(name)
    @name = name
    puts "Parent initialize called"
  end
end

class Child < Parent
  def initialize(name, age)
    super(name)
    @age = age
    puts "Child initialize called"
  end
end

Child.new("Rahul", 22)
```

## Getter Method (to get the value)

Getter method is used to access instance variable value from outside the class.

### Example

```ruby
class Customer
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

c = Customer.new("Rahul")
puts c.name
```

## Setter Method (to set the value)

Setter method is used to modify instance variable value from outside the class.

### Example

```ruby
class Customer
  def initialize(name)
    @name = name
  end

  def name=(new_name)
    @name = new_name
  end

  def name
    @name
  end
end

c = Customer.new("Rahul")
c.name = "Amit"

puts c.name
```

When we try to set value from outside of class, we use:

```ruby
obj_name.name = "aaa"
```

## attr_reader, attr_writer, attr_accessor

Writing getter and setter manually is lengthy, so Ruby provides helper methods.

### attr_reader

Allows only reading value (getter).

Example:

```ruby
class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

c = Customer.new("Rahul")
puts c.name
```

### attr_writer

Allows only setting value (setter).

Example:

```ruby
class Customer
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

c = Customer.new("Rahul")
c.name = "Amit"
```

### attr_accessor

Allows both getter and setter.

Example:

```ruby
class Customer
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

c = Customer.new("Rahul")

puts c.name      # getter
c.name = "Amit"  # setter
puts c.name
```

## Inheritance

Inheritance means child class gets properties and methods from parent class.

We use inheritance to reuse code and avoid rewriting same code.

### Single Level Inheritance

Ruby supports single inheritance, meaning a class can inherit from only one parent class.

Example:

```ruby
class Animal
end

class Dog < Animal
end
```

### Multiple Inheritance

Ruby does not support multiple inheritance.

Example (Not possible):

```ruby
class A
end

class B
end

class C < A, B   # NOT possible in Ruby
end
```

### Reason (Diamond Problem)

If two parent classes have same method and child inherits both, Ruby cannot decide which method to call.

Example diagram:

```
    A
   / \
  B   C
   \ /
    D
```

To overcome this problem, Ruby uses Modules.

## Module

Module is a collection of methods that can be shared across classes.

It behaves like a class but is not a class.

### Uses

* To share common methods  
* To achieve code reuse  
* To implement multiple behavior sharing  

### Important Points

* Cannot create object of module  
* Cannot use `.new` keyword  

Example:

```ruby
module Walk
  def walk
    puts "Walking..."
  end
end
```

## Mixins

Mixin is a concept of sharing code across classes using modules.

Module is mechanism, Mixin is concept.

## Include

Include is used to add module methods as instance methods in class.

Used when method should work on object.

It places module after class but before parent class in ancestor lookup chain.

Example:

```ruby
module Greetable
  def greet
    "Hello from Greetable"
  end
end

class Person
  include Greetable
end

p = Person.new
puts p.greet
```

## Prepend

Prepend is used to add module methods before class in ancestor chain.

Module method gets higher priority than class method.

Example:

```ruby
module Greetable
  def greet
    "Hello from Greetable"
  end
end

module Polite
  def greet
    "Good day from Polite"
  end
end

class Employee
  include Greetable
  prepend Polite
end

e = Employee.new
puts e.greet
```

Output:

```
Good day from Polite
```

Because prepend module gets higher priority.

## Important Note about Multiple Modules

If two modules are included and both have same method name, the last included module gets priority.

Example:

```ruby
module A
  def test
    puts "Module A"
  end
end

module B
  def test
    puts "Module B"
  end
end

class Example
  include A
  include B
end

Example.new.test
```

Output:

```
Module B
```

Because last included module gets priority.


## Testing ancestor lookup, include and prepend

### Check ancestors chain

```ruby
p Person.ancestors
# => [Person, Greetable, Object, Kernel, BasicObject]

p Employee.ancestors
# => [Polite, Employee, Greetable, Object, Kernel, BasicObject]
```

Explanation:

* include → places module after class in ancestor chain  
* prepend → places module before class in ancestor chain  

So prepend module gets higher priority than class and include modules.

### Testing method execution

```ruby
person = Person.new
puts person.greet
# => "Hello from Greetable"

employee = Employee.new
puts employee.greet
# => "Good day from Polite"
```

Explanation:

Polite module overrides greet method because prepend gives higher priority.

## Prepend

### Definition

Prepend adds module methods to class and makes them available to access via object, but overrides existing class methods.

Ancestor lookup:

Places module before current class in ancestor chain.

### Example

```ruby
module Logging
  def perform
    puts "Logging before action"
    super
  end
end

class Task
  def perform
    puts "Performing task"
  end
end

class LoggedTask < Task
  prepend Logging
end
```

### Check ancestor chain

```ruby
p LoggedTask.ancestors
# => [Logging, LoggedTask, Task, Object, Kernel, BasicObject]
```

### Call method

```ruby
task = LoggedTask.new
task.perform
```

Output:

```
Logging before action
Performing task
```

Explanation:

Logging module executes first because prepend places it before class.

## Extend

### Definition

Extend adds module methods as class methods.

Used when method should work on class instead of object.

### Example

```ruby
module Greetable
  def greet
    "Hello!"
  end
end

class Person
  extend Greetable
end
```

### Call class method

```ruby
puts Person.greet
# => "Hello!"
```

### Check ancestors

```ruby
p Person.ancestors
# => [Person, Object, Kernel, BasicObject]
```

Note:

Extend does not affect instance methods.

## Encapsulation

### Definition

Encapsulation means hiding internal data and allowing access using methods.

Achieved by:

* hiding variables  
* controlled access using getter/setter  
* preventing direct access  

### Example

```ruby
class BankAccount
  def balance=(amount)
    if amount >= 0
      @balance = amount
    end
  end

  def balance
    @balance
  end
end
```

Explanation:

Balance cannot be set directly without validation.

## Abstraction

### Definition

Abstraction means hiding internal complexity and showing only necessary functionality.

### Example in Rails

```ruby
customer.save
```

We just call save method.

Internally Rails performs:

* SQL query execution  
* Database connection  
* Data validation  
* Data persistence  

All internal complexity is hidden.

## Ways to write class methods

### Method 1: Using self

```ruby
class Customer
  def self.info
    puts "Customer class method"
  end
end

Customer.info
```

### Method 2: Using class name

```ruby
class Customer
  def Customer.info
    puts "Customer class method"
  end
end

Customer.info
```

### Method 3: Using class << self

```ruby
class Customer
  class << self
    def info
      puts "Customer info"
    end

    def show
      puts "Show"
    end
  end
end

Customer.info
Customer.show
```

## Duck Typing

### Definition

Ruby does not care about object type.

Ruby cares about behavior (method presence), not class type.

Type is decided at runtime.

Example:

```ruby
def make_speak(animal)
  animal.speak
end
```

Any object with speak method will work.

## Method Overriding

### Definition

Child class overrides parent class method.

Example:

```ruby
class Animal
  def speak
    puts "Animal sound"
  end
end

class Dog < Animal
  def speak
    puts "Bark"
  end
end
```

Dog overrides parent method.

## Method Overloading

Ruby does not support true method overloading.

It can be simulated using default arguments.

## Polymorphism

### Definition

Polymorphism means same method behaves differently for different objects.

One method → many forms.

### Example

```ruby
class Dog
  def speak
    puts "Bark"
  end
end

class Cat
  def speak
    puts "Meow"
  end
end

def make_speak(animal)
  animal.speak
end

make_speak(Dog.new)
make_speak(Cat.new)
```

Output:

```
Bark
Meow
```

## Concerns

Concerns are used for repetitive logic.

Used to store reusable code.

Locations:

For models:

```
app/models/concerns
```

For controllers:

```
app/controllers/concerns
```

## Helpers

Helpers are modules used to write reusable logic for views.

Logic written in:

```
app/helpers
```

Used in:

```
app/views
```

### Example

```ruby
module ApplicationHelper
  def format_price(price)
    "$#{price}"
  end
end
```

Use in view:

```erb
<%= format_price(100) %>
```

## Partials

Partials are reusable view files.

Used to avoid duplicate HTML code.

File name starts with underscore (_)

Example file:

```
app/views/products/_product.html.erb
```

Example content:

```erb
<p><%= product.name %></p>
```

Use in view:

```erb
<%= render partial: "product", locals: { product: @product } %>
```

---  

# Day 27

## Meta-programming

### Definition

Meta-programming means writing code that can create or modify other code dynamically at runtime.

In other words, Ruby has the ability to create methods automatically at runtime instead of writing them manually.

Ruby uses Meta-programming to follow DRY principle (Don't Repeat Yourself).

## Ways to achieve Meta-programming

### 1) define_method()

#### Definition

define_method is used to create methods dynamically at runtime.

Syntax:

```ruby
define_method("method_name") do
  # logic
end
```

#### Without define_method (manual way)

Example:

```ruby
class User
  attr_accessor :role

  def admin?
    role == "admin"
  end

  def guest?
    role == "guest"
  end

  def members?
    role == "members"
  end
end
```

#### Problem

Repetitive code.

Not following DRY principle.

#### With define_method (DRY principle)

Example:

```ruby
class User
  
  attr_accessor :role  

  arr = ["admin", "member", "guest"]
  
  arr.each do |role_name|
    define_method("#{role_name}?") do
      role == role_name
    end    
  end
  
end

obj = User.new
obj.role = "guest"

puts obj.admin?
puts obj.member?
puts obj.guest?
# puts obj.unknown_method?  # will raise error
```

Output:

```
false
false
true
```

#### When we use define_method?

When we have repetitive methods with similar logic.

Example:

admin?, guest?, member? all follow same logic.

define_method avoids writing duplicate code.

### 2) method_missing

#### Definition

Ruby automatically calls method_missing when user calls a method which is not present in the class.

It is used to handle unknown methods dynamically.

#### Why it is important?

When user calls unknown method, instead of throwing error, Ruby allows us to handle it dynamically using method_missing.

#### Example 1

```ruby
class Test
  def method_missing(name)
    puts "#{name} method not found"
  end
end

Test.new.hello
```

Output:

```
hello method not found
```

#### Example 2 (Global handling using Object class)

```ruby
class Object
  def method_missing(name, *args)
    puts "#{name} is missing"
  end
end

Object.new.hello
```

Output:

```
hello is missing
```

This works globally because all classes inherit from Object class.

#### Example 3 (Handle specific type of methods dynamically)

```ruby
class Vendor
  
  def method_missing(method_name, *args)
    
    if method_name.to_s.start_with?("find_by_")

      substrValue = method_name.to_s.sub("find_by_", "")

      puts substrValue

      puts "find_by_#{substrValue} : #{args.first}"

    else
      super
    end

  end

end

obj = Vendor.new
obj.find_by_name("rahul")
```

Output:

```
name
find_by_name : rahul
```

Explanation:

find_by_name method does not exist, but method_missing handles it dynamically.

#### Important Note

We can write method_missing in Object class to handle missing methods globally.

This is possible because of Open-class concept.

## Features of Meta-programming

### 1) Open-class

#### Definition

Open-class means opening and modifying existing class behavior in Ruby.

Ruby allows modifying built-in classes like:

```
String
Array
Integer
Object
```

This is possible because Ruby is dynamic and decides methods at runtime.

In Java/C++, classes cannot be modified after creation.

#### Example

```ruby
class String
  def upcase
    puts "Modified behaviour"
  end
end

"Rahul".upcase
```

Output:

```
Modified behaviour
```

#### Benefits

* Developer can add new methods  
* Can modify existing behavior  
* Can extend built-in classes  

#### Monkey patching example (Rails methods)

Rails added methods like:

```
present?
blank?
```

These methods are added using Open-class concept.

These methods are not originally present in pure Ruby.

#### Using Open-class in Rails application

If we need global methods in Rails application:

Create file:

```
lib/my_global_method.rb
```

Then load it in:

```
config/application.rb
```

#### Why load in application.rb?
Because application.rb is loaded first when Rails application starts.
So open-class modifications become available globally in entire application.

## Ways to achieve Meta-programming

### 3) Introspection

#### Definition

Introspection means examining objects at runtime and getting information about them.

It gives information like:

* What class object belongs to  
* What methods object has  
* What instance variables object contains  

#### i) .class

Used to get object type.

Example:

```ruby
name = "rahul"
puts name.class
```

Output:

```
String
```

#### ii) .methods

Shows all methods available for that object.

Example:

```ruby
num = 5
p num.methods
```

Output (partial):

```
[:remainder, :abs, :magnitude, :zero?, :floor, :ceil, :round, etc]
```

#### iii) .inspect

Shows object details in readable format.

Mainly used for debugging.

Example:

```ruby
name = "Rahul"
puts name.inspect
```

Output:

```
"Rahul"
```

Used frequently in Rails debugging.

#### iv) .instance_variables

Shows all instance variables present inside object.

Especially useful to check variables created in initialize method.

Example:

```ruby
class User
  def initialize
    @name = "Rahul"
    @age = 22
  end
end

u = User.new
p u.instance_variables
```

Output:

```
[:@name, :@age]
```

#### v) .respond_to?

Checks whether method exists for that object or not.

Method name should be passed as symbol.

Example:

```ruby
name = "Rahul"
puts name.respond_to?(:upcase)
```

Output:

```
true
```

#### Why introspection is used?

* Debugging  
* Checking object capabilities  
* Dynamic method handling  
* Runtime analysis  

### 4) Evaluation

Evaluation means executing code dynamically at runtime.

Ruby provides methods like:

* class_eval  
* instance_eval  

#### i) class_eval

Definition:

class_eval is used to add instance methods dynamically to a class.

These methods can be accessed using object.

Called class_eval because code is inserted inside class.

#### Example

```ruby
class User
end

User.class_eval do
  def greet
    puts "method inserted in class_eval"
  end
end

u = User.new
u.greet
```

Output:

```
method inserted in class_eval
```

Explanation:

greet method was not originally present in User class.

class_eval added it dynamically.

#### ii) instance_eval

Definition:

instance_eval is used to add methods to a specific object or to class itself as class method.

These methods are accessed using class name.

#### Example

```ruby
class User
end

User.instance_eval do
  def greet
    puts "method instance_eval"
  end
end

User.greet
```

Output:

```
method instance_eval
```

Explanation:

instance_eval adds method as class method.

#### Difference between class_eval and instance_eval

| Feature | class_eval | instance_eval |
|--------|-------------|----------------|
| Adds method type | Instance method | Class method |
| Called using | Object | Class |
| Scope | Class | Specific object or class |

#### Important Note (Rails usage)
Rails internally uses class_eval for creating dynamic methods like:

```
validates
has_many
belongs_to
has_one
```

These methods are created dynamically using Meta-programming.

---





















