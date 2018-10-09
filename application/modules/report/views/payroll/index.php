<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-bar-chart"></i><small> <?php echo $this->lang->line('payroll'); ?> <?php echo $this->lang->line('report'); ?></small></h3>                
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>
            
            <?php $this->load->view('quick_report'); ?>   
            
             <div class="x_content filter-box"> 
                <?php echo form_open_multipart(site_url('report/payroll'), array('name' => 'payroll', 'id' => 'payroll', 'class' => 'form-horizontal form-label-left'), ''); ?>
                <div class="row">                    
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="item form-group"> 
                                <div><?php echo $this->lang->line('academic_year'); ?></div>
                                <select  class="form-control col-md-7 col-xs-12" name="academic_year_id" id="academic_year_id" >
                                    <option value="">--<?php echo $this->lang->line('select'); ?>--</option>
                                    <?php foreach ($academic_years as $obj) { ?>
                                    <option value="<?php echo $obj->id; ?>" <?php if(isset($academic_year_id) && $academic_year_id == $obj->id){ echo 'selected="selected"';} ?>><?php echo $obj->session_year; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                    
                        <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="item form-group"> 
                            <div><?php echo $this->lang->line('group_by_data'); ?> <span class="required">*</span></div>
                            <select  class="form-control col-md-7 col-xs-12" name="group_by" id="group_by" required="required">
                                <option value="">--<?php echo $this->lang->line('select'); ?>--</option>                              
                                <option value="salary_type" <?php if(isset($group_by) && $group_by == 'salary_type'){ echo 'selected="selected"';} ?>><?php echo $this->lang->line('salary'); ?> <?php echo $this->lang->line('type'); ?></option>
                                <option value="expenditure_by" <?php if(isset($group_by) && $group_by == 'expenditure_by'){ echo 'selected="selected"';} ?>><?php echo $this->lang->line('expenditure'); ?> <?php echo $this->lang->line('method'); ?></option>
                                <option value="payment_to" <?php if(isset($group_by) && $group_by == 'payment_to'){ echo 'selected="selected"';} ?>><?php echo $this->lang->line('payment_to'); ?> </option>
                                <option value="month" <?php if(isset($group_by) && $group_by == 'month'){ echo 'selected="selected"';} ?>><?php echo $this->lang->line('month'); ?> </option>
                            </select>
                        </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="item form-group"> 
                                <div><?php echo $this->lang->line('role'); ?> <?php echo $this->lang->line('type'); ?> </div>
                                <select  class="form-control col-md-7 col-xs-12"  name="payment_to"  id="payment_to" >
                                    <option value="">--<?php echo $this->lang->line('select'); ?>--</option> 
                                    <option value="employee" <?php if(isset($payment_to) && $payment_to == 'employee'){ echo 'selected="selected"'; } ?>><?php echo $this->lang->line('employee'); ?></option>
                                    <option value="teacher" <?php if(isset($payment_to) && $payment_to == 'teacher'){ echo 'selected="selected"'; } ?>><?php echo $this->lang->line('teacher'); ?></option>
                                </select>
                            </div>
                        </div>
                       
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="item form-group"> 
                                <div><?php echo $this->lang->line('month'); ?></div>                                
                                <input  class="form-control col-md-12 col-xs-12 "  name="month"  id="month" value="<?php echo isset($month) ? $month : ''; ?>" placeholder="<?php echo $this->lang->line('month'); ?>" type="text">
                                <div class="help-block"><?php echo form_error('month'); ?></div>
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

            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                    <ul  class="nav nav-tabs bordered">
                        <li class=""><a href="#tab_tabular"   role="tab" data-toggle="tab"   aria-expanded="true"><i class="fa fa-list-ol"></i> <?php echo $this->lang->line('tabular'); ?> <?php echo $this->lang->line('report'); ?></a> </li>
                        <li  class="active"><a href="#tab_graphical"   role="tab" data-toggle="tab"  aria-expanded="false"><i class="fa fa-line-chart"></i> <?php echo $this->lang->line('graphical'); ?> <?php echo $this->lang->line('report'); ?></a> </li>                          
                    </ul>
                    <br/>
                    
                    <div class="tab-content">
                        <div  class="tab-pane fade in" id="tab_tabular" >
                            <div class="x_content">
                            <table id="datatable-keytable" class="datatable-responsive table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('sl_no'); ?></th>
                                        <th><?php echo $this->lang->line('academic_year'); ?></th>
                                        <th><?php echo $this->lang->line('group_by_data'); ?></th>
                                        <th><?php echo $this->lang->line('amount'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php 
                                    $grnd_total = 0;
                                    $count = 1; if(isset($payrolls) && !empty($payrolls)){ ?>
                                        <?php foreach($payrolls as $obj){ ?>
                                        <tr>
                                            <td><?php echo $count++; ?></td>                                            
                                            <td><?php echo $obj->session_year; ?></td>
                                            <td>
                                                <?php 
                                                if($group_by == 'month'){
                                                    echo date('M, Y', strtotime('1-'.$obj->group_by_field));
                                                }elseif($group_by == 'expenditure_by' || $group_by == 'payment_to' || $group_by == 'salary_type'){
                                                    echo $obj->group_by_field = $this->lang->line($obj->group_by_field) ? $this->lang->line($obj->group_by_field) : $obj->group_by_field;
                                                }else{
                                                    echo $obj->group_by_field;
                                                }
                                                ?>
                                            </td>
                                            <td><?php echo $obj->total_amount; $grnd_total +=$obj->total_amount; ?></td>                                           
                                        </tr>
                                        <?php } ?>
                                        <tr>
                                            <td colspan="3"><strong><?php echo $this->lang->line('total'); ?> <?php echo $this->lang->line('amount'); ?></strong></td>
                                            <td><strong><?php echo number_format($grnd_total,2); ?></strong></td>                                           
                                        </tr>
                                    <?php }else{ ?>
                                        <tr><td colspan="8" class="text-center"><?php echo $this->lang->line('no_data_found'); ?></td></tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>
                        <div  class="tab-pane fade in active" id="tab_graphical" >
                            <div class="x_content">
                                <?php if(isset($payrolls) && !empty($payrolls)){ ?>
                                 <script type="text/javascript">

                                    $(function () {
                                        $('#payroll-report').highcharts({
                                            chart: {
                                                type: 'pie',
                                                options3d: {
                                                    enabled: true,
                                                    alpha: 45
                                                }
                                            },
                                            title: {
                                                text: ' <?php echo $this->lang->line('payroll'); ?> <?php echo $this->lang->line('report'); ?>'
                                            },
                                            subtitle: {
                                                text: ''
                                            },
                                            plotOptions: {
                                                pie: {
                                                    innerSize: 100,
                                                    depth: 45,
                                                    dataLabels: {
                                                        format: '{point.name}'
                                                    }
                                                }
                                            },
                                            series: [{
                                                name: '<?php echo $this->lang->line('amount'); ?>',
                                                data: [ 
                                                    
                                                    <?php foreach($payrolls as $obj){ ?>
                                                    <?php 
                                                    if($group_by == 'month'){
                                                        $obj->group_by_field = date('M, Y', strtotime('1-'.$obj->group_by_field));
                                                    }
                                                    ?>
                                                    ['<?php echo $obj->session_year; ?><br/><?php echo $obj->group_by_field; ?>', <?php echo $obj->total_amount; ?>],
                                                    <?php } ?>                                                   
                                                ]
                                            }],
                                            credits: {
                                            enabled: false
                                            }
                                        });
                                     });
                                </script>
                                <div id="payroll-report" style="width: 99%; height: 500px; margin: 0 auto"></div>
                                 <?php }else{ ?>
                                <p class="text-center"><?php echo $this->lang->line('no_data_found'); ?></p>
                                 <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

 <link href="<?php echo VENDOR_URL; ?>datepicker/datepicker.css" rel="stylesheet">
 <script src="<?php echo VENDOR_URL; ?>datepicker/datepicker.js"></script>
 <script type="text/javascript">  
     
     $("#month").datepicker( {
        format: "mm-yyyy",
        startView: "months", 
        minViewMode: "months"
    });
     
    $("#expenditure").validate();      
    <?php if(isset($payment_to) && isset($user_id)){ ?>
        get_user_list('<?php echo $payment_to; ?>', <?php echo $user_id; ?>)
    <?php } ?>
    function get_user_list(payment_to, user_id){
           
       $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('ajax/get_user_list_by_type'); ?>",
            data   : { payment_to : payment_to, user_id : user_id},               
            async  : false,
            success: function(response){                                                   
               if(response)
               {
                   $('#user_id').html(response); 
               }
            }
        }); 
   } 
       
</script>