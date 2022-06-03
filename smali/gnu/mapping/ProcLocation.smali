.class public Lgnu/mapping/ProcLocation;
.super Lgnu/mapping/Location;
.source "ProcLocation.java"


# instance fields
.field args:[Ljava/lang/Object;

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcLocation;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Location;-><init>()V

    .line 15
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    .line 16
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/ProcLocation;
    return-object v0

    .line 25
    .restart local v0    # "this":Lgnu/mapping/ProcLocation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 27
    .local v2, "ex":Ljava/lang/RuntimeException;
    move-object v3, v2

    throw v3

    .line 29
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 31
    .local v2, "ex":Ljava/lang/Error;
    move-object v3, v2

    throw v3

    .line 33
    .end local v2    # "ex":Ljava/lang/Error;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 35
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Lgnu/mapping/WrappedException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcLocation;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/ProcLocation;
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ProcLocation;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    array-length v5, v5

    move v2, v5

    .line 42
    .local v2, "len":I
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v3, v5

    .line 43
    .local v3, "xargs":[Ljava/lang/Object;
    move-object v5, v3

    move v6, v2

    move-object v7, v1

    aput-object v7, v5, v6

    .line 44
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    .line 61
    return-void

    .line 49
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 51
    .local v4, "ex":Ljava/lang/RuntimeException;
    move-object v5, v4

    throw v5

    .line 53
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 55
    .local v4, "ex":Ljava/lang/Error;
    move-object v5, v4

    throw v5

    .line 57
    .end local v4    # "ex":Ljava/lang/Error;
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 59
    .local v4, "ex":Ljava/lang/Throwable;
    new-instance v5, Lgnu/mapping/WrappedException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
