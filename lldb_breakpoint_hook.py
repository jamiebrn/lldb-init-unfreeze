import lldb
import os

def __lldb_init_module(debugger, internal_dict):
    debugger.HandleCommand(
        'target stop-hook add -o "script import lldb_breakpoint_hook; lldb_breakpoint_hook.on_stop(lldb.debugger, lldb.target, lldb.process, lldb.thread, lldb.frame)"'
    )

def on_stop(debugger, target, process, thread, frame):
    stop_reason = thread.GetStopReason()
    if stop_reason == lldb.eStopReasonBreakpoint:
        os.system("setxkbmap -option grab:break_actions")
        os.system("xdotool key XF86Ungrab")