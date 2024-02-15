# Kills a process named killmenow

exec { 'pkill':
  command =>  '/usr/bin/pkill killmenow',
  onlyif  =>  '/usr/bin/pgrep killmenow',
}
