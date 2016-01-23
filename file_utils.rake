desc "demo file operations"
task :file_tasks_demo do
  mkdir "sample"
  cd "sample"
  mkdir "old"
  mv "old", "new"
  chmod 0777, "new"
  touch "ok"
  cd ".."
  rm_rf "sample"
end
