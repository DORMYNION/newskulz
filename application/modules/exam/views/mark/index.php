

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-file-text-o"></i><small> <?php echo $this->lang->line('manage_mark'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content quick-link">
                <?php echo $this->lang->line('quick_link'); ?>:
                <?php if(has_permission(VIEW, 'exam', 'mark')){ ?>
                    <a href="<?php echo site_url('exam/mark'); ?>"><?php echo $this->lang->line('manage_mark'); ?></a>
                <?php } ?>
                <?php if(has_permission(VIEW, 'exam', 'marksheet')){ ?>
                   | <a href="<?php echo site_url('exam/marksheet'); ?>"><?php echo $this->lang->line('student'); ?> <?php echo $this->lang->line('mark_sheet'); ?></a>
                <?php } ?>
                <?php if(has_permission(VIEW, 'exam', 'result')){ ?>
                   | <a href="<?php echo site_url('exam/result'); ?>"><?php echo $this->lang->line('exam_final_result'); ?></a>                 
                <?php } ?>
                <?php if(has_permission(VIEW, 'exam', 'text')){ ?>
                   | <a href="<?php echo site_url('exam/text'); ?>"><?php echo $this->lang->line('mark_send_by_sms'); ?></a>                  
                <?php } ?>
                <?php if(has_permission(VIEW, 'exam', 'mail')){ ?>
                   | <a href="<?php echo site_url('exam/mail'); ?>"><?php echo $this->lang->line('mark_send_by_email'); ?></a>                    
                <?php } ?>
            </div>
            
            
            <div class="x_content"> 
                <?php echo form_open_multipart(site_url('exam/mark/index'), array('name' => 'mark', 'id' => 'mark', 'class' => 'form-horizontal form-label-left'), ''); ?>
                <div class="row">
                    
                    <div class="col-md-10 col-sm-10 col-xs-12">
                    <div class="col-md-3 col-sm-3 col-xs-12">
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
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('class'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="class_id" id="class_id"  required="required" onchange="get_section_subject_by_class(this.value,'','');">
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                <?php foreach ($classes as $obj) { ?>
                                <option value="<?php echo $obj->id; ?>" <?php if(isset($class_id) && $class_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->name; ?></option>
                                <?php } ?>
                            </select>
                            <div class="help-block"><?php echo form_error('class_id'); ?></div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('section'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="section_id" id="section_id" required="required">                                
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                            </select>
                            <div class="help-block"><?php echo form_error('section_id'); ?></div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('subject'); ?>  <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="subject_id" id="subject_id" required="required">                                
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                            </select>
                            <div class="help-block"><?php echo form_error('subject_id'); ?></div>
                        </div>
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
                    <div class="col-sm-4  col-sm-offset-4 layout-box">
                        <p>
                            <h4><?php echo $this->lang->line('exam_mark'); ?></h4>                            
                        </p>
                    </div>
                </div>            
            </div>
             <?php } ?>

            <div class="x_content">
                 <?php echo form_open(site_url('exam/mark/add'), array('name' => 'addmark', 'id' => 'addmark', 'class'=>'form-horizontal form-label-left'), ''); ?>
                <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th><?php echo $this->lang->line('sn'); ?></th>
                            <th><?php echo $this->lang->line('name_of_students'); ?></th>
                            <th><?php echo $this->lang->line('st_half'); ?></th>
                            <th><?php echo $this->lang->line('nd_half'); ?></th>
                            <th><?php echo $this->lang->line('ca'); ?></th>
                            <th><?php echo $this->lang->line('exam_mark'); ?></th>                                            
                            <th><?php echo $this->lang->line('total'); ?></th>                                            
                            <th><?php echo $this->lang->line('exam_grade'); ?></th>                                            
                            <th><?php echo $this->lang->line('effort_grade'); ?></th>                                            
                        </tr>
                    </thead>
                    <tbody id="fn_mark">   
                        <?php
                        $count = 1;
                        if (isset($students) && !empty($students)) {
                            ?>
                            <?php foreach ($students as $obj) { ?>
                            <?php  $mark = get_exam_mark($obj->student_id, $this->academic_year_id, $exam_id, $class_id, $section_id, $subject_id); ?>
                            <?php  $attendance = get_exam_attendance($obj->student_id, $this->academic_year_id, $exam_id, $class_id, $section_id, $subject_id); ?>
                                <tr>
                                    <td><?php echo $count++;  ?></td>
                                    <td><?php echo ucfirst($obj->student_name); ?></td>
                                    <td>
                                        <input type="number" value="<?php if(!empty($mark) && $mark->st_half > 0 ){ echo $mark->st_half; }else{ echo ''; } ?>" name="st_half[<?php echo $obj->student_id; ?>]" class="form-control" id="st_half<?php echo $obj->student_id; ?>" onkeyup="calScore('<?php echo $obj->student_id; ?>')" />
                                    </td>
                                    <td>
                                        <?php $sec = $mark->nd_half; ?>
                                        <input type="number" value="<?php if(!empty($mark) && $mark->nd_half > 0 ){ echo $mark->nd_half; }else{ echo ''; } ?>" name="nd_half[<?php echo $obj->student_id; ?>]" class="form-control" id="nd_half<?php echo $obj->student_id; ?>" onkeyup="calScore('<?php echo $obj->student_id; ?>')" />
                                    </td>
                                    <td>
                                        <input type="number" value="<?php if(!empty($mark) && $mark->ca > 0 ){ echo $mark->ca; }else{ echo ''; } ?>"  name="ca[<?php echo $obj->student_id; ?>]" value="0" placeholder="" class="form-control" id="ca<?php echo $obj->student_id; ?>" onkeyup="calScore('<?php echo $obj->student_id; ?>')" readonly="readonly" />
                                    </td>  
                                    <td>
                                        <?php if(!empty($attendance)){ ?>
                                            <input type="number" value="<?php if(!empty($mark) && $mark->obtain_mark > 0 ){ echo $mark->obtain_mark; }else{ echo ''; } ?>"  name="obtain_mark[<?php echo $obj->student_id; ?>]" class="form-control col-md-7 col-xs-12" required="required" id="obtain_mark<?php echo $obj->student_id; ?>" onkeyup="calScore('<?php echo $obj->student_id; ?>')" />
                                        <?php }else{ ?>
                                            <input type="number" value="0"  name="obtain_mark[<?php echo $obj->student_id; ?>]" class="form-control col-md-7 col-xs-12" required="required" id="obtain_mark<?php echo $obj->student_id; ?>" onkeyup="calScore('<?php echo $obj->student_id; ?>')" readonly="readonly" />
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <input type="hidden" value="<?php echo $obj->student_id; ?>"  name="students[]" />                                       
                                        <input type="number" value="<?php if(!empty($mark) && $mark->total_score > 0 ){ echo $mark->total_score; }else{ echo ''; } ?>"  name="total_score[<?php echo $obj->student_id; ?>]" value="" class="form-control col-md-7 col-xs-12 fn_mark_total" required="required" id="total_score<?php echo $obj->student_id; ?>" readonly="readonly" />
                                        
                                        <input type="hidden" value="" name="grade_avg" id="grade_avg" />                        

                                    </td>
                                    <td>
                                        <input type="text" value="<?php if(!empty($mark) && $mark->grade_id > 0 ){foreach ($grades as $grade) {if ($mark->grade_id === $grade->id) {echo $grade->name;}}}else{ echo ''; } ?>"  name="grade_id[<?php echo $obj->student_id; ?>]" class="form-control" onkeyup="calScore('<?php echo $obj->student_id; ?>')" id="grade<?php echo $obj->student_id; ?>" readonly="readonly" /> 
                                    </td>
                                    <td><input type="text" value="<?php if($mark){ echo $mark->effort_grade; } ?>"  name="effort_grade[<?php echo $obj->student_id; ?>]" class="form-control col-md-7 col-xs-12" /></td>
                                </tr>
                            <?php } ?>
                        <?php }else{ ?>
                                <tr>
                                    <td colspan="9" align="center"><?php echo $this->lang->line('no_data_found'); ?></td>
                                </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-5">
                        <?php  if (isset($students) && !empty($students)) { ?>
                            <input type="hidden" value="<?php echo $exam_id; ?>"  name="exam_id" />
                            <input type="hidden" value="<?php echo $class_id; ?>"  name="class_id" />
                            <input type="hidden" value="<?php echo $section_id; ?>"  name="section_id" />
                            <input type="hidden" value="<?php echo $subject_id; ?>"  name="subject_id" />                        
                            <a href="<?php echo site_url('exam/mark'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                           <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('submit'); ?></button>
                        <?php } ?>
                    </div>
                </div>
                 <?php echo form_close(); ?>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="instructions"><strong><?php echo $this->lang->line('instruction'); ?>: </strong> <?php echo $this->lang->line('exam_mark_instruction'); ?></div>
                </div>
            </div> 

            
        </div>
    </div>
</div>
 
<script type="text/javascript">     
  
    <?php if(isset($class_id) && isset($section_id)){ ?>
        get_section_subject_by_class('<?php echo $class_id; ?>', '<?php echo $section_id; ?>', '<?php echo $subject_id; ?>');
    <?php } ?>
    
    function get_section_subject_by_class(class_id, section_id, subject_id){       
           
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_section_by_class'); ?>",
            data   : { class_id : class_id , section_id: section_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                  $('#section_id').html(response);
               }
            }
        }); 
        
        $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_subject_by_class'); ?>",
            data   : { class_id : class_id , subject_id: subject_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                  $('#subject_id').html(response);
               }
            }
        }); 
        
        
    }
  
  $(document).ready(function(){
  
       $('#fn_total_mark').keyup(function(){         
               $('.fn_mark_total').val($(this).val());                     
       }); 
      
  }); 
  
 $("#mark").validate();  
 $("#addmark").validate();  
</script>

<script type="text/javascript">
    function calScore(id) {
        var gd = <?php echo json_encode($grades); ?>;
        
        var F = Number($('#st_half'+id).val()),
            S = Number($('#nd_half'+id).val()),
            E = Number($('#obtain_mark'+id).val()),
            C = 0,
            T = 0,
            idd = ''; 

        if ((F > 15)) {
            idd = '#st_half'+id;
            validateMark(id, idd);
        } else {
            idd = '#st_half'+id;
            cal(F, S, E, id, gd, idd);
        }

        if ((S > 15)) {
            idd = '#nd_half'+id;
            validateMark(id, idd);
        } else {
            idd = '#nd_half'+id;
            cal(F, S, E, id, gd, idd);
        }

        if ((E > 70)) {
            idd = '#obtain_mark'+id;
            validateMark(id, idd);
        } else {
            idd = '#obtain_mark'+id;
            cal(F, S, E, id, gd, idd);
        }
        gradeAvg();

    }  

    function validateMark(id, idd)  {
        $(idd).css({
            "background-color": 'red',
            "border": '2px solid',
            "color": 'blue'
        });
        
        $('#ca'+id).val(0);
        $('#total_score'+id).val(0);
        $('#grade'+id).val("error");

        // Prevent form submission
        // if ($('#grade'+id).val() == "error") {
        //     $( "form" ).submit(function( event ) {
        //       event.preventDefault();
        //       console.log("ERROR");
        //       console.log($('#grade'+id).val());
        //     });
        // } 
    }   

    function cal(F, S, E, id, gd, idd) {
        C = F + S;
        T = C + E; 
                  
        $('#ca'+id).val(C);
        $('#total_score'+id).val(T);

        gd.forEach(function(element) {
            if (T >= element['mark_from'] && T <= element['mark_to']) {
                $('#grade'+id).val(element['name']);
            } 
        });
        $(idd).css({
            "background-color": '',
            "border": '',
            "color": ''
        });

        // var mak = <?php //echo json_encode($mark); ?>;
        // console.log(mak);
    }

    function gradeAvg() {
        var students = <?php echo json_encode($students); ?>;
        var count = 1,
            avg = 0,
            total = 0;

        students.forEach(function(obj) {
            var T = Number($('#total_score'+count).val());
            total += T;
            avg = total/count;
            count ++;
        });
        $('#grade_avg').val(avg)
        console.log(count);
        console.log(total);
        console.log(avg);
    console.log($('#grade_avg').val());
    }


</script>