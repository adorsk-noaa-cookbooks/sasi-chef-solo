name "sasi"
description "SASI Server"
run_list(
	"role[sasi_secret]",
	"recipe[apt]",
	"recipe[python]",
	"recipe[apache2]",
	"recipe[mod_wsgi]",
	"recipe[postgresql::server]",
	"recipe[postgis]",
	"recipe[mapserver]",
	"recipe[sasi]"
)

override_attributes(
	"python" => {
		"prefix_dir" => "/usr"
	},
	#"postgresql" => {
		#"password" => {
			#"postgres" => "SECRET"
		#}
	#},
	#"sasi" => {
		#"server_name" => 'SECRET'
		#"server_aliases" => 'SECRET'
	#}
)
