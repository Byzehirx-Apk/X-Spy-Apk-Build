.class public Lorg/slf4j/event/EventRecodingLogger;
.super Ljava/lang/Object;
.source "EventRecodingLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field static final RECORD_ALL_EVENTS:Z = true


# instance fields
.field eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field logger:Lorg/slf4j/helpers/SubstituteLogger;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/Queue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            "Ljava/util/Queue",
            "<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "logger":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v2, p2

    .local v2, "eventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/slf4j/event/SubstituteLoggingEvent;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/slf4j/event/EventRecodingLogger;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 31
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/String;

    .line 32
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/util/Queue;

    .line 33
    return-void
.end method

.method private recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "level":Lorg/slf4j/event/Level;
    move-object v2, p2

    .local v2, "marker":Lorg/slf4j/Marker;
    move-object v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "throwable":Ljava/lang/Throwable;
    new-instance v7, Lorg/slf4j/event/SubstituteLoggingEvent;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/slf4j/event/SubstituteLoggingEvent;-><init>()V

    move-object v6, v7

    .line 310
    .local v6, "loggingEvent":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v7, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/slf4j/event/SubstituteLoggingEvent;->setTimeStamp(J)V

    .line 311
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLevel(Lorg/slf4j/event/Level;)V

    .line 312
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lorg/slf4j/event/EventRecodingLogger;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V

    .line 313
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setLoggerName(Ljava/lang/String;)V

    .line 314
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setMarker(Lorg/slf4j/Marker;)V

    .line 315
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 316
    move-object v7, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setThreadName(Ljava/lang/String;)V

    .line 318
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setArgumentArray([Ljava/lang/Object;)V

    .line 319
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/slf4j/event/SubstituteLoggingEvent;->setThrowable(Ljava/lang/Throwable;)V

    .line 321
    move-object v7, v0

    iget-object v7, v7, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/util/Queue;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 322
    return-void
.end method

.method private recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object/from16 v1, p1

    .local v1, "level":Lorg/slf4j/event/Level;
    move-object/from16 v2, p2

    .local v2, "marker":Lorg/slf4j/Marker;
    move-object/from16 v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "arg1":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "arg2":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 290
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v4

    aput-object v13, v11, v12

    move-object v11, v5

    check-cast v11, Ljava/lang/Throwable;

    invoke-direct/range {v6 .. v11}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v4

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v5

    aput-object v13, v11, v12

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "level":Lorg/slf4j/event/Level;
    move-object v2, p2

    .local v2, "marker":Lorg/slf4j/Marker;
    move-object/from16 v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "args":[Ljava/lang/Object;
    move-object v7, v4

    invoke-static {v7}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    move-object v5, v7

    .line 298
    .local v5, "throwableCandidate":Ljava/lang/Throwable;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 299
    move-object v7, v4

    invoke-static {v7}, Lorg/slf4j/helpers/MessageFormatter;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 300
    .local v6, "trimmedCopy":[Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v6

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 301
    .line 304
    .end local v6    # "trimmedCopy":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 302
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "level":Lorg/slf4j/event/Level;
    move-object v2, p2

    .local v2, "marker":Lorg/slf4j/Marker;
    move-object v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object v4, p4

    .local v4, "t":Ljava/lang/Throwable;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 282
    return-void
.end method

.method private recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "level":Lorg/slf4j/event/Level;
    move-object/from16 v2, p2

    .local v2, "marker":Lorg/slf4j/Marker;
    move-object/from16 v3, p3

    .local v3, "msg":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "arg1":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 286
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    sget-object v6, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    sget-object v6, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    sget-object v6, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/event/EventRecodingLogger;
    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    sget-object v6, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "argArray":[Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_1Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    sget-object v6, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent2Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEvent_0Args(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/EventRecodingLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    sget-object v5, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/slf4j/event/EventRecodingLogger;->recordEventArgArray(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return-void
.end method
