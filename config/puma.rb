
environment 'development'
daemonize true

rails_app_path = ""

pidfile "#{rails_app_path}/server/puma_agenda.pid"
state_path "#{rails_app_path}/server/puma_agenda.state"

stdout_redirect "#{rails_app_path}/server/puma_agenda.log", "#{rails_app_path}/server/puma_agenda_err.log"

# quiet
threads 0, 16
bind "unix:#{rails_app_path}/server/puma_agenda.sock"

# ssl_bind '127.0.0.1', '9292', { key: path_to_key, cert: path_to_cert }

# on_restart do
#   puts 'On restart...'
# end

# restart_command '/u/app/lolcat/bin/restart_puma'


# === Cluster mode ===

workers 4

# on_worker_boot do
#   puts 'On worker boot...'
# end

# === Puma control rack application ===

activate_control_app "unix:#{rails_app_path}/server/pumactl_agenda.sock"
