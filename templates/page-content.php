<?php $no_title = get_post_meta( $post->ID, 'thm_no_title', true ); ?>

<div class="col">
    <?php
    if (!$no_title) :
        $page_title 		= get_post_meta( $post->ID, 'thm_page_title', true );
        $page_subtitle 		= get_post_meta( $post->ID, 'thm_page_subtitle', true );
    ?> 
        <div class="title-area">
            <h2 class="title"><?php if($page_title != '') { echo $page_title; }else{ echo get_the_title(); } ?> </h2>

            <?php if ( $page_subtitle != '') : ?>
                <p class="subtitle"><?php echo $page_subtitle; ?></p>
            <?php endif; ?>
            
        </div> <!-- .section-title -->
    <?php endif; ?>

    <div class="page-content">
        <?php echo do_shortcode(get_the_content()); ?>
    </div> <!-- .page-content -->
</div>
