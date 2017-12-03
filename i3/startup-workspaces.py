#!/usr/bin/python2.7
# -*- coding: utf-8 -*- 
# Swap workspaces on two monitors
import i3
import i3ipc

#outputs = i3.get_outputs()
workspaces = i3.get_workspaces()

#print outputs
#print outputs[0]

wspace1 = u'1: \uf120'
wspace2 = u'2: \uf120'
wspace3 = u'3: \uf268'
wspace3 = u'3: \uf268'
wspace4 = u'4: \uf269'
wspace5 = u'5: \uf121'
wspace6 = u'6: \uf113'
wspace7 = u'7: \uf03d'
wspace8 = u'8: \uf130'
wspace9 = u'9: \uf198 \uf17e'
wspace0 = u'10: \uf025'

i3new = i3ipc.Connection()

#outputsnew = i3new.get_outputs()

#print('Active outputs:')

#for output in filter(lambda o: o.active, outputsnew):
#        print(output.name)



for workspace in workspaces:
    for key in workspace:
        print workspace[key]
        if(workspace[key] == wspace1):
            i3new.command('move workspace to output DP-1')
        if(workspace[key] == wspace2):
            i3new.command('move workspace to output DP-1')
        if(workspace[key] == wspace3):
            i3new.command('move workspace to output DP-1')
        if(workspace[key] == wspace4):
            i3new.command('move workspace to output HDMI-2')
        if(workspace[key] == wspace5):
            i3new.command('move workspace to output DP-1')
        if(workspace[key] == wspace6):
            i3new.command('move workspace to output HDMI-2')
        if(workspace[key] == wspace7):
            i3new.command('move workspace to output HDMI-2')
        if(workspace[key] == wspace8):
            i3new.command('move workspace to output DP-1')
        if(workspace[key] == wspace9):
            i3new.command('move workspace to output HDMI-2')
        if(workspace[key] == wspace0):
            i3new.command('move workspace to output HDMI-2')
