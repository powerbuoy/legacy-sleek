<?php
require_once get_template_directory() . '/inc/utils.php';
require_once get_template_directory() . '/inc/acf.php';
require_once get_template_directory() . '/inc/add-editor-styles.php';
require_once get_template_directory() . '/inc/archive-filter.php';
require_once get_template_directory() . '/inc/archive-meta-data.php';
require_once get_template_directory() . '/inc/cleanup-nav.php';
require_once get_template_directory() . '/inc/cleanup.php';
require_once get_template_directory() . '/inc/comment-form-placeholders.php';
require_once get_template_directory() . '/inc/default-meta-boxes.php';
# require_once get_template_directory() . '/inc/disable-theme-updates.php';
require_once get_template_directory() . '/inc/fix-active-menu-items.php';
require_once get_template_directory() . '/inc/fix-wp-gallery.php';
require_once get_template_directory() . '/inc/get-site-logo.php';
require_once get_template_directory() . '/inc/get-terms-post-type-arg.php';
require_once get_template_directory() . '/inc/login.php';
require_once get_template_directory() . '/inc/options-page.php';
require_once get_template_directory() . '/inc/reduce-requests.php';
require_once get_template_directory() . '/inc/register-assets.php';
require_once get_template_directory() . '/inc/register-image-sizes.php';
require_once get_template_directory() . '/inc/register-post-types.php';
require_once get_template_directory() . '/inc/register-sidebars.php';
require_once get_template_directory() . '/inc/register-taxonomies.php';
require_once get_template_directory() . '/inc/tinymce.php';
require_once get_template_directory() . '/inc/youtube-args.php';

###################
# Title tag support
add_theme_support('title-tag');

###################
# Disable Gutenberg
add_filter('use_block_editor_for_post_type', '__return_false', 10);

#####################
# Give pages excerpts
add_action('init', function () {
	add_post_type_support('page', 'excerpt');
});

##################################
# Show the editor on the blog page
# https://wordpress.stackexchange.com/questions/193755/show-default-editor-on-blog-page-administration-panel
add_action('edit_form_after_title', function ($post) {
	if (isset($post) and $post->ID == get_option('page_for_posts')) {
		remove_action('edit_form_after_title', '_wp_posts_page_notice');
		add_post_type_support('page', 'editor');
	}
}, 0);

################################################
# Remove "Protected:" from protected post titles
add_filter('private_title_format', function () {
	return '%s';
});

add_filter('protected_title_format', function () {
	return '%s';
});

#############################
# Hide Sleek theme from admin
add_filter('wp_prepare_themes_for_js', function ($themes) {
	unset($themes['sleek']);

	return $themes;
});

########################
# Set up for translation
add_action('after_setup_theme', function () {
	load_theme_textdomain('sleek', get_template_directory() . '/languages');
});

######################
# 404 attachment pages
add_filter('template_redirect', 'sleek_404_attachments');

function sleek_404_attachments () {
	global $wp_query;

	if (is_attachment()) {
		status_header(404); # Sets 404 header
		$wp_query->set_404(); # Shows 404 template
	}
}

##########################
# Disable 404 URL guessing
# https://core.trac.wordpress.org/ticket/16557
add_filter('redirect_canonical', 'sleek_disable_404_guessing');

function sleek_disable_404_guessing ($url) {
	if (is_404() and !isset($_GET['p'])) {
		return false;
	}

	return $url;
}

################################################
# Remove title attribute from wp_list_categories
# https://www.isitwp.com/remove-title-attribute-from-wp_list_categories/
add_action('wp_list_categories', function ($output) {
	return preg_replace('/ title="(.*?)"/s', '', $output);
});

#####################################
# Prevent WP wrapping iframe's in <p>
# https://gist.github.com/KTPH/7901c0d2c66dc2d754ce
add_filter('the_content', function ($content) {
	return preg_replace('/<p>\s*(<iframe .*>*.<\/iframe>)\s*<\/p>/iU', '\1', $content);
});

#####################
# Change email sender
add_filter('wp_mail_from', 'sleek_email_from');

function sleek_email_from () {
	return get_option('admin_email');
}

add_filter('wp_mail_from_name', 'sleek_email_from_name');

function sleek_email_from_name () {
	return get_bloginfo('name');
}

################
# Modify excerpt
add_filter('excerpt_length', function () {
	return 25;
});

add_filter('excerpt_more', function () {
	return ' /../';
});
