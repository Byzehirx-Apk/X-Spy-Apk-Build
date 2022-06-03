.class public Lkawa/standard/call_with_values;
.super Lgnu/mapping/Procedure2;
.source "call_with_values.java"


# static fields
.field public static final callWithValues:Lkawa/standard/call_with_values;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    new-instance v0, Lkawa/standard/call_with_values;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/call_with_values;-><init>()V

    sput-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    .line 7
    sget-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    const-string/jumbo v1, "call-with-values"

    invoke-virtual {v0, v1}, Lkawa/standard/call_with_values;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lkawa/standard/call_with_values;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "producer":Lgnu/mapping/Procedure;
    move-object v1, p1

    .local v1, "consumer":Lgnu/mapping/Procedure;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 13
    .local v2, "values":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/mapping/Values;

    if-eqz v3, :cond_0

    .line 14
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Values;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 16
    .end local v0    # "producer":Lgnu/mapping/Procedure;
    :goto_0
    return-object v0

    .restart local v0    # "producer":Lgnu/mapping/Procedure;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/standard/call_with_values;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 27
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 28
    .local v2, "args":[Ljava/lang/Object;
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lgnu/mapping/Procedure;

    invoke-virtual {v5}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 29
    .local v3, "values":Ljava/lang/Object;
    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Lgnu/mapping/Procedure;

    move-object v4, v5

    .line 30
    .local v4, "consumer":Lgnu/mapping/Procedure;
    move-object v5, v3

    instance-of v5, v5, Lgnu/mapping/Values;

    if-eqz v5, :cond_0

    .line 32
    move-object v5, v3

    check-cast v5, Lgnu/mapping/Values;

    invoke-virtual {v5}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 33
    move-object v5, v4

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v5, v4

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lkawa/standard/call_with_values;
    move-object v1, p1

    .local v1, "producer":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "consumer":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Procedure;

    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    invoke-static {v3, v4}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/call_with_values;
    return-object v0
.end method
