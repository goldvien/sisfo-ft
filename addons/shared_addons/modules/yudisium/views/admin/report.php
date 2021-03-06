<script>  
  $(document).ready(function() {
    $(".cetak").printPage();
  });
</script>
<section class="title">
	<h4>Rekap Yudisium</h4>
</section>
<section class="item">
	<?php if ($data) : ?>
	<div id="filter-stage">
		<table>
			<thead>
			<tr>
				
				<th class="collapse"><?php echo lang('yudisium_date'); ?></th>				
				<!--<th class="collapse"><?php echo lang('yudisium_count_d3'); ?></th>	 -->			    
				<th class="collapse"><?php echo lang('yudisium_print_d3'); ?></th>
				<!--<th class="collapse"><?php echo lang('yudisium_export_d3'); ?></th> -->
				<th class="collapse"><?php echo lang('yudisium_present_d3'); ?></th>
				<!--<th class="collapse"><?php echo lang('yudisium_count_s1'); ?></th> -->
				<th class="collapse"><?php echo lang('yudisium_print_s1'); ?></th>
				<!--<th class="collapse"><?php echo lang('yudisium_export_s1'); ?></th> -->
				<th class="collapse"><?php echo lang('yudisium_present_s1'); ?></th>
				<!--<th class="collapse"><?php echo lang('yudisium_count_all'); ?></th>
				<th class="collapse"><?php echo lang('yudisium_export_all'); ?></th>-->
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="7">
					<!--<div class="inner"><?php $this->load->view('admin/partials/pagination'); ?></div>-->
				</td>
			</tr>
		</tfoot>
		<tbody>
		</tbody>
		<?php foreach ($data as $item) : ?>
			<tr>
					<td><?php echo tanggal($item->yudisium_date); ?></td>
					<?php $decrees = get_decree_num($item->yudisium_date);?>
					<!--<td><b><?php echo count_yudisium_by($item->yudisium_date,'D3'); ?></b>  <img src="<?php echo base_url().$this->module_details['path'];?>/img/graduate.png" width="20px" align="center"></td> -->
					<!-- <td><a href="admin/yudisium/report_d3/<?php echo $item->yudisium_date; ?>" class="cetak" title="cetak Urutan Yudisium Mahasiswa D3"><img src="<?php echo base_url().$this->module_details['path'];?>/img/print.png"></a></td> -->
					
					<!--<td><a href="admin/yudisium/export_d3/<?php echo $item->yudisium_date; ?>"><img src="<?php echo base_url().$this->module_details['path'];?>/img/excel.png" width="30px" align="center"></a></td>-->
					<td>
					  <?php foreach($decrees as $dc):?>
					    <b><?php echo anchor("admin/yudisium/report_d3/".$dc->date."-".$dc->ant,$dc->number)?></b> |
					   <!-- <b><a href="admin/yudisium/report_d3/<?php echo $dc->date;?>-<?php echo $dc->ant;?>"><?php echo $dc->number; ?></a></b> |-->
					    <?php endforeach; ?>
					</td>
					<td>
					  <!--<a href="admin/yudisium/present_d3/<?php echo $item->yudisium_date; ?>" class="cetak"></?php><img src="<?php echo base_url().$this->module_details['path'];?>/img/print.png" width="30px" align="center"></a>-->
					  <?php foreach($decrees as $pdc): ?>
					    <b><?php echo anchor("admin/yudisium/present_d3/".$pdc->date."-".$pdc->ant,$pdc->number); ?></b> |
					    <!--<b><a href="admin/yudisium/present_d3/<?php echo $pdc->date?>-<?php echo $pdc->ant; ?>"><?php echo $pdc->number; ?></a></b> |-->
					  <?php endforeach; ?>
					</td>
					<!--<td><b><?php echo count_yudisium_by($item->yudisium_date,'Skripsi'); ?></b>  <img src="<?php echo base_url().$this->module_details['path'];?>/img/graduate.png" width="20px" align="center"></td>-->
					<td>
					  <?php foreach($decrees as $dc):?>
					    <b><?php echo anchor("admin/yudisium/report_s1/".$dc->date."-".$dc->ant,$dc->number); ?></b> |
					    <!--<b><a href="admin/yudisium/report_s1/<?php echo $dc->date;?>-<?php echo $dc->ant;?>"><?php echo $dc->number; ?></a></b> |-->
					    <?php endforeach; ?>				  
					</td>
					<!--<td><a href="admin/yudisium/export_s1/<?php echo $item->yudisium_date; ?>"><img src="<?php echo base_url().$this->module_details['path'];?>/img/excel.png" width="30px" align="center"></a></td>-->
					<td>
					  <?php foreach($decrees as $pdc): ?>
					    <b><?php echo anchor("admin/yudisium/present_s1/".$dc->date."-".$dc->ant,$dc->number); ?></b> |
					    <!--<b><a href="admin/yudisium/present_s1/<?php echo $pdc->date?>-<?php echo $pdc->ant; ?>"><?php echo $pdc->number; ?></a></b> |-->
					  <?php endforeach; ?>
					</td>
					<!--<td><b><?php echo count_yudisium_all($item->yudisium_date); ?></b>  <img src="<?php echo base_url().$this->module_details['path'];?>/img/graduate.png" width="20px" align="center"></td>
					<td><a href="admin/yudisium/export_all/<?php echo $item->yudisium_date; ?>"></?php><img src="<?php echo base_url().$this->module_details['path'];?>/img/excel.png" width="30px" align="center"></a></td> -->
			</tr>
		<?php endforeach ; ?>
		</table>
	</div>
	<?php else : ?>
		<div class="no_data"><?php echo lang('blog_currently_no_posts'); ?></div>
	<?php endif; ?>
</section>