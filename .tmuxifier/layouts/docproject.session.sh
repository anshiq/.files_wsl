# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/doctorappointment-new"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "docproject"; then

  # Create a new window inline within session layout definition.
new_window "server"
run_cmd "server"
split_v 20
run_cmd "npm run dev"
select_pane 0
run_cmd "hx ."


  new_window "client"
run_cmd "client"
split_v 20
run_cmd "npm run dev"
select_pane 0
run_cmd "hx ."


  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  #select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
