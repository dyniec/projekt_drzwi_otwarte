#!/bin/bash

function stop_module {
    module_name=$1
    pkill -f ${module_name}.py
}
    
stop_module worker
stop_module reader
python3 ${DOOR_HOME}/Kod/close_door.py