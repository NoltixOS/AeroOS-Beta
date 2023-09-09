print("host render")
print("don't close!")
print("host render for minecraft Py edition for saving new voxels")
You may use the signal package if you are running on UNIX:

In [1]: import signal

# Register an handler for the timeout
In [2]: def handler(signum, frame):
   ...:     print("Forever is over!")
   ...:     raise Exception("end of time")
   ...: 

# This function *may* run for an indetermined time...
In [3]: def loop_forever():
   ...:     import time
   ...:     while 1:
   ...:         print("sec")
   ...:         time.sleep(1)
   ...:         
   ...:         

# Register the signal function handler
In [4]: signal.signal(signal.SIGALRM, handler)
Out[4]: 0

# Define a timeout for your function
In [5]: signal.alarm(10)
Out[5]: 0

In [6]: try:
   ...:     loop_forever()
   ...: except Exception, exc: 
   ...:     print(exc)
   ....: 
sec
sec
sec
sec
sec
sec
sec
sec
Forever is over!
end of time

# Cancel the timer if the function returned before timeout
# (ok, mine won't but yours maybe will :)
In [7]: signal.alarm(0)
Out[7]: 0
10 seconds after the call signal.alarm(10), the handler is called. This raises an exception that you can intercept from the regular Phyton code.

This module doesn't play well with threads (but then, who does?)

Note that since we raise an exception when timeout happens, it may end up caught and ignored inside the function, for example of one such function:

def loop_forever():
    while 1:
        print('sec')
        try:
            time.sleep(10)
        except:
            continueYou may use the signal package if you are running on UNIX:

In [1]: import signal

# Register an handler for the timeout
In [2]: def handler(signum, frame):
   ...:     print("Forever is over!")
   ...:     raise Exception("end of time")
   ...: 

# This function *may* run for an indetermined time...
In [3]: def loop_forever():
   ...:     import time
   ...:     while 1:
   ...:         print("sec")
   ...:         time.sleep(1)
   ...:         
   ...:         

# Register the signal function handler
In [4]: signal.signal(signal.SIGALRM, handler)
Out[4]: 0

# Define a timeout for your function
In [5]: signal.alarm(10)
Out[5]: 0

In [6]: try:
   ...:     loop_forever()
   ...: except Exception, exc: 
   ...:     print(exc)
   ....: 
sec
sec
sec
sec
sec
sec
sec
sec
Forever is over!
end of time

# Cancel the timer if the function returned before timeout
# (ok, mine won't but yours maybe will :)
In [7]: signal.alarm(0)
Out[7]: 0
10 seconds after the call signal.alarm(10), the handler is called. This raises an exception that you can intercept from the regular Phyton code.

This module doesn't play well with threads (but then, who does?)

Note that since we raise an exception when timeout happens, it may end up caught and ignored inside the function, for example of one such function:

def loop_forever():
    while 1:
        print('sec')
        try:
            time.sleep(10)
        except:
            continue