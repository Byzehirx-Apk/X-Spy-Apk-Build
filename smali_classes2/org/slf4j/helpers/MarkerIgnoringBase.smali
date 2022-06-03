.class public abstract Lorg/slf4j/helpers/MarkerIgnoringBase;
.super Lorg/slf4j/helpers/NamedLoggerBase;
.source "MarkerIgnoringBase.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final serialVersionUID:J = 0x7d83b1554e5d279bL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, v0

    invoke-direct {v1}, Lorg/slf4j/helpers/NamedLoggerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, v0

    invoke-super {v1}, Lorg/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return-object v0
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isDebugEnabled()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isErrorEnabled()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isInfoEnabled()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isTraceEnabled()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isWarnEnabled()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    return-object v0
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arg1":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg2":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MarkerIgnoringBase;
    move-object v1, p1

    .local v1, "marker":Lorg/slf4j/Marker;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method
