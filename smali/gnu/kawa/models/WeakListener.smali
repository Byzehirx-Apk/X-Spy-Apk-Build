.class public Lgnu/kawa/models/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# instance fields
.field next:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WeakListener;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WeakListener;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "next":Lgnu/kawa/models/WeakListener;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 15
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/WeakListener;
    move-object v1, p1

    .local v1, "view":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "model":Lgnu/kawa/models/Model;
    move-object v3, p3

    .local v3, "key":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lgnu/kawa/models/ModelListener;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lgnu/kawa/models/ModelListener;->modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    .line 21
    return-void
.end method
