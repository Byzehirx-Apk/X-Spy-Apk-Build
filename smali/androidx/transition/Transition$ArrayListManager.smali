.class Landroidx/transition/Transition$ArrayListManager;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2378
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Transition$ArrayListManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2389
    move-object v0, p0

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 2390
    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 2392
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2393
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2395
    :cond_1
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    return-object v0
.end method

.method static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2404
    move-object v0, p0

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 2405
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2406
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2407
    const/4 v2, 0x0

    move-object v0, v2

    .line 2410
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    return-object v0
.end method
