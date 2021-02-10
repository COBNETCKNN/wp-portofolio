<?php get_header(); ?>

<!-- HERO SECTION -->

<?php 

    $heroQuery = new WP_Query(array(
        'page_id' => 10
    ));

    while($heroQuery->have_posts()){
        $heroQuery->the_post();

?>

<section id="hero">
    <div class="w-full h-screen bg-cover bg-center" style="background-image: url(<?php the_post_thumbnail_url(); ?>);">
        <div class="text-button flex h-screen">
            <div class="m-auto text-center">
                <div class="mb-40">
                    <h1 class="hero-text text-center text-white text-5xl font-extralight">
                    Hi there, I'm <span class="text-royalblue-400 font-normal">Ahmed Meshkin</span><br>
                    also a Wordpress developer.</h1>
                    <button class="hero-button bg-transparent hover:bg-royalblue-400 text-white font-semibold hover:text-white py-2 px-4 border border-white hover:border-transparent rounded mt-8">
                    MORE ABOUT ME <i class="fas fa-arrow-down"></i>
                    </button>
                </div>
            </div>
        </div>  
    </div>
</section>

    <!-- PARTICLES JS -->
    <canvas class="background"></canvas>

<?php } 
    wp_reset_postdata();
?>

<!-- NAV SECTION -->
<section id="navbar" class="hidden md:block">
        <!-- NAVBAR -->
        <div class="px-12 py-3 bg-gray-800">
            <div class="flex jusfity-start ml-10">
                <div id="nav__Items" class="hidden md:flex md:items-center">
                    <a href="#about-us" class="block mx-4 mt-2 md:mt-0 text-base text-gray-400 capitalize hover:text-royalblue-400">Home</a>
                    <a href="#products" class="block mx-4 mt-2 md:mt-0 text-base text-gray-400 capitalize hover:text-royalblue-400">About</a>
                    <a href="#location" class="block mx-4 mt-2 md:mt-0 text-base text-gray-400 capitalize hover:text-royalblue-400">Stack</a>
                    <a href="#location" class="block mx-4 mt-2 md:mt-0 text-base text-gray-400 capitalize hover:text-royalblue-400">Projects</a>  
                    <a href="#location" class="block mx-4 mt-2 md:mt-0 text-base text-gray-400 capitalize hover:text-royalblue-400">Contact</a>     
                </div>
            </div>
        </div>

        <!-- LINE UNDER THE NAVBAR -->
        <div class="nav-line bg-royalblue-400"></div>
</section>

<!-- ABOUT SECTION -->
<section id="about" class="relative bg-white mb-14">

        <?php 
        
            $aboutQuery = new WP_Query(array(
                'page_id' => 13
            ));

            while($aboutQuery->have_posts()){
                $aboutQuery->the_post();
           
        
        ?>

                <!-- HEADING SECTION -->
        <div class="container mx-auto">
            <h1 class="mt-12 uppercase text-center text-4xl lg:text-5xl font-raleway font-medium text-gray-700"><?php the_title(); ?></h1>
        </div>

        <!-- CONTENT --> 

        <div class="container mx-auto flex justify-center">
            <div class="md:w-1/2 mt-10">
                <div class="mx-auto">
                    <img class="mx-auto rounded-full shadow-xl border-solid border-2 border-royalblue-400 " src="<?php the_post_thumbnail_url('aboutAvatar'); ?>" alt="">
                </div>
            </div>

            <!-- CONTENT -->
            <div class="md:W-1/2 m-auto mr-24 text-lg">
                <p class="text-xl font-raleway text-gray-700"><?php the_content(); ?></p>
            </div>
        </div>

        <?php  }
            wp_reset_postdata();
        ?>
</section>

    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 100"><path fill="#E5E7EB" fill-opacity="1" d="M0,0L1440,96L1440,320L0,320Z"></path></svg>

<!-- STACK SECTION -->

<section id="stack" class="relative bg-gray-200">
    <div class="container mx-auto">
        <div class="py-40">
                <h1>asd</h1>
        </div>
    </div>
</section>









<?php get_footer(); ?>