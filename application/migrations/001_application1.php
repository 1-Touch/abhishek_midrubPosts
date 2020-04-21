<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_application1 extends CI_Migration {
  
  public function up()
  {
    
    if(!$this->db->table_exists('employee'))
    {
      $this->dbforge->add_field(array(
        'emp_id' => array(
        'type' => 'int',
        'constraint' => 9,
        'unsigned' => true,
        'auto_increment' => true
         ),
        'emp_name' => array(
        'type' => 'varchar',
        'constraint' => 100,
        'null' => false
         ),
        'emp_email' => array(
        'type' => 'varchar',
        'constraint' => 50,
        'null' => false
         ),
        'emp_phone' => array(
        'type' => 'varchar',
        'constraint' => 20,
        'null' => false
         ),
        'emp_address' => array(
        'type' => 'varchar',
        'constraint' => 255,
        'null' => false
         ),
      ));

        $this->dbforge->add_key('emp_id', true);
        $this->dbforge->create_table('employee', true);
    }   
  }
  
  public function down()
  {
    
  }

}