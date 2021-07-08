# Responsive Navbar

View demo [here](https://ypds.github.io/navbar/).

## Test on Local Machine

Include the ```navbarDemo``` function to your desired controller on your localhost, and ```navbarDemo.cfm``` to the corresponding view folder. The navbar depends on jquery. For testing the following tags can be added to the ```<head>```. Note, if the viewport meta is not included then responsive features may not work.

```html
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
```

## Design

Within the nav there are three sibling elements, the ```div.brand```, the ```div.menu```, and the ```div.menu-collapse```. The names are taken from the bootstrap convention, but there functions are slightly different. All elements should use **relative sizing** to the parent ```nav``` element. This prevents spaghetti code within the media queries. All elements should be **vertically centered** with sufficient horizontal space between them for readability.

### Brand

The brand is our companies name/logo/identifying image. The ```h1.brand-title``` text can be replaced with Dental YP, The Original YP, etc. This text can be neglected entirely if text is included in the brand image, but it is recommended to leave for web crawling purposes. 

The brand should float or be positioned to the left and have relative sizing to its parent container. No overflow with other elements in the navbar can be allowed, especially if both contain clickable links.

### Menu

The menu div contains two elements: ```div.menu-expanded``` and ```svg.svg-menu```. By default, the expanded menu items appear for screen sizes larger than 768px while the svg image is hidden. For screen sizes below 768px, the expanded menu is replaced with the single svg image. This image is a clickable item that toggles the display of the collapsible menu. As with the brand, make sure all menu items use relative sizing to prevent overflow and other unwanted behavior on different screen sizes. Some properties may need to be adjusted within the media queries, but this should be kept to a minimum.

### Collapsible Menu

This should contain all of the same information as the expanded menu. It is positioned directly below the parent ```<nav>``` using absolute to prevent distortion of page content. The ```z-index``` can be adjusted if other page content appears above the menu. The follwing javascript (or similar) is all that is needed for the menu to work properly.

```javascript
$(window).on("resize", function() {
	$(".menu-collapse").hide();
});

$(window).on("load", function() {
	$("#svg-menu").on("click", function() {
		$(".menu-collapse").toggle();
	});
});
```
