.class public Lgnu/mapping/WrappedException;
.super Ljava/lang/RuntimeException;
.source "WrappedException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrappedException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrappedException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrappedException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "e":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrappedException;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public static wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 102
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    move-object v0, v1

    .line 104
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lgnu/mapping/WrappedException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrappedException;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/WrappedException;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrappedException;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/WrappedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/WrappedException;
    return-object v0
.end method
