.class public Lorg/slf4j/event/SubstituteLoggingEvent;
.super Ljava/lang/Object;
.source "SubstituteLoggingEvent.java"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field argArray:[Ljava/lang/Object;

.field level:Lorg/slf4j/event/Level;

.field logger:Lorg/slf4j/helpers/SubstituteLogger;

.field loggerName:Ljava/lang/String;

.field marker:Lorg/slf4j/Marker;

.field message:Ljava/lang/String;

.field threadName:Ljava/lang/String;

.field throwable:Ljava/lang/Throwable;

.field timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgumentArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getLogger()Lorg/slf4j/helpers/SubstituteLogger;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getMarker()Lorg/slf4j/Marker;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->marker:Lorg/slf4j/Marker;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-object v0
.end method

.method public getTimeStamp()J
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, v0

    iget-wide v1, v1, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    move-wide v0, v1

    .end local v0    # "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    return-wide v0
.end method

.method public setArgumentArray([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "argArray":[Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setLevel(Lorg/slf4j/event/Level;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "level":Lorg/slf4j/event/Level;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    .line 24
    return-void
.end method

.method public setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "logger":Lorg/slf4j/helpers/SubstituteLogger;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 48
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "loggerName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMarker(Lorg/slf4j/Marker;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->marker:Lorg/slf4j/Marker;

    .line 32
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "threadName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    .line 88
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/SubstituteLoggingEvent;
    move-wide v1, p1

    .local v1, "timeStamp":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    .line 72
    return-void
.end method
