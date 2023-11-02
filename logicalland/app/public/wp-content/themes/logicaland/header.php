<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php wp_title(); ?></title>
    <?php wp_head(); ?>
    <!-- Link to your custom CSS file if needed -->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">
</head>
<body <?php body_class(); ?>>
    <header>
        <div class="logo">
            <!-- Your logo image or HTML goes here -->
        </div>
        <?php
        wp_nav_menu(
            array(
                'theme_location' => 'primary', // Use the appropriate theme location
                'menu_id'        => 'header-menu',
                'container'      => 'nav',
                'container_class'=> 'main-menu',
            )
        );
        ?>
        <nav>
            <ul>
                <li><a href="<?php echo esc_url(home_url('/')); ?>">Home</a></li>
                <a href="<?php echo esc_url(get_permalink(get_page_by_title('About'))); ?>">About</a>
                <li><a href="<?php echo esc_url(home_url('/contact/')); ?>">Contact</a></li>
            </ul>
        </nav>
        
    </header>
