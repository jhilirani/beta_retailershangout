<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
if ( ! function_exists('short_words')){
    function short_words($str,$NoOfWorrd=20){
            $strArr=explode(' ',$str);	
            $shortStr='';
            if(count($strArr)<$NoOfWorrd)
                    $NoOfWorrd=count($strArr);
            for($i=0;$i<$NoOfWorrd;$i++){
                    if($i==0){
                            $shortStr=$strArr[$i];
                    }else{
                            $shortStr.=' '.$strArr[$i];
                    }
            }
            return $shortStr;
    }
}

if ( ! function_exists('my_seo_freindly_url')){
    function my_seo_freindly_url($String){
            $ChangedStr = preg_replace('/\%/',' percentage',$String);
            $ChangedStr = preg_replace('/\@/',' at ',$ChangedStr);
            $ChangedStr = preg_replace('/\'/',' - ',$ChangedStr);
            $ChangedStr = preg_replace('/\&/',' and ',$ChangedStr);
            $ChangedStr = preg_replace('/\s[\s]+/','-',$ChangedStr);    // Strip off multiple spaces
            $ChangedStr = preg_replace('/[\s\W]+/','-',$ChangedStr);    // Strip off spaces and non-alpha-numeric
            $ChangedStr = preg_replace('/^[\-]+/','',$ChangedStr); // Strip off the starting hyphens
            $ChangedStr = preg_replace('/[\-]+$/','',$ChangedStr); // // Strip off the ending hyphens
            return $ChangedStr;
    }
}

if ( ! function_exists('check_exists_BPO')){
    function check_exists_BPO($v,$rs){
            foreach($rs AS $k){
                    if($k['Objectives']==$v){
                            return true;
                    }
            }
            return false;
    }
}

if ( ! function_exists('pre')){
    function pre($var){ //die('rrr');
        echo '<pre>';//print_r($var);
        if(is_array($var) || is_object($var)) {
          print_r($var);
        } else {
          var_dump($var);
        }
        echo '</pre>';
    }
}

if ( ! function_exists('multiple_array_search')){
    function multiple_array_search($id,$column, $dataArray){ //die('rrr');
       foreach ($dataArray as $key => $val) {
           //echo $val[$column].' = '.$id .'<br>';
           if ($val[$column] === $id) {
               //echo 'PP';
               return $key;
           }else{
               //echo 'zzz';
           }
       }
       return FALSE;
    }
}

if(!function_exists('user_role_check')){
    function user_role_check($controller,$method){
        $CI=&get_instance();
        if($CI->session->userdata('ADMIN_SESSION_USER_VAR_TYPE')=='supper_admin'){
            return TRUE;
        }
        //$roleArr=$CI->se
        $found=FALSE;
        $roleVar=  unserialize($CI->session->userdata('ADMIN_ROLE_VAR'));
        //pre($roleVar);die;
        if(in_array($controller, $roleVar['controller'])){
            return TRUE;
        }else{
            return FALSE;
        }
        /*foreach($roleVar AS $k => $v){
            if($v['method']==$method && $v['controller']==$controller){
                return TRUE;
            }elseif($v['controller']==$controller){
                return TRUE;
            }
        }*/
    }
}

if ( ! function_exists('get_home_url')){
    function get_home_url(){
        $CI =& get_instance();
        $countryId=$CI->session->userdata('USER_SHIPPING_COUNTRY');
        if($countryId==1){
            return base_url().'send-online-gifts-usa';
        }else if($countryId==99){
            return base_url().'send-wine-cakes-flowers-online-india';
        }else if($countryId==240){
            return base_url().'send-gifts-worldwide';
        }
    }
}

if ( ! function_exists('title_more_string')){
    function title_more_string($str,$no_char=22){
        $strArr=  explode(' ', $str);
        $strLen=0;
        $newStr='';
        foreach($strArr AS $k){
            $strLen=$strLen+strlen($k);
            if($strLen>$no_char){
                return $newStr.' .....';
            }
            $newStr .= $k.' ';
        }
        return $str;
    }
}

if ( ! function_exists('return_current_country_code')){
    function return_current_country_code(){
        return 'IN';die;
        $ip=$_SERVER['REMOTE_ADDR'];
        
        $params = getopt('l:i:');
        if (!isset($params['l'])) $params['l'] = 'puDQd5MDgVxy';
        //if (!isset($params['i'])) $params['i'] = '24.24.24.24';
        //if (!isset($params['i'])) $params['i'] = $ip; //'122.177.246.210';
        if (!isset($params['i'])) $params['i'] = '122.177.246.210';

        $query = 'http://geoip.maxmind.com/a?' . http_build_query($params);

        $insights_keys =
          array(
            'country_code',
            'country_name',
            'region_code',
            'region_name',
            'city_name',
            'latitude',
            'longitude',
            'metro_code',
            'area_code',
            'time_zone',
            'continent_code',
            'postal_code',
            'isp_name',
            'organization_name',
            'domain',
            'as_number',
            'netspeed',
            'user_type',
            'accuracy_radius',
            'country_confidence',
            'city_confidence',
            'region_confidence',
            'postal_confidence',
            'error'
            );

        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => $query,
                CURLOPT_USERAGENT => 'MaxMind PHP Sample',
                CURLOPT_RETURNTRANSFER => true
            )
        );

        $resp = curl_exec($curl);

        if (curl_errno($curl)) {
            throw new Exception(
                'GeoIP request failed with a curl_errno of '
                . curl_errno($curl)
            );
        }

        $insights_values = str_getcsv($resp);
        $insights_values = array_pad($insights_values, sizeof($insights_keys), '');
        $insights = array_combine($insights_keys, $insights_values);
        return $insights['country_code'];
    }
    
    //send_sms_notification($data){
}

if ( ! function_exists('send_sms_notification')):
  function send_sms_notification($data){
    $CI=& get_instance();
    $CI->load->model('User_model','user');
    $CI->load->model('Siteconfig_model','siteconfig');
    $CI->load->library('tidiitsms');
    /*
    $notify['senderId'] = ;
    $notify['receiverId'] = ;
    $notify['nType'] = ;
    $notify['nTitle'] = ;
    $notify['nMessage'] = ;
     */
    $SMS_SEND_ALLOW=$CI->siteconfig->get_value_by_name('SMS_SEND_ALLOW');
    if($SMS_SEND_ALLOW=='yes'){
        $smsLogPath=ResourcesPath.'sms_log/'.date('d-m-Y').'/';
        if(!is_dir($smsLogPath)){ //create the folder if it's not already exists
          @mkdir($smsLogPath,0755,TRUE);
        } 
        $logData = $data['nMessage'].' message send mobile no '.$data['receiverMobileNumber'];
        $smsLogFile=$smsLogPath.time().uniqid().'.txt';
        if ( ! write_file($smsLogFile, $logData)){
             //echo 'Unable to write the file';
        }else{
             //echo 'File written!';
        }
        if(!array_key_exists('receiverMobileNumber', $data)){
            return FALSE;
        }elseif($data['receiverMobileNumber']==""){
            return FALSE;
        }else{
            if(!array_key_exists('senderId', $data)){
                $data['senderId']="";
            }
            
            if(!array_key_exists('receiverId', $data)){
                $data['receiverId']="";
            }
            
            if(!array_key_exists('senderMobileNumber', $data)){
                $data['senderMobileNumber']="";
            }
            
            if(!array_key_exists('nType', $data)){
                $data['nType']="";
            }
            //Send Mobile message
            $smsAddHistoryDataArr=array();
            $smsConfig=array('sms_text'=>$data['nMessage'],'receive_phone_number'=>$data['receiverMobileNumber']);
            $smsResult=$CI->tidiitsms->send_sms($smsConfig);

            $smsAddHistoryDataArr=array('senderUserId'=>$data['senderId'],'receiverUserId'=>$data['receiverId'],
                'senderPhoneNumber'=>$data['senderMobileNumber'],'receiverPhoneNumber'=>$data['receiverMobileNumber'],
                'IP'=>  $CI->input->ip_address(),'sms'=>$data['nMessage'],'sendActionType'=>$data['nType'],
                'smsGatewaySenderId'=>$CI->siteconfig->get_value_by_name('SMS_GATEWAY_SENDERID'),'smsGatewayReturnData'=>$smsResult);
                $CI->user->add_sms_history($smsAddHistoryDataArr);
        }    
    }
  }  
endif;

if ( ! function_exists('get_full_address_from_lat_long')):
    function get_full_address_from_lat_long($lat,$long){
        $url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$long&sensor=false";
        // Make the HTTP request
        $data = @file_get_contents($url);
        // Parse the json response
        $jsondata = json_decode($data,true);
        return $jsondata["results"][0]["formatted_address"];
    }
endif;

if ( ! function_exists('get_country_code_from_lat_long')):
    function get_country_code_from_lat_long($lat,$long){
        return 'IN';
        //("country", $jsondata["results"][0]["address_components"]);
        /*$url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$long&sensor=false";
        // Make the HTTP request
        $data = @file_get_contents($url);
        // Parse the json response
        $jsondata = json_decode($data,true);
        //pre($jsondata);die;
        if(!empty($jsondata["results"])){
            foreach( $jsondata["results"][0]["address_components"] as $value) {
                if (in_array('country', $value["types"])) {
                    return $value["short_name"];
                }
            }
        }else{
            return FALSE;
        }*/
        //return $jsondata["results"][0]["formatted_address"];
    }
endif;


if ( ! function_exists('get_formatted_address_from_lat_long')):
    function get_formatted_address_from_lat_long($lat,$long){
        //("country", $jsondata["results"][0]["address_components"]);
        $url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$long&sensor=false";
        // Make the HTTP request
        $data = @file_get_contents($url);
        // Parse the json response
        $jsondata = json_decode($data,true);
        
        if(array_key_exists('formatted_address', $jsondata["results"][0])){
            return $jsondata["results"][0]["formatted_address"];
        }else{
            return FALSE;
        }
        //return $jsondata["results"][0]["formatted_address"];
    }
endif;

if( !function_exists('send_push_notification')){
    function send_push_notification($data){
        $CI=& get_instance();
        $CI->load->model('User_model','user');
        $CI->load->model('Siteconfig_model','siteconfig');
        //$CI->load->library('tidiitsms');
        /*
        $notify['senderId'] = ;
        $notify['receiverId'] = ;
        $notify['nType'] = ;
        $notify['nTitle'] = ;
        $notify['nMessage'] = ;
         */
         

        //die('rrr');
        if(!array_key_exists('receiverId', $data)){
            return FALSE;
        }elseif($data['receiverId']==""){
            return FALSE;
        }else{
            $regIds=$this->user->get_reg_id_by_user_id($data['receiverId']);
            if($regIds!=FALSE){
                //'data' =>
                $apiData=array('message'=>$data['nMessage'],'userId'=>$data['receiverId']);
                $regIdArr=array();
                foreach($regIds AS $k){
                    $sendNotificationFlag=FALSE;
                    //$regIdArr[]=$k->registrationId;
                    $fields=array($k->registrationId,$data['nMessage']);   
                    if($data['nType']=="BUYING-CLUB-ADD" || $data['nType']=="BUYING-CLUB-MODIFY" || $data['nType']=="BUYING-CLUB-MODIFY-NEW" || $data['nType']=="BUYING-CLUB-MODIFY-DELETE"){
                        $apiData['notificationType']=$data['nType'];
                        $apiData['tagStr']=$data['nType'];
                        $sendNotificationFlag=TRUE;
                    }else if($data['nType']=="BUYING-CLUB-ORDER-DECLINE"){
                        $apiData['orderId']=$data['orderId'];
                        $sendNotificationFlag=TRUE;
                    }else if($data['nType']=="BUYING-CLUB-ORDER"){
                        $apiData['orderId']=$data['orderId'];
                        $sendNotificationFlag=TRUE;
                    }
                    
                    $apiData['tagStr']=$data['nType'];
                    if($sendNotificationFlag==TRUE){
                        if(send_gsm_message($fields,$data['nType'])==TRUE){
                            foreach($regIds as $kk){
                                $dataArr[]=array('messsage'=>$data['nMessage'],'registrationNo'=>$kk->registrationId,'deviceType'=>'android','sendTime'=>date('Y-m-d H:i:s'),'userId'=>$data['receiverId']);
                            }
                            $CI->user->save_push_notification_history($dataArr);
                        }
                    }
                }
                
                
            }else{
                return FALSE;
            }
            
        }
    }
}

if(!function_exists('send_normal_push_notification')){
    function send_normal_push_notification($data){
        $CI=& get_instance();
        $CI->load->model('User_model','user');
        $CI->load->model('Siteconfig_model','siteconfig');
        //$CI->load->library('tidiitsms');
        /*
        $notify['senderId'] = ;
        $notify['receiverId'] = ;
        $notify['nType'] = ;
        $notify['nTitle'] = ;
        $notify['nMessage'] = ;
         */
         
        //die('rrr');
        if(!array_key_exists('receiverId', $data)){
            return FALSE;
        }elseif($data['receiverId']==""){
            return FALSE;
        }else{
            $regIds=$CI->user->get_reg_id_by_user_id($data['receiverId']);
            if($regIds!=FALSE){
                $regIdArr=array();
                foreach($regIds AS $k){
                    //$regIdArr[]=$k->registrationId;
                    $fields=array($k->registrationId,$data['nMessage']);
                    if(send_gsm_message($fields)==TRUE){
                        foreach($regIds as $kk){
                            $dataArr[]=array('messsage'=>$data['nMessage'],'registrationNo'=>$kk->registrationId,'deviceType'=>'android','sendTime'=>date('Y-m-d H:i:s'),'userId'=>$data['receiverId']);
                        }
                        $CI->user->save_push_notification_history($dataArr);
                    }
                //}
                //$fields=array('registration_ids'=>$regIdArr,'data' =>array('message'=>$data['nMessage']));
                /*$fields=array($regIdArr,$data['nMessage']);
                if(send_gsm_message($fields)==TRUE){
                    foreach($regIds as $k){
                        $dataArr[]=array('messsage'=>$data['nMessage'],'registrationNo'=>$k->registrationId,'deviceType'=>'android','sendTime'=>date('Y-m-d H:i:s'),'userId'=>$data['receiverId']);
                    }
                    $CI->user->save_push_notification_history($dataArr);
                }*/
                }
            }else{
                return FALSE;
            }
        }
    }
}

if( !function_exists('send_gsm_message')){
    function send_gsm_message($fields_data,$action_data=""){
        $CI=& get_instance();
        $CI->load->config('product');
        $GOOGLE_API_KEY=$CI->config->item('GoogleGSMKEY');
        //$url = 'https://android.googleapis.com/gcm/send';
        $url = 'https://fcm.googleapis.com/fcm/send';
        
        $fields= array(
            'to' => $fields_data[0],
            'notification' => array('title' => 'Retailershangout Notification', 'body' => $fields_data[1]),
            'data' => array('show_screen' => $action_data)
        );

        $headers = array(
            'Authorization: key=' .$GOOGLE_API_KEY ,
            'Content-Type: application/json'
        );
        // Open connection
        $ch = curl_init();

        // Set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        //curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
        curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4 ); 
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));

        // Execute post
        $result = curl_exec($ch);
        // Close connection
        curl_close($ch);
        $jsonObject=  json_decode($result);
        if(isset($jsonObject->success) && $jsonObject->success == 1){
        //if ($result === FALSE) {
            //die('Curl failed: ' . curl_error($ch));
            //return FALSE;
            return TRUE;
        }else{
            return FALSE;
        }
    }
}
if( !function_exists('common_maintain_action_log')){
    function common_maintain_action_log($msg,$heading="",$fileName=""){
        $dir=ResourcesPath.'action_log/';
        $CI=&get_instance();
        $dynName=$CI->session->userdata('USER_SITE_SESSION_ID');
        /*if($fileName==""){
            $log_file_path=$dir.date('Y-m-d').'-payment.log';
        }else {
            $log_file_path=$dir.date('Y-m-d').'-'.$fileName.'.log';
        }*/
        $log_file_path=$dir.date('Y-m-d').'-'.$dynName.'.log';
        //echo $log_file_path;die;
        if (!$handle = fopen($log_file_path, 'a+')) {
            return false;
        }else{
            if($heading==""):
                $message="\n".$msg;
            else:
                $message="\n".'Content for the for now '.$heading.'  ===='.date('Y-m-d H:i:s').'==== '."\n";
                $message.="\n".$msg;
            endif;
            
            if (fwrite($handle, $message) === FALSE) {
                return false;
            }else{
                fclose($handle);
            }
        }
    }
}

if(!function_exists('sortingProductPriceArr')){
    function sortingProductPriceArr($a, $b) {
        return $a['qty'] - $b['qty'];
    }
}