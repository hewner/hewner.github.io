---
author: phewner
comments: true
date: 2007-08-03 10:59:26+00:00
layout: post
permalink: /2007/08/03/automounting-ext3-usb-drives-fstab-and-ubuntu/
slug: automounting-ext3-usb-drives-fstab-and-ubuntu
title: 'Automounting ext3 usb drives: fstab and ubuntu'
wordpress_id: 65
categories:
- Worklogs
---

This is a problem I don't think I ever would have solved if not for a combination of caffeine and tattoo pain that kept me up all night.  Context: I have a nice new external usb hard drive I decided to use for backups.  It worked great with Ubuntu right up until the time that I realized that I was never going to be able to use the truly slick rsnapshot unless  I was backing up to a drive that was something fancier than VFAT.  So I partitioned it and formatted it ext3 and even gave it a volume label and then ubuntu stopped mounting it automagically when I plugged it in.

Why was ubuntu not mounting my ext3 usb external drive?

The first thing I did was add a line to /etc/fstab




<blockquote>LABEL=bookbak /media/bookbak ext3 defaults,user,auto 0 0</blockquote>





Now when I typed "mount /media/bookbak" or "mount -a" it worked like a charm.  Also dmesg looked great when I plugged in the device.  But it still wouldn't mount it when I plugged it in.  Hmmm...so I went online and found a million unhelpful forum entries.  And [one helpful one](http://linux.wordpress.com/2006/10/07/suse-automatically-mount-usb-hard-drives/), which explained (and I paraphrase here) that there's a whole load of funky crap going on with automatic mounting but that the thing that finally really does the mounting is a program called "gnome-volume-manager".  And then I discovered if you do something like this:
`
killall gnome-volume-manager
gnome-volume-manager -n
`
You can see what happens when your device gets plugged in.  And from that I discovered an error message to the effect of "volume.ignore set to true".  And then, using another helpful blog post I can no longer find I looked here /usr/share/hal/fdi/policy/10osvendor/20-storage-methods.fdi and saw this:



<blockquote>

     <!-- Ignore fixed partitions which are automatically mounted from fstab, -->
     <!-- but are not mounted; users should not mess with this situation -->
     <match key="linux.fstab.mountpoint" exists="true">
      <match key="volume.is_mounted" bool="false">
         <merge key="volume.ignore" type="bool">false</merge>
         <match key="linux.fstab.options" contains="defaults"> 
           <merge key="volume.ignore" type="bool">true</merge>
         </match>
         <match key="linux.fstab.options" contains="auto">
           <merge key="volume.ignore" type="bool">true</merge>
         </match>
       </match>
       <match key="linux.fstab.options" contains="noauto"> 
         <merge key="volume.ignore" type="bool">false</merge>
       </match>
     </match>
</blockquote>



And that gave me the inspiration to change my fstab entry to this:



<blockquote>LABEL=bookbak /media/bookbak ext3 defaults,user,noauto 0 0</blockquote>



And that worked.  So yes, turns out if you want your external usb hard disks to be mounted automatically, you have to set noauto.  I imagine this makes complete sense, auto no doubt referring to drives that are supposed to be mounted at boot time etc.  Anyways, somewhat uninitive on the surface.
