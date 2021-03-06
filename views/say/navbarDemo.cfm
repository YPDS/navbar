
<style>

    #wheels-debug-area {
        display: none;
    }

    * {
        margin: 0;
        padding: 0;
    }

    .brand {
        display: grid;
        float: left;
        position: relative;
        height: 60%;
        top: 20%;
        width: 200px;
        grid-template-columns: 60px auto;
        padding-left: 20px;
    }

    .brand-title {
        margin: auto;
    }

    nav {
        position: relative;
        top: 0;
        width: 100%;
        left: 0;
        margin: 0;
        padding: 0;
        height: 100px;
        min-width: 350px;
    }

    .nav-container {
        position: relative;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: #E6EEF0;
    }

    .menu {
        display: grid;
        float: right;
        position: relative;
        height: 60%;
        top: 20%;
        width: auto;
        padding-right: 20px;
    }

    .menu-expanded {
        margin: auto;
        display: grid;
        grid-template-columns: auto auto auto;
    }

    .menu-expanded-item {
        padding: 20px;
    }

    .svg-menu {
        border-radius: 15px;
        box-sizing: border-box;
        padding: 5px;
        display: none;
    }

    .svg-menu:hover {
        background-color: white;
        cursor: pointer;
    }

    .menu-collapse {
        position: absolute;
        top: 100%;
        left: 0;
        width: 100%;
        height: auto;
        display: none;
        text-shadow: 0 0 1px black;
    }

    .menu-collapse-item {
        margin: 5px 0;
        padding: 10px 0;
        text-align: center;
    }

    .menu-collapse-item:hover {
        background-color: white;
        font-weight: bold;
        cursor: pointer;
    }

    @media screen and (max-width: 768px) {

        .menu {
            max-width: 100px;
        }

        .menu-expanded {
            display: none;
        }

        .svg-menu {
            display: block;
        }
    }


</style>

<nav>
    <div class="nav-container">
        <div class="brand">

            <!-- placeholder svg icon -->
            <svg width="100%" height="100%" class="svg-brand" id="brand-svg" viewbox="0 0 100 100" preserveAspectRatio="xMidYMid meet">
                <g class="svg-brand-g" id="brand-g">
                    <rect width="100%" height="100%" x="0%"  y="0%" class="svg-brand-background" fill="blue"/>

                    <rect width="30%" height="30%" x="4%"  y="4%" class="svg-brand-dead" fill="white"/>
                    <rect width="30%" height="30%" x="35%" y="4%" class="svg-brand-alive" fill="black"/>
                    <rect width="30%" height="30%" x="66%" y="4%" class="svg-brand-alive" fill="black"/>

                    <rect width="30%" height="30%" x="4%"  y="35%" class="svg-brand-alive" fill="black"/>
                    <rect width="30%" height="30%" x="35%" y="35%" class="svg-brand-alive" fill="black"/>
                    <rect width="30%" height="30%" x="66%" y="35%" class="svg-brand-dead" fill="white"/>

                    <rect width="30%" height="30%" x="4%"  y="66%" class="svg-brand-dead" fill="white"/>
                    <rect width="30%" height="30%" x="35%" y="66%" class="svg-brand-alive" fill="black"/>
                    <rect width="30%" height="30%" x="66%" y="66%" class="svg-brand-dead" fill="white"/>
                </g>
            </svg>

            <h1 class="brand-title">Brand Title</h1>
        </div> <!-- end brand -->


        <div class="menu">

            <!-- expanded menu only displays on larger screen sizes -->
            <div class="menu-expanded">
                <p class="menu-expanded-item">HOME</p>
                <p class="menu-expanded-item">ABOUT US</p>
                <p class="menu-expanded-item">ADVERTISE</p>
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" class="svg-menu" viewBox="0 0 16 16" id="svg-menu" preserveAspectRatio="xMidYMid meet">
                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
            </svg>
        </div> <!-- end menu -->


        <div class="menu-collapse">
            <ul>
                <li><p class="menu-collapse-item">HOME</p></li>
                <li><p class="menu-collapse-item">ABOUT US</p></li>
                <li><p class="menu-collapse-item">ADVERTISE</p></li>
            </ul>
        </div> <!-- end menu-collapse -->

    </div> <!-- end container -->
</nav>

<script>

    $(window).on("resize", function() {
        $(".menu-collapse").hide();
    });

    $(window).on("load", function() {

        // menu show/hide
        $("#svg-menu").on("click", function() {
            $(".menu-collapse").toggle();
        });

        // everything below can be ignored
        // dynamic random color schemes generated for fun, not to be used on live sites
        // high contrast, triadic color set for accessibility
        var randColor1 = Math.random()*360;
        var randColor2 = randColor1 + 120;
        var randColor3 = randColor2 + 120;

        $(".svg-brand-alive").css("fill", `hsl(${randColor1}, 100%, 80%)`);
        $(".svg-brand-dead").css("fill", `hsl(${randColor2}, 55%, 80%)`);
        $(".svg-brand-background").css("fill", `hsl(${randColor3}, 55%, 20%`);

        // additional styles base on first three colors
        $(".nav-container").css("background-color", `hsl(${randColor3}, 50%, 20%`);
        $(".brand-title").css("color", `hsl(${randColor1}, 100%, 80%)`);
        $(".menu-title").css("color", `hsl(${randColor1}, 100%, 80%)`);
        $("#svg-menu").css("fill", `hsl(${randColor1}, 100%, 80%)`);
        $("#svg-menu").css("border", `2px solid hsl(${randColor2}, 55%, 80%)`);

        $(".menu-collapse").css("background-color", `hsl(${randColor3}, 50%, 60%`);
        $(".menu-collapse-item").css("color", `hsl(${randColor1}, 100%, 50%`);
        $(".menu-expanded-item").css("color", `hsl(${randColor1}, 100%, 80%)`);

    });


</script>
