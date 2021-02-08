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
        <div class="flex h-screen">
            <div class="m-auto text-center">
                <div class="mb-40">
                    <h1 class="text-center text-white text-5xl font-extralight">
                    Hi there, I'm <span class="text-royalblue-400 font-normal">Ahmed Meshkin</span><br>
                    also a Wordpress developer.</h1>
                    <button class="bg-transparent hover:bg-royalblue-400 text-white font-semibold hover:text-white py-2 px-4 border border-white hover:border-transparent rounded mt-8">
                    MORE ABOUT ME <i class="fas fa-arrow-down"></i>
                    </button>
                </div>
            </div>
        </div>

    
    </div>
</section>

<?php } ?>

<?php get_footer(); ?>