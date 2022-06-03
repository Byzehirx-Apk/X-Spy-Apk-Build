.class public abstract Lcom/github/ybq/android/spinkit/animation/IntProperty;
.super Landroid/util/Property;
.source "IntProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/IntProperty;, "Lcom/github/ybq/android/spinkit/animation/IntProperty<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    const-class v3, Ljava/lang/Integer;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/IntProperty;, "Lcom/github/ybq/android/spinkit/animation/IntProperty<TT;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 44
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/github/ybq/android/spinkit/animation/IntProperty;, "Lcom/github/ybq/android/spinkit/animation/IntProperty<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/github/ybq/android/spinkit/animation/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method
