.class public abstract Lgnu/mapping/Procedure1or2;
.super Lgnu/mapping/Procedure;
.source "Procedure1or2.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
    move-object v1, p1

    .local v1, "n":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
    new-instance v1, Lgnu/mapping/WrongArguments;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
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
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
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
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 46
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure1or2;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 48
    .end local v0    # "this":Lgnu/mapping/Procedure1or2;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "this":Lgnu/mapping/Procedure1or2;
    :cond_0
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 48
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure1or2;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 50
    :cond_1
    new-instance v2, Lgnu/mapping/WrongArguments;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Procedure1or2;
    const/16 v1, 0x2001

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Procedure1or2;
    return v0
.end method
