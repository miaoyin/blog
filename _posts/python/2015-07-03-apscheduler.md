---
layout: post
title: "apscheduler如何传递参数给job"
date: "2015-07-03 09:45"
category: "python"
tags: ["apscheduler"]
---

```python
import tornado
from apscheduler.schedulers.tornado import TornadoScheduler
sched = TornadoScheduler()


def job1(a, b, c):
    print "job1:", a,b,c


def job2(a, b, c):
    print "job2:", a,b,c

sched.add_job(job1, 'interval', seconds=1, args=["a", "b", "c"])
sched.add_job(job2, 'interval', seconds=1, kwargs={"a": "a", "b": "b", "c": "c"})
sched.start()

tornado.ioloop.IOLoop.instance().start()
```

