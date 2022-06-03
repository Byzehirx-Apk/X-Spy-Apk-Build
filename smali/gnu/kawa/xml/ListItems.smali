.class public Lgnu/kawa/xml/ListItems;
.super Lgnu/mapping/MethodProc;
.source "ListItems.java"


# static fields
.field public static listItems:Lgnu/kawa/xml/ListItems;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lgnu/kawa/xml/ListItems;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/ListItems;-><init>()V

    sput-object v0, Lgnu/kawa/xml/ListItems;->listItems:Lgnu/kawa/xml/ListItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ListItems;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ListItems;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v7

    .line 21
    .local v2, "out":Lgnu/lists/Consumer;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 22
    .local v3, "arg":Ljava/lang/Object;
    move-object v7, v1

    invoke-virtual {v7}, Lgnu/mapping/CallContext;->lastArg()V

    .line 25
    move-object v7, v3

    check-cast v7, Ljava/util/List;

    move-object v4, v7

    .line 26
    .local v4, "list":Ljava/util/List;
    move-object v7, v3

    instance-of v7, v7, Lgnu/lists/AbstractSequence;

    if-eqz v7, :cond_0

    .line 28
    move-object v7, v3

    check-cast v7, Lgnu/lists/AbstractSequence;

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 29
    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    .line 32
    .local v5, "iter":Ljava/util/Iterator;
    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 35
    .local v6, "val":Ljava/lang/Object;
    move-object v7, v6

    move-object v8, v2

    invoke-static {v7, v8}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    goto :goto_1

    .line 41
    .end local v6    # "val":Ljava/lang/Object;
    :cond_1
    goto :goto_0
.end method
