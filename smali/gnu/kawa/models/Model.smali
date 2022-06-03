.class public abstract Lgnu/kawa/models/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;


# instance fields
.field transient listeners:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Model;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lgnu/kawa/models/ModelListener;)V
    .locals 8

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Model;
    move-object v1, p1

    .local v1, "listener":Lgnu/kawa/models/ModelListener;
    move-object v2, v0

    new-instance v3, Lgnu/kawa/models/WeakListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    invoke-direct {v4, v5, v6}, Lgnu/kawa/models/WeakListener;-><init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V

    iput-object v3, v2, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    .line 18
    return-void
.end method

.method public addListener(Lgnu/kawa/models/WeakListener;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Model;
    move-object v1, p1

    .local v1, "listener":Lgnu/kawa/models/WeakListener;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    iput-object v3, v2, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 23
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    .line 24
    return-void
.end method

.method public notifyListeners(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Model;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v2, v6

    .line 29
    .local v2, "prev":Lgnu/kawa/models/WeakListener;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    move-object v3, v6

    .line 30
    .local v3, "wlistener":Lgnu/kawa/models/WeakListener;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 32
    move-object v6, v3

    invoke-virtual {v6}, Lgnu/kawa/models/WeakListener;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 33
    .local v4, "listener":Ljava/lang/Object;
    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    move-object v5, v6

    .line 34
    .local v5, "next":Lgnu/kawa/models/WeakListener;
    move-object v6, v4

    if-nez v6, :cond_1

    .line 36
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 37
    move-object v6, v2

    move-object v7, v5

    iput-object v7, v6, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 44
    :cond_0
    :goto_1
    move-object v6, v5

    move-object v3, v6

    .line 45
    goto :goto_0

    .line 41
    :cond_1
    move-object v6, v3

    move-object v2, v6

    .line 42
    move-object v6, v3

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/models/WeakListener;->update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    goto :goto_1

    .line 46
    .end local v4    # "listener":Ljava/lang/Object;
    .end local v5    # "next":Lgnu/kawa/models/WeakListener;
    :cond_2
    return-void
.end method
