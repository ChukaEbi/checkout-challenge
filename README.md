[![Build Status](https://travis-ci.org/ChukaEbi/checkout-challenge.svg?branch=master)](https://travis-ci.org/ChukaEbi/checkout-challenge)
[![Coverage Status](https://coveralls.io/repos/github/ChukaEbi/checkout-challenge/badge.svg?branch=master)](https://coveralls.io/github/ChukaEbi/checkout-challenge?branch=master)

## **CHECKOUT CHALLENGE**

Introduction
--------

The challenge was to develop my own checkout system for an online marketplace. I approached the problem by posing myself a question: How do I make it maintainable and extendable for the end user. I completed the challenge and detailed my approach below.

### My Approach
I created three classes for this challenge:
 - Checkout
 - Promotional rules
 - Products

The Checkout class is the main class where I inject the dependencies from the other classes. It contains all the main business logic and methods that allow my solution to work.

The Promotional rules class contained the functionality which is needed for the discounts. I decided to separate this concern in case the marketplace wants to add more promotions. Then they would not need to meddle or change the existing class functionality, but only add to it.

The products class contains a list of the products on offer. I separated this because different marketplaces have diffefrent products and having it created at checkout did not seem right to me in the long run.

I used TDD methodology to tackle this challenge. So every public method I wrote, I wrote a test for.

### How To Use It

```
co = Checkout.new
 => #<Checkout:0x007f84bc1e38e8 @basket=[], @products=#<Products:0x007f84bc1e3848 @items={1=>["Lavender heart", 9.25], 2=>["Personalised cufflinks", 45.0], 3=>["Kids T-shirt", 19.95]}>, @total=0, @promotion=#<PromotionalRules:0x007f84bc1e3898 @price_difference=0.0>, @receipt="">
co.scan 1
 => [["Lavender heart", 9.25]]
co.scan 3
 => [["Lavender heart", 9.25], ["Kids T-shirt", 19.95]]
co.scan 1
 => [["Lavender heart", 9.25], ["Kids T-shirt", 19.95], ["Lavender heart", 9.25]]
co.finish_ordering
 => "1 Lavender heart, 1 Kids T-shirt, 1 Lavender heart, The final total is £36.95"
 ```

 ### Installation

 You should have the ruby version 2.2.3 and above

 first clone the repo
 ```
 https://github.com/ChukaEbi/checkout-challenge
 ```

 then run ```bundle install```

 you can see the tests by running ```rspec ```
