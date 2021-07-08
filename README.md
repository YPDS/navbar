# Responsive Navbar

View demo [here](https://ypds.github.io/navbar/).

## Test on Local Machine

Include the ```navbarDemo``` function to your desired controller on your localhost, and ```navbarDemo.cfm``` to the corresponding view folder. The navbar depends on jquery. For testing the following tags can be added to the ```<head>```. Note, if the viewport meta is not included then responsive features may not work.

```html
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
```

## Design

Within the nav there are three sibling elements, the ```div.brand```, the ```div.menu```, and the ```div.menu-collapse```. The names are taken from the bootstrap convention, but there functions are slightly different.

#### Brand

The brand is our companies name/logo/identifying image. The ```h1.brand-title``` text can be replaced with Dental YP, The Original YP, etc. This text can be neglected entirely if text is included in the brand image, but it is recommended to leave for web crawling purposes. 

The brand should float or be positioned to the left and have relative sizing to its parent container. No overflow with other elements in the navbar can be allowed, especially if both contain clickable links.

### Menu
