<header id="header">

	<?php the_custom_logo() ?>

	<?php if (get_bloginfo('description')) : ?>
		<p><?php echo get_bloginfo('description') ?></p>
	<?php endif ?>

	<?php dynamic_sidebar('header') ?>

</header>
