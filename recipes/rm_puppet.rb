#
# Cookbook:: uninstall_puppet
# Recipe:: rm_puppet
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Uninstall Puppet from Windows
powershell_script 'uninstall_puppet' do
code <<-EOH
$app = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "Puppet" }
$app.Uninstall()
# Catch{$_.Exception.Message} 
EOH
end
