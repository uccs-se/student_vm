
include_recipe 'xfce4::default'

ruby_block "insert_line" do
  block do
    file = Chef::Util::FileEdit.new("/home/ensign/.config/xfce4/terminal/terminalrc")
    file.search_file_replace_line("/CommandLoginShell=FALSE/", "CommandLoginShell=TRUE")
    file.insert_line_if_no_match("/CommandLoginShell=TRUE/", "CommandLoginShell=TRUE")
    file.write_file
  end
end
