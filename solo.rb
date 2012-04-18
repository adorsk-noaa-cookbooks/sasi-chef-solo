file_dir = File.dirname(__FILE__)

file_cache_path "/var/chef-solo"
cookbook_path [
	"#{file_dir}/chef-repo/cookbooks",
	"#{file_dir}/chef-repo/dev-cookbooks"
] 
role_path "#{file_dir}/chef-repo/roles"

