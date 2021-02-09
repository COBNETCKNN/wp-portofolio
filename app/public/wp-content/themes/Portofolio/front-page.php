<?php get_header(); ?>

<!-- HERO SECTION -->

<?php 

    $heroQuery = new WP_Query(array(
        'page_id' => 10
    ));

    while($heroQuery->have_posts()){
        $heroQuery->the_post();

?>

<section class="hero">
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
<section class="nav hidden md:block">
        <div class="px-6 py-3 bg-gray-800">
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
</section>






<?php get_footer(); ?>