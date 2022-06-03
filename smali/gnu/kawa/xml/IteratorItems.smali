.class public Lgnu/kawa/xml/IteratorItems;
.super Lgnu/mapping/MethodProc;
.source "IteratorItems.java"


# static fields
.field public static iteratorItems:Lgnu/kawa/xml/IteratorItems;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/IteratorItems;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/IteratorItems;-><init>()V

    sput-object v0, Lgnu/kawa/xml/IteratorItems;->iteratorItems:Lgnu/kawa/xml/IteratorItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/IteratorItems;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/IteratorItems;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    iget-object v6, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v6

    .line 20
    .local v2, "out":Lgnu/lists/Consumer;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 21
    .local v3, "arg":Ljava/lang/Object;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->lastArg()V

    .line 24
    move-object v6, v3

    check-cast v6, Ljava/util/Iterator;

    move-object v4, v6

    .line 29
    .local v4, "iter":Ljava/util/Iterator;
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 31
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 32
    .local v5, "val":Ljava/lang/Object;
    move-object v6, v5

    move-object v7, v2

    invoke-static {v6, v7}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 33
    goto :goto_0

    .line 34
    .end local v5    # "val":Ljava/lang/Object;
    :cond_0
    return-void
.end method
