.class public Lgnu/kawa/util/WeakHashNode;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field public hash:I

.field public next:Lgnu/kawa/util/WeakHashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/WeakHashNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;I)V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    move v3, p3

    .local v3, "hash":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 25
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/kawa/util/WeakHashNode;->hash:I

    .line 26
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/kawa/util/WeakHashNode;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    move-object v2, v3

    .line 45
    .local v2, "old":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    .line 46
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    return-object v0
.end method
