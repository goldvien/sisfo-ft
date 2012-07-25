<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * @author 		Dwi Agus Purwanto
 * @package 	PyroCMS
 * @subpackage 	Yudicium model
 * @since		v0.1
 *
 */
class Yudisium_m extends MY_Model {
    protected $_table = 'yudisium';
    
    function get_prodies($nim){
    	return $get_major= $this->db->select('nim,name,x,department')->where('nim',$nim)->get('college')->row();
        //return $get_major->x;
    }
	
    function get_print($id)
    {
        $this->db->select('id,date')->where('id_parrent',$id);
        $this->db->where('code','4')->order_by('date','ASC');
        return $this->db->get('printed')->result();
    }
    
    function get_write_avg($date,$prodi)
    {
	$this->db->select("AVG( DATEDIFF(  `finish` ,  `start` ) /30 ) AS rerata");
	$this->db->where('yudisium_date',$date);
	$this->db->where('thesis',$prodi);
	$result = $this->db->get('yudisium')->row();
	return $result->rerata;
    }
    
    function get_stage($nim)
	{
	    /**
	    $this->db->select("RIGHT (`x`, '2) AS `stage`")
	    ->where('nim',$nim);
	    $result = $this->db->get('college')->row();
	    return $result->stage; **/
	    $query = $this->db->query("SELECT RIGHT (`x`,2) AS stage FROM `default_college` WHERE nim='".$nim."'");
	    $row   = $query->row();
	    return $row->stage;
	}
	
    function antidatir($date)
	{
	    $this->db->from('default_yudisium')
	    ->where('yudisium_date',$date)
	    ->where('antidatir','1');
	    return $this->db->count_all_results();
	}
    function count_cum_s1($where)
	{
	    //$query =("SELECT COUNT(*) FROM (`default_yudisium`) WHERE DATEDIFF(  `yudisium_date` , CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=8 AND  `thesis` =  'Skripsi' AND  `parrental` <>  'PKS' AND  `ipk` >= 3.51 AND  `yudisium_date` =  '".$where."'");
	    $this->db->from('default_yudisium');
	    $this->db->where('yudisium_date',$where);
	    $this->db->where("DATEDIFF(`yudisium_date`, CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=","10");
	    $this->db->where("thesis","Skripsi");
	    $this->db->where("parrental <> ","PKS");
	    $this->db->where('ipk >=','3.51');
	    return $this->db->count_all_results();
	}
    function count_cum($where,$thesis)
	{
	    if ($thesis == 'Skripsi') : $sem ="10"; else : $sem ="8"; endif;
	    $this->db->from('default_yudisium');
	    $this->db->where('yudisium_date',$where);
	    $this->db->where("DATEDIFF(`yudisium_date`, CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=",$sem);
	    $this->db->where("thesis",$thesis);
	    $this->db->where("parrental <> ","PKS");
	    $this->db->where('ipk >=','3.51');
	    return $this->db->count_all_results();
	}
	
    function count_verygood($where,$thesis)
	{
	    $this->db->from('default_yudisium');
	    $this->db->where('yudisium_date',$where);
	    $this->db->where("thesis",$thesis);
	    $this->db->where('ipk >=','2.76');
	    return $this->db->count_all_results();
	}
	
    function count_good($where,$thesis)
	{
	    $this->db->from('default_yudisium');
	    $this->db->where('yudisium_date',$where);
	    $this->db->where("thesis",$thesis);
	    $this->db->where('ipk <=','2.75');
	    $this->db->where('ipk >=','2.00');
	    return $this->db->count_all_results(); 
	}
	
    function count_verygood_s1($where)
	{
	    //$query =("SELECT COUNT(*) FROM (`default_yudisium`) WHERE DATEDIFF(  `yudisium_date` , CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=8 AND  `thesis` =  'Skripsi' AND  `parrental` <>  'PKS' AND  `ipk` >= 3.51 AND  `yudisium_date` =  '".$where."'");
	    $this->db->from('default_yudisium');
	    $this->db->where('yudisium_date',$where);
	   // $this->db->where("DATEDIFF(`yudisium_date`, CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=","10");
	    $this->db->where("thesis","Skripsi");
	    //$this->db->where('ipk <=','3.50');
	    $this->db->where('ipk >=','2.76');
	    return $this->db->count_all_results();
	}
	
    function count_good_s1($where)
	{
	    //$query =("SELECT COUNT(*) FROM (`default_yudisium`) WHERE DATEDIFF(  `yudisium_date` , CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=8 AND  `thesis` =  'Skripsi' AND  `parrental` <>  'PKS' AND  `ipk` >= 3.51 AND  `yudisium_date` =  '".$where."'");
	    $this->db->from('default_yudisium');
	    $this->db->where('yudisium_date',$where);
	   // $this->db->where("DATEDIFF(`yudisium_date`, CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 <=","10");
	    $this->db->where("thesis","Skripsi");
	    $this->db->where('ipk <=','2.75');
	    $this->db->where('ipk >=','2.00');
	    return $this->db->count_all_results();
	}
	
    function get_avg_ipk($where,$thesis)
	{
	    $query  = $this->db->query("SELECT AVG(ipk) AS rerata FROM `default_yudisium` WHERE `yudisium_date`='".$where."' AND thesis ='".$thesis."'");
	    $result = $query->row();
	    return $result->rerata;
	}
    
    function get_max_ipk($where,$thesis)
	{
	    $query  = $this->db->query("SELECT MAX(ipk) AS maksimum FROM `default_yudisium` WHERE `yudisium_date`='".$where."' AND thesis ='".$thesis."'");
	    $result = $query->row();
	    return $result->maksimum;
	}
    
    function get_min_ipk($where,$thesis)
	{
	    $query  = $this->db->query("SELECT MIN(ipk) AS minimum FROM `default_yudisium` WHERE `yudisium_date`='".$where."' AND thesis ='".$thesis."'");
	    $result = $query->row();
	    return $result->minimum;
	}
    
    function get_sem_min($where,$thesis)
	{
	    $query  = $this->db->query("SELECT MIN( DATEDIFF(`yudisium_date` , CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 ) AS minimum FROM (`default_yudisium`) WHERE  `yudisium_date` =  '".$where."' AND `thesis` = '".$thesis."'");
	    $result = $query->row();
	    return $result->minimum;
	}
    
    function get_sem_max($where,$thesis)
	{
	    $query  = $this->db->query("SELECT MAX( DATEDIFF(`yudisium_date` , CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 ) AS maksimum FROM (`default_yudisium`) WHERE  `yudisium_date` =  '".$where."' AND `thesis` = '".$thesis."'");
	    $result = $query->row();
	    return $result->maksimum;
	}
	
    function get_sem_avg($where,$prodi)
	{
	    $query  = $this->db->query("SELECT AVG( DATEDIFF(`yudisium_date` , CONCAT(  '20', LEFT(  `nim` , 2 ) ,  '-09-01' ) ) /180 ) AS semester FROM (`default_yudisium`) WHERE  `yudisium_date` =  '".$where."' AND `thesis` = '".$prodi."'");
	    $result = $query->row();
	    return $result->semester;
	    /**
	    $this->db->select("AVG( DATEDIFF(`yudisium_date`,CONCAT('20',LEFT(`nim`,2),'-09-01'))/180 ) AS semester");
	    
	    $this->db->where('yudisium_date',$where);
	    $result= $this->db->get('yudisium')->row();
	    return $result->semester;
	    **/
	}
    
    function get_write_min($date,$prodi)
	{
	    $this->db->select("MIN( DATEDIFF(  `finish` ,  `start` ) /30 ) as minimal");
	    $this->db->where('yudisium_date',$date);
	    $this->db->where('thesis',$prodi);
	    $result = $this->db->get('yudisium')->row();
	    return $result->minimal;
	}
    function get_write_max($date,$prodi)
	{
	    $this->db->select("MAX( DATEDIFF(  `finish` ,  `start` ) /30 ) as maximal");
	    $this->db->where('yudisium_date',$date);
	    $this->db->where('thesis',$prodi);
	    $result = $this->db->get('yudisium')->row();
	    return $result->maximal;
	}
    function add_print($parrent,$code)
	{
		$this->db->set('id_parrent', $parrent);
		$this->db->set('code',$code);
		$this->db->set('date',date('Y-m-d H:i:s'));
		$this->db->insert('default_printed');
	}
    
    function get_yudisium()
	{
		return $this->db->select('DISTINCT(yudisium_date)')->order_by('yudisium_date','DESC')->get('yudisium')->result();
	}
	
    function get_yudis_date($d_start,$d_finish)
	{
	    $this->db->select('DISTINCT(yudisium_date)');
	    $this->db->where('yudisium_date',$d_start);
	    $this->db->or_where('yudisium_date',$d_finish);
	    $this->db->order_by('yudisium_date','DESC');
	    return $this->db->get('yudisium')->result();
	    
	}
    
    function get_reportd()
	{
	    
	}
    function count_yudis_by($parrams = array())
	{
	    if(!empty($parrams['thesis']))
	    {
		$this->db->where('thesis',$parrams['thesis']);
	    }
	    if(!empty($parrams['parrental']))
	    {
		$this->db->where('parrental',$parrams['parrental']);
	    }
	    if(!empty($parrams['date']))
	    {
		$this->db->where('yudisium_date',$parrams['date']);
	    }
	    return $this->db->count_all_results('yudisium');
	}
    function get_yudis_by($key,$value)
    {
	
    }
    function get_religion($id)
    {
        $result = $this->db->select('id,name')->where('id',$id)->get('religions')->row();
        return $result->name;
    }
    
    function get_religions()
    {
        $result= array();
        $this->db->select('id,name');
        $this->db->from('default_religions');
        $this->db->order_by('id','ASC');
        $array_keys_values = $this->db->get();
        foreach ($array_keys_values->result() as $row)
        {
            $result[0]= '-Pilih Agama-';
            $result[$row->id]= $row->name;
        }

        return $result;
    }
    
    function get_dept(){
        return $this->db->get('department')->result();
    }
	
	function get_dept_id($name){
        return $this->db->select('id,name')->where('name',$name)->get('department')->result();
    }
    
    function get_lecture(){
        return $this->db->select('id,name,major')->order_by('name','ASC')->get('lecture')->result();
    }
    
	function get_pa($key){
        return $this->db->select('id,name,major')->where('major',$key)->order_by('name','ASC')->get('lecture')->result();
    }
	
    function search_pa($key)
    {
        $get_major= $this->db->select('major')->where('id',$key)->get('department')->row();
        
        $result = array();
		$this->db->select('*');
		$this->db->from('default_lecture');
		$this->db->where('major',$get_major->major);
		$this->db->order_by('name','ASC');
		$array_keys_values = $this->db->get();
        foreach ($array_keys_values->result() as $row)
        {
            $result[0]= '-Pilih Dosen-';
            $result[$row->id]= $row->name;
        }

        return $result;
    
    }
    
    function get_major($id)
    {
        $get_major= $this->db->select('id,major')->where('id',$id)->get('department')->row();
        return $get_major->major;
    }
	
	function get_major_by_name($name)
    {
        $get_major= $this->db->select('id,major')->where('name',$name)->get('department')->row();
        return $get_major->major;
    }
    
    function get_dosen($prodi_id){
        $prodi_id = $this->input->post('department');
        $get_major= $this->db->select('major')->where('id',$prodi_id)->get('department')->row();
		$result = array();
		$this->db->select('*');
		$this->db->from('default_lecture');
		$this->db->where('major',$get_major->major);
		$this->db->order_by('name','ASC');
		$array_keys_values = $this->db->get();
        foreach ($array_keys_values->result() as $row)
        {
            $result[0]= '-Pilih Dosen-';
            $result[$row->id]= $row->name;
        }

        return $result;

    }
    function get_lecture_by($key,$value=''){
        $this->db->select('id,nip,name,major');
        if (is_array($key))
		{
			$this->db->where($key);
		}
		else
		{
			$this->db->where($key, $value);
		}

		return $this->db->get('lecture')->row();
    }
    
    function get_by($key,$value='')
    {
        $this->db->select('id,nim,name,department');
        if (is_array($key))
		{
			$this->db->where($key);
		}
		else
		{
			$this->db->where($key, $value);
		}

		return $this->db->get($this->_table)->row();
    }
    
    function get_decree_num($date)
	{
	    $result = $this->db->where('date',$date)->get('decree')->row();
	    return $result->number;  
	}
    function get_decree_dy($bln,$thn)
	{
	    $bt= $bln."-".$thn;
	    $result = $this->db->where("DATE_FORMAT(`date` , '%M-%Y' )=",$bt)->get('decree')->row();
	    return $result->number;  
	}
    
    function get_many_by($params = array())
	{
		$this->load->helper('date');
                
                if(!empty($params['thesis']))
		{
		    $this->db->where('thesis',$params['thesis']);
		}
		if(!empty($params['yudisium_date']))
		{
		    $this->db->where('yudisium_date',$params['yudisium_date']);
		}
		if(!empty($params['orderasc']))
		{
		    $this->db->order_by($params['orderasc'],'ASC');
		}
		if(!empty($params['orderdesc']))
		{
		    $this->db->order_by($params['orderdesc'],'DESC');
		}
		if(!empty($params['group']))
		{
		    $this->db->group_by($params['group']); 
		}
		// Is a status set?
		if (!empty($params['printed']))
		{
			// If it's all, then show whatever the status
			if ($params['printed'] != 'all')
			{
				// Otherwise, show only the specific status
				$this->db->where('printed', $params['printed']);
			}
		}
		// Nothing mentioned, show live only (general frontend stuff)
		else
		{
			$this->db->where('status', '1');
		}
                
                /**
		if(!empty($params['date'])){
                    $this->db->where('date_format("date","%Y-%m-%d")',$params['date']);
                }
                **/
                
                // Limit the results based on 1 number or 2 (2nd is offset)
		if (isset($params['limit']) && is_array($params['limit']))
			$this->db->limit($params['limit'][0], $params['limit'][1]);
		elseif (isset($params['limit']))
			$this->db->limit($params['limit']);

		return $this->get_all();
	}
    
    function check_exists($field, $value = '', $id = 0)
	{
		if (is_array($field))
		{
			$params = $field;
			$id = $value;
		}
		else
		{
			$params[$field] = $value;
		}
		$params['id !='] = (int) $id;

		return parent::count_by($params) == 0;
	}
        
    public function search($data = array())
	{
		

		if (array_key_exists('printed', $data))
		{
			$this->db->where('printed', $data['printed']);
		}

                /**
		if(array_key_exists('date',$data))
                {
                        $this->db->where(' DATE_FORMAT("data", "%Y-%m-%d")', $data['date']);
                }
                **/
                
                if (array_key_exists('keywords', $data))
		{
			$matches = array();
			if (strstr($data['keywords'], '%'))
			{
				preg_match_all('/%.*?%/i', $data['keywords'], $matches);
			}

			if (!empty($matches[0]))
			{
				foreach ($matches[0] as $match)
				{
					$phrases[] = str_replace('%', '', $match);
				}
			}
			else
			{
				$temp_phrases = explode(' ', $data['keywords']);
				foreach ($temp_phrases as $phrase)
				{
					$phrases[] = str_replace('%', '', $phrase);
				}
			}

			$counter = 0;
			foreach ($phrases as $phrase)
			{
				if ($counter == 0)
				{
					$this->db->like('yudisium.name', $phrase);
				}
				else
				{
					$this->db->or_like('yudisium.name', $phrase);
				}

				//$this->db->or_like('blog.body', $phrase);
				//$this->db->or_like('blog.intro', $phrase);
				//$this->db->or_like('profiles.display_name', $phrase);
				$counter++;
			}
		}
		return $this->get_all();
	}
}