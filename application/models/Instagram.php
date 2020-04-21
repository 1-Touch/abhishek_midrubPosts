<?php
/**
 * Faq Model
 *
 * PHP Version 5.6
 *
 * Faq file contains the Faq Model
 *
 * @category Social
 * @package  Midrub
 * @author   Scrisoft <asksyn@gmail.com>
 * @license  https://www.gnu.org/licenses/gpl-2.0.html GNU General Public License
 * @link     https://www.midrub.com/
 */


if ( !defined('BASEPATH') ) {
    exit('No direct script access allowed');
}

/**
 * Faq class - operates the faq table.
 *
 * @category Social
 * @package  Midrub
 * @author   Scrisoft <asksyn@gmail.com>
 * @license  https://www.gnu.org/licenses/gpl-2.0.html GNU General Public License
 * @link     https://www.midrub.com/
 */

 use Guzzle\Http;
class Instagram extends CI_MODEL {
    
    /**
     * Class variables
     */
    private $table = 'instagram_users';

    /**
     * Initialise the model
     */
    public function __construct() {
        
        // Call the Model constructor
        parent::__construct();
        
        // if ( !$faq_articles ) {
            
        //     $this->db->query('CREATE TABLE IF NOT EXISTS `instagram_users` (
        //                       `id` int(11) AUTO_INCREMENT PRIMARY KEY,
        //                       `instagram_id` bigint(20) NOT NULL,
        //                       `status` 	tinyint(1) NOT NULL,
        //                       `created` varchar(30) NOT NULL
        //                     ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;');
            
        // }
        
        // $faq_articles_meta = $this->db->table_exists('faq_articles_meta');
        
        // if ( !$faq_articles_meta ) {
            
        //     $this->db->query('CREATE TABLE IF NOT EXISTS `faq_articles_meta` (
        //                       `meta_id` bigint(20) AUTO_INCREMENT PRIMARY KEY,
        //                       `article_id` bigint(20) NOT NULL,
        //                       `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
        //                       `body` TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
        //                       `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
        //                     ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;');
            
        // }
        
        // $faq_articles_categories = $this->db->table_exists('faq_articles_categories');
        
        // if ( !$faq_articles_categories ) {
            
        //     $this->db->query('CREATE TABLE IF NOT EXISTS `faq_articles_categories` (
        //                       `meta_id` bigint(20) AUTO_INCREMENT PRIMARY KEY,
        //                       `article_id` bigint(20) NOT NULL,
        //                       `category_id` int(6) NOT NULL
        //                     ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;');
            
        // }        
        
        // $faq_categories = $this->db->table_exists('faq_categories');
        
        // if ( !$faq_categories ) {
            
        //     $this->db->query('CREATE TABLE IF NOT EXISTS `faq_categories` (
        //                       `category_id` int(6) AUTO_INCREMENT PRIMARY KEY,
        //                       `parent` int(6) NOT NULL,
        //                       `created` varchar(30) NOT NULL
        //                     ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;');
            
        // }
        
        // $faq_categories_meta = $this->db->table_exists('faq_categories_meta');
        
        // if ( !$faq_categories_meta ) {
            
        //     $this->db->query('CREATE TABLE IF NOT EXISTS `faq_categories_meta` (
        //                       `meta_id` bigint(20) AUTO_INCREMENT PRIMARY KEY,                
        //                       `category_id` int(6) NOT NULL,
        //                       `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
        //                       `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL
        //                     ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;');
            
        // }        
        
        // // Set the tables value
        // $this->tables = $this->config->item('tables', $this->table);
        
    }
    
    /**
     * The function get_all_plans gets all plans
     * 
     * @param integer $visible contains the status option
     * 
     * @return object with all plans or false
     */
    public function get_all_users() {
        
        $this->db->select('*');
        
        $this->db->from($this->table);
        
        $query = $this->db->get();
        
        if ( $query->num_rows() > 0 ) {
            
            return $query->result();
            
        } else {
            
            return false;
            
        }
    }

    public function get_user_detail($username) {
        
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('username', $username);
        $this->db->limit(1);
        $query = $this->db->get();
        
        if ( $query->num_rows() === 1 ) {    
            $source_account = $query->result(); 
            // $data = $source_account[0]->details;
            // $details = $this->json($data);
            //$this->json();           
        } else {            
            return false;            
        }

        $this->db->select('*');
        $this->db->from('instagram_logs');
        $this->db->where('username', $username);
        $this->db->order_by('date', 'DESC');
        $query = $this->db->get();
        
        if ( $query->num_rows() > 0 ) {    
            $source_account_logs = $query->result();
        }
       $user = [];
       $user['detail'] = $source_account[0];
       $user['logs'] = $source_account_logs;

       return $user;
    }

    public function get_media_detail($details) {
        
        foreach ($details->top_posts as $key => $value) {
            echo $key."-".$value."</br>";
        }

    }

     /**
     * The function get_all_plans gets all plans
     * 
     * @param integer $visible contains the status option
     * 
     * @return object with all plans or false
     */
    public function get_all_user_media($id) {
        
        $this->db->select('*');
        $this->db->from('instagram_media');
        $this->db->where('instagram_user_id', $id);
        $this->db->order_by('created_date', 'DESC');
        $query = $this->db->get();
        

        if ( $query->num_rows() > 0 ) {
            return $query->result();
        } else {
            
            return false;
            
        }
    }

    /**
     * The function get_all_plans gets all plans
     * 
     * @param integer $visible contains the status option
     * 
     * @return object with all plans or false
     */
    public function get_users_name($username) {
        
        $this->db->select('username');
        $this->db->from($this->table);
        $this->db->like('username', $username, 'after');
        
        $query = $this->db->get();
        
        
        if ( $query->num_rows() > 0 ) {
            return $query->result();
        } else {
            
            return false;
            
        }
    }
    
}

/* End of file Faq.php */