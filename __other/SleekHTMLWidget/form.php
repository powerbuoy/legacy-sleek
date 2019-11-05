<p>
	<label for="<?php echo $this->get_field_id('title') ?>"><?php _e('Title:') ?></label><br>
	<input class="widefat" id="<?php echo $this->get_field_id('title') ?>" name="<?php echo $this->get_field_name('title') ?>" type="text" value="<?php echo esc_attr($title) ?>"/>
</p>

<p>
	<label for="<?php echo $this->get_field_id('id') ?>"><?php _e('ID:') ?></label><br>
	<input class="widefat" id="<?php echo $this->get_field_id('id') ?>" name="<?php echo $this->get_field_name('id') ?>" type="text" value="<?php echo esc_attr($id) ?>"/>
</p>

<p>
	<label for="<?php echo $this->get_field_id('element') ?>"><?php _e('Element:') ?></label><br>
	<input class="widefat" id="<?php echo $this->get_field_id('element') ?>" name="<?php echo $this->get_field_name('element') ?>" type="text" value="<?php echo esc_attr($element) ?>"/>
</p>

<p>
	<label for="<?php echo $this->get_field_id('classes') ?>"><?php _e('Classes:') ?></label><br>
	<input class="widefat" id="<?php echo $this->get_field_id('classes') ?>" name="<?php echo $this->get_field_name('classes') ?>" type="text" value="<?php echo esc_attr($classes) ?>"/>
</p>

<p>
	<label for="<?php echo $this->get_field_id('content') ?>"><?php _e('Content:') ?></label><br>
	<textarea class="widefat" id="<?php echo $this->get_field_id('content') ?>" name="<?php echo $this->get_field_name('content') ?>" rows="16" cols="20"><?php echo esc_attr($content) ?></textarea>
</p>
