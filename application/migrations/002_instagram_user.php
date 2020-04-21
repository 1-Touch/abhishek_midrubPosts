<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_instagram_user extends CI_Migration {
  
  public function up()
  {
    
    if(!$this->db->table_exists('instagram_users_test'))
    {
      $this->dbforge->add_field(array(
        'id' => array(
        'type' => 'int',
        'constraint' => 11,
        'unsigned' => true,
        'auto_increment' => true
         ),
        'instagram_id' => array(
        'type' => 'bigint',
        'constraint' => 20,
        'null' => true
         ),
        'username' => array(
        'type' => 'varchar',
        'constraint' => 64,
        'collation' => 'utf8mb4_unicode_ci',
        'null' => true,
         ),
        'full_name' => array(
        'type' => 'varchar',
        'constraint' => 128,
        'collation' => 'utf8mb4_unicode_ci',
        'null' => true
        ),
        'description' => array(
        'type' => 'varchar',
        'constraint' => 255,
        'collation' => 'utf8mb4_unicode_ci',
        'null' => true,
        ),
        'website' => array(
        'type' => 'varchar',
        'constraint' => 255,
        'null' => true
         ),
        'username' => array(
        'type' => 'varchar',
        'constraint' => 64,
        'collation' => 'utf8mb4_unicode_ci',
        'null' => true,
         ),
        'instagram_id' => array(
        'type' => 'bigint',
        'constraint' => 20,
        'null' => true
        ),
        'username' => array(
        'type' => 'varchar',
        'constraint' => 64,
        'collation' => 'utf8mb4_unicode_ci',
        'null' => true,
        ),
      ));

      $this->dbforge->add_key('id', true);
        $this->dbforge->create_table('instagram_users_test', true);
    }   
  }
  
  public function down()
  {
    
  }

}