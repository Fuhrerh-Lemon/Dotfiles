Config {font = "xft:Ubuntu:weight=bold:pixelsize=11:antialias=true:hinting=true"
   , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=11:antialias=true:hinting=true"
                           , "xft:FontAwesome:pixelsize=13"
                       ]
   , border = BottomB
   , bgColor = "#282c34"
   , fgColor = "#ff6c6b"
   , lowerOnStart = True
   , hideOnStart = False
   , allDesktops = True
   , persistent = True
   , iconRoot = ""
   , commands = [
      -- Hora y fecha
      Run Date "<fn=1>\xf133 </fn>  %b %d %Y - (%H:%M) " "date" 50
      -- Internet o waiifi
      -- , Run Network "enp6s0" ["-t", "<fn=1>\xf0aa</fn>  <rx>kb  <fn=1>\xf0ab</fn>  <tx>kb"] 20
      -- CPU
      , Run Cpu ["-t", "<fn=1>\xf108 </fn>  cpu: (<total>%)","-H","50","--high","red"] 20
      -- Uso de Ram
      , Run Memory ["-t", "<fn=1>\xf233 </fn>  mem: <used>M (<usedratio>%)"] 20
      -- Disco espacio libre
      , Run DiskU [("/", "<fn=1>\xf0c7 </fn>  hdd: <free> free")] [] 60
      -- Actualizaciones
      , Run Com "~/.local/bin/pacupdate" [] "pacupdate" 36000
      -- Versión del kernel
      , Run Com "uname" ["-r"] "" 3600
      -- The workspaces are 'clickable' in my configs.
      , Run UnsafeStdinReader
     ]
   , sepChar = "%"
   , alignSep = "}{"
   , template = " %UnsafeStdinReader% }{ <fc=#666666> | </fc> <fc=#b3afc2><fn=1> </fn>  %uname% </fc><fc=#666666> |</fc> <fc=#ecbe7b> %cpu% </fc><fc=#666666> |</fc> <fc=#ff6c6b> %memory% </fc><fc=#666666> |</fc> <fc=#51afef> %disku% </fc><fc=#666666> |</fc>  <fc=#c678dd><fn=1> </fn>  %pacupdate% </fc><fc=#666666> |</fc> <fc=#46d9ff> %date%  </fc>"
}
