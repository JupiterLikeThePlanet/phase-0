# 1.1 Think About Time

The ideas about time management we were given serve as good reinforcements into techniques that many of us might have already been aware of. The Pomodore Technique is probably the newest for me, so I was intrigued by that. More importantly, I’m drawn to incremental learning. Understanding that it’s better set these realistic and achievable goals will probably help me to keep anxiety down and keep me focused on progress.

Time boxing, as it is presented in the information given, appears to be about setting fence posts or allotted times in completing work. Essentially, you’re setting a finite time in order to track progress and break tasks down into mentally manageable units.

I currently use a planner and a calendar (both physical and digital) to break down my day and remind me of tasks to complete. However, as the old saying goes, “You can’t help those that don’t help themselves”, so this technique is highly about self-discipline. I’ll need to make sure I spend about 10 minutes at the beginning of each day and the night before writing out tasks. It’s not unusual that I’ll tell myself “I’ll do it later,” and then never get to it. I do get sufficient amounts of tasks completed, but frankly I believe I could be achieving more. I allow myself to get distracted largely because work and play happen in the same place. That place being the computer. I’ve installed apps to limit my time on websites that I visit frequently.

My plan is to attack the assignments in the morning. While not socially a morning, I certainly work better during the day time. I’m going to give the Pomodoro Technique a try, something that I’m doing even as I write this. I’m doing work from my room, but I also plan on meeting at a friend’s house and use the living room as a joint work space. I’d like to be a place where I’m not to comfortable, if you get me, and that way I can focus better.

# 1.2 The Command Line

A shell is a window in the terminal that operates in a Command Line Interface as opposed to GUI. Bash is essentially a shell that runs on UNIX.

Some of the more challenging aspects for me is learning how to use the popd and pushd effectively. I can push to a directory and pop back to another sometimes, but my most frequent errors are “No such file directory” and “popd: directory stack empty.” I recall having problems cp’ing files from one directory to another, although I do believe I’ve solved it by cp’ing to a fully directed path. I was quite puzzled by using the find function. I never was able to get that to work for me. I understand the syntax, but when executed I either receive “find: illegal option --n” or just “>” and nothing happens.

I am able to use most commands and I felt like one that will prove important is “grep.” It reminds me of parsing and the .startswith function in Python. The env command seems like it could be important since we can change variables and pathways if needed. Of course, the basics like cd, pwd, .. , & ls seem essential for basic navigation.

-pwd print working directory

-ls list directory

-mv “move” or rename a file

-cd change directory

-../ move up the path

-touch create a new file

-mkdir make a directory

-less page through a file

-rmdir remove directory

-rm remove a file

-help helps explain commands and functions

# 1.4 Forking and Cloning

If I were going to write instructions for someone on how to create a new repo, truth is, I'd probably just regurgitate the lesson form Emmanuel's video.  It was simple and to the point.
But ending it here would be cheating, so allow me to enumerate the steps.  Essentially, I would begin by explaining git and GitHub (probably effusively) and then lead them to the site.  I'd point out that there are 2 ways to create a repo.  The simplest is by clicking the '+' sign next to the user's avatar in the top right corner and selecting new repository.  From there you'd name it, adjust desired settings, and then click create repository.  The second way is to click your profile, hit the repository tab, and select the green button labeled "New" just under the tab to the right.  The rest of the steps are the same as the first method.  Forking a repo is a simple as finding the desire repo and hitting the 'Fork' button seen just below your avatar in the top right corner.  Cloning is the trickier part and after explaining basic CLI commands, I would lead this person to the side bar on the right of the screen of the forked repository and tell them to copy and paste the link "HTTPS clone url".  Press cmmd + space bar (mac users!), enter terminal into the search bar in which your program will be opened.  From there I'd lead the person to the directory of their choice in which to clone the url (e.g. mine is Desktop/DBC/curriculum).  Once there in the CLI, I'd have them type "git clone [url here]" & *whew* , we're done.

I actually didn't have any trouble setting up git or GitHub.  I know, sounds real humble doesn't it?  But I'm not patting myself on the back, I promise.  I had actually setup a GitHub account already, though I never used it because I hadn't quite understood the interface or what to do with it.  So that's where this lesson really came in handy.  This gave me the lesson I failed to give myself at the time I created the account.