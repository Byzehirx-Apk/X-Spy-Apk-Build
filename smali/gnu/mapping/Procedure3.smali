.class public abstract Lgnu/mapping/Procedure3;
.super Lgnu/mapping/Procedure;
.source "Procedure3.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
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

    .local v0, "this":Lgnu/mapping/Procedure3;
    move-object v1, p1

    .local v1, "n":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
    new-instance v1, Lgnu/mapping/WrongArguments;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
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
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
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

.method public abstract apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 47
    new-instance v2, Lgnu/mapping/WrongArguments;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2

    .line 48
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Procedure3;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Procedure3;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure3;
    const/16 v1, 0x3003

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure3;
    return v0
.end method
