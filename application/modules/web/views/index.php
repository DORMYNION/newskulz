<section id="slider_area" class="slider_area">
    <?php $slider_str = ''; foreach($sliders as $obj){ ?>
        <?php $slider_str .= '"assets/uploads/slider/'.$obj->image.'"'.','; ?>
    <?php } ?>
    <div id="demo-1" data-zs-src='[<?php echo rtrim($slider_str, ','); ?>]' data-zs-overlay="dots">
        <div class="demo-inner-content"></div>
    </div>
</section>

<section class="content-area">
    <div class="container">
        <div class="row about-area">
            <div class="col-12"><div class="site-title"><h1><?php echo $about->page_title; ?></h1></div></div>
            <div class="col-lg-6">
                <?php echo $about->page_description; ?>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid img-thumbnail" src="<?php echo UPLOAD_PATH; ?>/page/<?php echo $about->page_image; ?>" alt="">
            </div>
        </div>

        <?php if(isset($notices) && !empty($notices)){ ?>
        <div class="row text-center">
            <div class="col-lg-12">
                <div class="site-title">
                    <h2><?php echo $this->lang->line('notice'); ?></h2>
                </div>
            </div>

           <?php foreach($notices as $obj){ ?> 
            <div class="notice-single col-lg-4">                
                <div class="notice-title">
                    <h2><?php echo $obj->title; ?></h2>
                    <h3><i class="fa fa-calendar"></i>  <?php echo date('M j, Y', strtotime($obj->date)); ?> </h3>
                </div>
                <div>
                    <p><?php echo substr($obj->notice, 0,120); ?>...</p>
                </div>
                <div class="more-link"><a href="<?php echo site_url('notice-detail/'.$obj->id); ?>" class="btn-link"><?php echo $this->lang->line('read_more'); ?> <i class="fa fa-long-arrow-right"></i></a></div>
            </div>
           <?php } ?>                
        </div>
        <?php } ?>
        
    </div>
</section>

 <?php if(isset($events) && !empty($events)){ ?>
    <section id="events" class="event-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="site-title">
                    <h2><?php echo $this->lang->line('event'); ?></h2>
                </div>
            </div>
        </div>
    </div>

    <div class="container service_container">
        <div class="row text-center justify-content-center">
            <?php foreach($events as $obj){ ?> 
                <div class="col-md-4 col-sm-6">
                    <div class="single-event-list">
                        <div class="event-img">
                            <a href="<?php echo site_url('event-detail/'.$obj->id); ?>"><img src="<?php echo UPLOAD_PATH; ?>/event/<?php echo $obj->image; ?>" alt=""></a>
                        </div>
                        <div class="event-content">
                            <div class="event-meta">
                                <div class="event-title"><?php echo $obj->title; ?></div>
                                <div class="event-for"><span><?php echo $this->lang->line('event_for'); ?></span>: <?php echo $obj->name ? $obj->name : $this->lang->line('all'); ?></div>
                                <div class="event-place"><span><?php echo $this->lang->line('event_place'); ?></span>: <?php echo $obj->event_place; ?></div>
                                <div class="event-date"><span><?php echo $this->lang->line('start_date'); ?></span>: <i class="far fa-clock"></i> <?php echo date('M j, Y', strtotime($obj->event_from)); ?></div>
                                <div class="event-date"><span><?php echo $this->lang->line('end_date'); ?></span>: <i class="far fa-clock"></i> <?php echo date('M j, Y', strtotime($obj->event_to)); ?></div>
                            </div>
                            <div class="more-link"><a href="<?php echo site_url('event-detail/'.$obj->id); ?>" class="btn-link"><?php echo $this->lang->line('read_more'); ?> <i class="fa fa-long-arrow-right"></i></a></div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
<?php } ?>