.class public Lorg/slf4j/helpers/SubstituteLogger;
.super Ljava/lang/Object;
.source "SubstituteLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# instance fields
.field private volatile _delegate:Lorg/slf4j/Logger;

.field private final createdPostInitialization:Z

.field private delegateEventAware:Ljava/lang/Boolean;

.field private eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

.field private logMethodCache:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "eventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/slf4j/event/SubstituteLoggingEvent;>;"
    move v3, p3

    .local v3, "createdPostInitialization":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    .line 60
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/slf4j/helpers/SubstituteLogger;->eventQueue:Ljava/util/Queue;

    .line 61
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lorg/slf4j/helpers/SubstituteLogger;->createdPostInitialization:Z

    .line 62
    return-void
.end method

.method private getEventRecordingLogger()Lorg/slf4j/Logger;
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

    if-nez v1, :cond_0

    .line 345
    move-object v1, v0

    new-instance v2, Lorg/slf4j/event/EventRecodingLogger;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/slf4j/helpers/SubstituteLogger;->eventQueue:Ljava/util/Queue;

    invoke-direct {v3, v4, v5}, Lorg/slf4j/event/EventRecodingLogger;-><init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/Queue;)V

    iput-object v2, v1, Lorg/slf4j/helpers/SubstituteLogger;->eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

    .line 347
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method delegate()Lorg/slf4j/Logger;
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    if-eqz v1, :cond_0

    .line 334
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    move-object v0, v1

    .line 339
    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :goto_0
    return-object v0

    .line 336
    .restart local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->createdPostInitialization:Z

    if-eqz v1, :cond_1

    .line 337
    sget-object v1, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    move-object v0, v1

    goto :goto_0

    .line 339
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lorg/slf4j/helpers/SubstituteLogger;->getEventRecordingLogger()Lorg/slf4j/Logger;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 311
    const/4 v3, 0x1

    move v0, v3

    .line 320
    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :goto_0
    return v0

    .line 312
    .restart local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 313
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 315
    :cond_2
    move-object v3, v1

    check-cast v3, Lorg/slf4j/helpers/SubstituteLogger;

    move-object v2, v3

    .line 317
    .local v2, "that":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v3, v0

    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 318
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 320
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isDelegateEventAware()Z
    .locals 10

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 360
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 368
    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :goto_0
    return v0

    .line 363
    .restart local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "log"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Lorg/slf4j/event/LoggingEvent;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lorg/slf4j/helpers/SubstituteLogger;->logMethodCache:Ljava/lang/reflect/Method;

    .line 364
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v2, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .line 368
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 365
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 366
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v2, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public isDelegateNOP()Z
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    instance-of v1, v1, Lorg/slf4j/helpers/NOPLogger;

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isDelegateNull()Z
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0

    .restart local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 4

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v1

    invoke-interface {v1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/SubstituteLogger;
    return v0
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 10

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "event":Lorg/slf4j/event/LoggingEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/slf4j/helpers/SubstituteLogger;->logMethodCache:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 378
    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 378
    goto :goto_0

    .line 376
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 378
    goto :goto_0

    .line 377
    :catch_2
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public setDelegate(Lorg/slf4j/Logger;)V
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "delegate":Lorg/slf4j/Logger;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    .line 356
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "arguments":[Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method
