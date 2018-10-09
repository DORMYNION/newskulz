<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-mail-forward"></i><small> <?php echo $this->lang->line('manage_promotion'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>

           
            <div class="x_content">                 
                <?php echo form_open_multipart(site_url('academic/promotion/index'), array('name' => 'promotion', 'id' => 'promotion', 'class' => 'form-horizontal form-label-left'), ''); ?>
                <div class="row">                    
                <div class="col-md-8 col-sm-8 col-xs-12">
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('running_session'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="current_session_id" id="current_session_id"  required="required">
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <option value="<?php echo $curr_session->id; ?>" <?php if(isset($current_session_id) && @$current_session_id == $curr_session->id){ echo 'selected="selected"';} ?>><?php echo $curr_session->session_year; ?></option>
                            </select>
                            <div class="help-block"><?php echo form_error('current_session_id'); ?></div>
                        </div>
                    </div>
                        
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('promote_to_session'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="next_session_id" id="next_session_id"  required="required" >
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <?php foreach($next_session as $obj ){ ?>
                                    <option value="<?php echo $obj->id; ?>" <?php if(isset($next_session_id) && @$next_session_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->session_year; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block"><?php echo form_error('next_session_id'); ?></div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('current_class'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="current_class_id" id="current_class_id"  required="required" >
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <?php foreach ($classes as $obj) { ?>
                                <option value="<?php echo $obj->id; ?>" <?php if(isset($current_class_id) && $current_class_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->name; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block"><?php echo form_error('current_class_id'); ?></div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('promote_to_class'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="next_class_id" id="next_class_id"  required="required" >
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <?php foreach ($classes as $obj) { ?>
                                <option value="<?php echo $obj->id; ?>" <?php if(isset($next_class_id) && $next_class_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->name; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block"><?php echo form_error('next_class_id'); ?></div>
                        </div>
                    </div>               
                    </div>
                    
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('exam'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="exam_id" id="exam_id"  required="required">
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <?php foreach ($exams as $obj) { ?>
                                <option value="<?php echo $obj->id; ?>" <?php if(isset($exam_id) && $exam_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->title; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block"><?php echo form_error('exam_id'); ?></div>
                        </div>
                    </div>
                
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="form-group"><br/>
                            <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('find'); ?></button>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>

           <?php  if (isset($students) && !empty($students)) { ?>
            <div class="x_content">             
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4 layout-box">
                        <p>
                            <h4><?php echo $this->lang->line('student'); ?> <?php echo $this->lang->line('promotion'); ?></h4>                            
                        </p>
                    </div>
                </div>            
            </div>
             <?php } ?>
            
            <div class="x_content">
                 <?php echo form_open(site_url('academic/promotion/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th><?php echo $this->lang->line('sl_no'); ?></th>
                            <th><?php echo $this->lang->line('name'); ?></th>
                            <th><?php echo $this->lang->line('phone'); ?></th>
                            <th><?php echo $this->lang->line('roll_no'); ?></th>
                            <th><?php echo $this->lang->line('photo'); ?></th>
                            <th><?php echo $this->lang->line('mark_total'); ?></th>                                            
                            <th><?php echo $this->lang->line('mark_obtain'); ?></th>                                            
                            <th><?php echo $this->lang->line('average_grade_point'); ?></th>                                            
                            <th><?php echo $this->lang->line('class'); ?> <?php echo $this->lang->line('option'); ?></th>                                            
                            <th><?php echo $this->lang->line('next_roll_no'); ?></th>                                            
                        </tr>
                    </thead>
                    <tbody id="fn_mark">   
                        <?php
                        $count = 1;
                        if (isset($students) && !empty($students)) {
                            ?>
                            <?php foreach ($students as $obj) { ?>
                            <?php  $result = get_exam_result($obj->id, $this->academic_year_id, $exam_id, $current_class_id); ?>
                            <?php  $enroll = get_enrollment($obj->id, $next_session_id); ?>
                                <tr>
                                    <td><?php echo $count++;  ?></td>
                                    <td><?php echo ucfirst($obj->name); ?></td>
                                    <td><?php echo $obj->phone; ?></td>
                                    <td><?php echo $obj->roll_no; ?></td>
                                    <td>
                                        <?php if ($obj->photo != '') { ?>
                                            <img src="<?php echo UPLOAD_PATH; ?>/student-photo/<?php echo $obj->photo; ?>" alt="" width="60" /> 
                                        <?php } else { ?>
                                            <img src="<?php echo IMG_URL; ?>/default-user.png" alt="" width="60" /> 
                                        <?php } ?>
                                    </td>  
                                    <td>
                                        <input type="hidden" value="<?php echo $obj->id; ?>"  name="students[]" />                                       
                                        <input type="number" value="<?php if(isset($result) && $result->exam_total_mark > 0 ){ echo $result->exam_total_mark; }else{ echo ''; } ?>"  name="exam_mark[<?php echo $obj->id; ?>]" class="form-control col-md-7 col-xs-12 small-field" required="required" />
                                    </td>
                                    <td>
                                        <input type="number" value="<?php if(isset($result) && $result->obtain_total_mark > 0 ){ echo $result->obtain_total_mark; }else{ echo ''; } ?>"  name="obtain_mark[<?php echo $obj->id; ?>]" class="form-control col-md-7 col-xs-12 small-field" required="required" />
                                    </td>
                                    <td>
                                        <input type="number" value="<?php if(isset($result) && $result->avg_grade_point > 0 ){ echo $result->avg_grade_point; }else{ echo ''; } ?>"  name="avg_grade_point[<?php echo $obj->id; ?>]" class="form-control col-md-7 col-xs-12 small-field" required="required" />
                                    </td>
                                    <td>
                                        <select  class="form-control col-md-7 col-xs-12" name="promotion_class_id[<?php echo $obj->id; ?>]"  required="required">                                
                                            <option value="<?php echo $next_class->id; ?>" <?php if(isset($enroll) && $enroll->class_id == $next_class->id){ echo 'selected="selected"';} ?>><?php echo $next_class->name; ?></option>
                                            <option value="<?php echo $current_class->id; ?>" <?php if(isset($enroll) && $enroll->class_id == $current_class->id){ echo 'selected="selected"';} ?>><?php echo $current_class->name; ?></option>
                                        </select>
                                    </td>
                                    <td>
                                        <input type="number" value="<?php if(isset($enroll)){ echo $enroll->roll_no;}else{ echo $count-1;} ?>"  name="roll_no[<?php echo $obj->id; ?>]"  class="form-control col-md-7 col-xs-12 small-field" required="required" />
                                    </td>
                                </tr>
                            <?php } ?>
                        <?php }else{ ?>
                                <tr>
                                    <td colspan="10" align="center"><?php echo $this->lang->line('no_data_found'); ?></td>
                                </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-5">
                        <?php  if (isset($students) && !empty($students)) { ?>
                         <input type="hidden" value="<?php echo $current_session_id; ?>"  name="current_session_id" />
                         <input type="hidden" value="<?php echo $next_session_id; ?>"  name="next_session_id" />
                         <input type="hidden" value="<?php echo $current_class_id; ?>"  name="current_class_id" />
                         <input type="hidden" value="<?php echo $next_class_id; ?>"  name="next_class_id" />
                         <input type="hidden" value="<?php echo $exam_id; ?>"  name="exam_id" />
                         <a href="<?php echo site_url('academic/promotion'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                         <?php if(has_permission(ADD, 'academic', 'promotion')){ ?>
                            <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('promote'); ?></button>
                         <?php } ?>
                        <?php } ?>
                    </div>
                </div>
                 <?php echo form_close(); ?>
                
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="instructions"><strong><?php echo $this->lang->line('instruction'); ?>: </strong> 
                        <ol>
                            <li><?php echo $this->lang->line('promotion_instruction_1'); ?></li>
                            <li><?php echo $this->lang->line('promotion_instruction_2'); ?></li>
                            <li><?php echo $this->lang->line('promotion_instruction_3'); ?></li>
                            <li><?php echo $this->lang->line('promotion_instruction_4'); ?></li>
                            <li><?php echo $this->lang->line('promotion_instruction_5'); ?></li>
                        </ol>
                    </div>
                </div>
            </div>             
        </div>
    </div>
</div>

<script type="text/javascript">
    $("#promotion").validate();  
    $("#add").validate();  
</script>
<style>
#datatable-responsive label.error{display: none !important;}
</style>

