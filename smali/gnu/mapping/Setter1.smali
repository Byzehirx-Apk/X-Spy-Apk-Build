.class public Lgnu/mapping/Setter1;
.super Lgnu/mapping/Setter;
.source "Setter1.java"


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 4

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter1;
    move-object v1, p1

    .local v1, "getter":Lgnu/mapping/Procedure;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter1;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/Setter1;->getter:Lgnu/mapping/Procedure;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->set1(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Setter1;
    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter1;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v3, v1

    array-length v3, v3

    move v2, v3

    .line 17
    .local v2, "nargs":I
    move v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 18
    new-instance v3, Lgnu/mapping/WrongArguments;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v3

    .line 19
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/Setter1;->getter:Lgnu/mapping/Procedure;

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->set1(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .end local v0    # "this":Lgnu/mapping/Setter1;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Setter1;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Setter1;
    return v0
.end method
