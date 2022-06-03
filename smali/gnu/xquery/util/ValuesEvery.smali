.class public Lgnu/xquery/util/ValuesEvery;
.super Lgnu/mapping/MethodProc;
.source "ValuesEvery.java"


# static fields
.field public static final every:Lgnu/xquery/util/ValuesEvery;

.field public static final some:Lgnu/xquery/util/ValuesEvery;


# instance fields
.field matchAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lgnu/xquery/util/ValuesEvery;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgnu/xquery/util/ValuesEvery;-><init>(Z)V

    sput-object v0, Lgnu/xquery/util/ValuesEvery;->every:Lgnu/xquery/util/ValuesEvery;

    .line 16
    new-instance v0, Lgnu/xquery/util/ValuesEvery;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/xquery/util/ValuesEvery;-><init>(Z)V

    sput-object v0, Lgnu/xquery/util/ValuesEvery;->some:Lgnu/xquery/util/ValuesEvery;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesEvery;
    move v1, p1

    .local v1, "matchAll":Z
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesEvery;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/Procedure;

    move-object v2, v7

    .line 28
    .local v2, "proc":Lgnu/mapping/Procedure;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 29
    .local v3, "val":Ljava/lang/Object;
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    move v4, v7

    .line 30
    .local v4, "ok":Z
    move-object v7, v2

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 31
    move-object v7, v3

    instance-of v7, v7, Lgnu/mapping/Values;

    if-eqz v7, :cond_2

    .line 33
    const/4 v7, 0x0

    move v5, v7

    .line 34
    .local v5, "ipos":I
    move-object v7, v3

    check-cast v7, Lgnu/mapping/Values;

    move-object v6, v7

    .line 35
    .local v6, "values":Lgnu/mapping/Values;
    :cond_0
    move-object v7, v6

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    move v10, v7

    move v7, v10

    move v8, v10

    move v5, v8

    if-eqz v7, :cond_1

    .line 37
    move-object v7, v2

    move-object v8, v6

    move v9, v5

    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 38
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v7

    move v4, v7

    .line 39
    move v7, v4

    move-object v8, v0

    iget-boolean v8, v8, Lgnu/xquery/util/ValuesEvery;->matchAll:Z

    if-eq v7, v8, :cond_0

    .line 40
    .line 42
    .line 48
    .end local v5    # "ipos":I
    .end local v6    # "values":Lgnu/mapping/Values;
    :cond_1
    :goto_0
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move v8, v4

    invoke-interface {v7, v8}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 49
    return-void

    .line 45
    :cond_2
    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 46
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v7

    move v4, v7

    goto :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/ValuesEvery;
    const/16 v1, 0x2002

    move v0, v1

    .end local v0    # "this":Lgnu/xquery/util/ValuesEvery;
    return v0
.end method
