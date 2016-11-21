<?php defined('BASEPATH') || exit('No direct script access allowed');

class Migration_Install_app_permissions extends Migration
{
	/**
	 * @var array Permissions to Migrate
	 */
	private $permissionValues = array(
		array(
			'name' => 'App.Content.View',
			'description' => 'View App Content',
			'status' => 'active',
		),
		array(
			'name' => 'App.Content.Create',
			'description' => 'Create App Content',
			'status' => 'active',
		),
		array(
			'name' => 'App.Content.Edit',
			'description' => 'Edit App Content',
			'status' => 'active',
		),
		array(
			'name' => 'App.Content.Delete',
			'description' => 'Delete App Content',
			'status' => 'active',
		),
		array(
			'name' => 'App.Reports.View',
			'description' => 'View App Reports',
			'status' => 'active',
		),
		array(
			'name' => 'App.Reports.Create',
			'description' => 'Create App Reports',
			'status' => 'active',
		),
		array(
			'name' => 'App.Reports.Edit',
			'description' => 'Edit App Reports',
			'status' => 'active',
		),
		array(
			'name' => 'App.Reports.Delete',
			'description' => 'Delete App Reports',
			'status' => 'active',
		),
		array(
			'name' => 'App.Settings.View',
			'description' => 'View App Settings',
			'status' => 'active',
		),
		array(
			'name' => 'App.Settings.Create',
			'description' => 'Create App Settings',
			'status' => 'active',
		),
		array(
			'name' => 'App.Settings.Edit',
			'description' => 'Edit App Settings',
			'status' => 'active',
		),
		array(
			'name' => 'App.Settings.Delete',
			'description' => 'Delete App Settings',
			'status' => 'active',
		),
		array(
			'name' => 'App.Developer.View',
			'description' => 'View App Developer',
			'status' => 'active',
		),
		array(
			'name' => 'App.Developer.Create',
			'description' => 'Create App Developer',
			'status' => 'active',
		),
		array(
			'name' => 'App.Developer.Edit',
			'description' => 'Edit App Developer',
			'status' => 'active',
		),
		array(
			'name' => 'App.Developer.Delete',
			'description' => 'Delete App Developer',
			'status' => 'active',
		),
    );

    /**
     * @var string The name of the permission key in the role_permissions table
     */
    private $permissionKey = 'permission_id';

    /**
     * @var string The name of the permission name field in the permissions table
     */
    private $permissionNameField = 'name';

	/**
	 * @var string The name of the role/permissions ref table
	 */
	private $rolePermissionsTable = 'role_permissions';

    /**
     * @var numeric The role id to which the permissions will be applied
     */
    private $roleId = '1';

    /**
     * @var string The name of the role key in the role_permissions table
     */
    private $roleKey = 'role_id';

	/**
	 * @var string The name of the permissions table
	 */
	private $tableName = 'permissions';

	//--------------------------------------------------------------------

	/**
	 * Install this version
	 *
	 * @return void
	 */
	public function up()
	{
		$rolePermissionsData = array();
		foreach ($this->permissionValues as $permissionValue) {
			$this->db->insert($this->tableName, $permissionValue);

			$rolePermissionsData[] = array(
                $this->roleKey       => $this->roleId,
                $this->permissionKey => $this->db->insert_id(),
			);
		}

		$this->db->insert_batch($this->rolePermissionsTable, $rolePermissionsData);
	}

	/**
	 * Uninstall this version
	 *
	 * @return void
	 */
	public function down()
	{
        $permissionNames = array();
		foreach ($this->permissionValues as $permissionValue) {
            $permissionNames[] = $permissionValue[$this->permissionNameField];
        }

        $query = $this->db->select($this->permissionKey)
                          ->where_in($this->permissionNameField, $permissionNames)
                          ->get($this->tableName);

        if ( ! $query->num_rows()) {
            return;
        }

        $permissionIds = array();
        foreach ($query->result() as $row) {
            $permissionIds[] = $row->{$this->permissionKey};
        }

        $this->db->where_in($this->permissionKey, $permissionIds)
                 ->delete($this->rolePermissionsTable);

        $this->db->where_in($this->permissionNameField, $permissionNames)
                 ->delete($this->tableName);
	}
}