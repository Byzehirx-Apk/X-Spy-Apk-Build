.class public abstract Lgnu/mapping/Procedure0;
.super Lgnu/mapping/Procedure;
.source "Procedure0.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, p1

    .local v1, "n":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    new-instance v2, Lgnu/mapping/WrongArguments;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    new-instance v3, Lgnu/mapping/WrongArguments;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v3
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    new-instance v4, Lgnu/mapping/WrongArguments;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    new-instance v5, Lgnu/mapping/WrongArguments;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v5
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Lgnu/mapping/WrongArguments;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2

    .line 49
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Procedure0;->apply0()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Procedure0;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure0;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure0;
    return v0
.end method
