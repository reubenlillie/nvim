-- Set options for Neovim
-- :help options

-- Shorten function call for setting options
local o = vim.opt

-- :help Q_op
o.ai = true        -- take indent for new line from previous line
o.bk = false       -- keep backup file after overwriting a file
o.cc = '80'        -- columns to highlight
o.cole = 0         -- whether concealable text is shown or hidden
o.cul = true       -- highlight the screen line of the cursor
o.culopt = 'both'  -- settings for 'cursorline'
o.enc = 'utf-8'    -- encoding used internally
o.et = true        -- use spaces when <Tab> is inserted
o.fdm = 'indent'   -- folding type
o.fdn = 6          -- maximum fold depth
o.hls = true       -- highlight matches with last search pattern
o.ic = true        -- ignore case in search patterns
o.isk:append('-')  -- characters included in keywords
o.lbr = true       -- wrap long lines at a blank
o.list = true      -- show <Tab> and <EOL>
o.mouse = ''       -- enable the use of mouse clicks
o.nu = true        -- print the line number in front of each line
o.nuw = 4          -- number of columns used for the line number
o.rnu = true       -- show relative line number in front of each line
o.ru = true        -- show cursor line and column in the status line
o.sc = true        -- show (partial) command in status line
o.scs = true       -- no ignore case when pattern has uppercase
o.si = true        -- smart autoindenting for C programs
o.sm = true        -- briefly jump to matching bracket if insert one
o.smd = true       -- message on status line to show current mode
o.sta = true       -- use 'shiftwidth' when inserting <Tab>
o.sts = 2          -- number of spaces that <Tab> uses while editing
o.sw = 2           -- number of spaces to use for (auto)indent step
o.swf = false      -- whether to use a swapfile for a buffer
o.tgc = true       -- use GUI colors for the terminal
o.ts = 2           -- number of spaces that <Tab> in file uses
o.wmnu = true      -- use menu for command line completion
