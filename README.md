# Irelia
Irelia view components for Ruby on Rails.

## Documentation
This project is still in an early stage. Documentation will be available soon.

## Installation

#### 1. Add this line to your application's Gemfile:

```ruby
gem "irelia"
```
Run `bundle install` to install the dependencies

#### 2. Add the `irelia_head` method inside the `<head>` tags in your application layout.

This is a helper method that will inject the Irelia stylesheets and javascripts into the head tag. It includes the Irelia CSS and JS files, as well as **Font Awesome** for icons and the **Poppins** Google font. 

```html
<!-- file: app/views/application.html.erb -->
<head>
  <%= irelia_head %>
  <!-- Load custom CSS after "irelia_head" to -->
</head>
```

#### 3. Load javascripts with importmap

Pin the Irelia javascripts in your `importmap.rb` config.

```ruby
pin "irelia", to: "irelia.js"
```

Add the Irelia `registerIreliaControllers` to your `controllers.js` file.

```javascript
// file: app/javascripts/controllers/index.js
import { registerIreliaControllers } from "irelia";
registerIreliaControllers(application);
```

Restart your application and you should be good to go!

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
