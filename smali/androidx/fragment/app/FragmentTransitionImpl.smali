.class public abstract Landroidx/fragment/app/FragmentTransitionImpl;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v1, p1

    .local v1, "startView":Landroid/view/View;
    move-object v9, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v2, v9

    .line 312
    .local v2, "startIndex":I
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 313
    .line 329
    :goto_0
    return-void

    .line 315
    :cond_0
    move-object v9, v0

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 316
    move v9, v2

    move v3, v9

    .local v3, "index":I
    :goto_1
    move v9, v3

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 317
    move-object v9, v0

    move v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v4, v9

    .line 318
    .local v4, "view":Landroid/view/View;
    move-object v9, v4

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    .line 319
    move-object v9, v4

    check-cast v9, Landroid/view/ViewGroup;

    move-object v5, v9

    .line 320
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v6, v9

    .line 321
    .local v6, "childCount":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "childIndex":I
    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 322
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 323
    .local v8, "child":Landroid/view/View;
    move-object v9, v0

    move-object v10, v8

    move v11, v2

    invoke-static {v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 324
    move-object v9, v0

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 321
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 316
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    .end local v6    # "childCount":I
    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    goto :goto_0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "maxIndex":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 337
    move-object v4, v0

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 338
    const/4 v4, 0x1

    move v0, v4

    .line 341
    .end local v0    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_1
    return v0

    .line 336
    .restart local v0    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method static findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 357
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 361
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 360
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 361
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method protected static isNullOrEmpty(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "list":Ljava/util/List;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "list":Ljava/util/List;
    return v0

    .restart local v0    # "list":Ljava/util/List;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract addTarget(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract canHandle(Ljava/lang/Object;)Z
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 190
    move-object v7, v2

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 191
    move-object v7, v2

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 192
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    move-object v7, v3

    invoke-static {v7}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 201
    .line 205
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v7

    .line 196
    .local v4, "count":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 197
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 198
    .local v6, "child":Landroid/view/View;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method

.method public abstract cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 213
    move-object v8, v2

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 214
    .local v3, "transitionName":Ljava/lang/String;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 215
    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 217
    :cond_0
    move-object v8, v2

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 218
    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    move-object v4, v8

    .line 219
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v5, v8

    .line 220
    .local v5, "count":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 221
    move-object v8, v4

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 222
    .local v7, "child":Landroid/view/View;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 226
    .end local v3    # "transitionName":Ljava/lang/String;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local v7    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "epicenter":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object v3, v4

    .line 76
    .local v3, "loc":[I
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v3

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object v8, v3

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    return-void
.end method

.method public abstract mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 131
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 132
    .local v3, "numSharedElements":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 133
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 134
    .local v5, "view":Landroid/view/View;
    move-object v6, v2

    move-object v7, v5

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 135
    move-object v6, v5

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Landroidx/fragment/app/FragmentTransitionImpl;
    return-object v0
.end method

.method public abstract removeTarget(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v1

    new-instance v5, Landroidx/fragment/app/FragmentTransitionImpl$3;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl$3;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v4, v5}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v4

    .line 304
    return-void
.end method

.method public abstract scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/View;
    move-object v2, p2

    .local v2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v1

    new-instance v5, Landroidx/fragment/app/FragmentTransitionImpl$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl$2;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v4, v5}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v4

    .line 247
    return-void
.end method

.method setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v1, p1

    .local v1, "sceneRoot":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v4, p4

    .local v4, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, p5

    .local v5, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v6, v13

    .line 150
    .local v6, "numSharedElements":I
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v13

    .line 152
    .local v7, "outNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    move v8, v13

    .local v8, "i":I
    :goto_0
    move v13, v8

    move v14, v6

    if-ge v13, v14, :cond_3

    .line 153
    move-object v13, v2

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object v9, v13

    .line 154
    .local v9, "view":Landroid/view/View;
    move-object v13, v9

    invoke-static {v13}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 155
    .local v10, "name":Ljava/lang/String;
    move-object v13, v7

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 156
    move-object v13, v10

    if-nez v13, :cond_1

    .line 157
    .line 152
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 159
    :cond_1
    move-object v13, v9

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 160
    move-object v13, v5

    move-object v14, v10

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v11, v13

    .line 161
    .local v11, "inName":Ljava/lang/String;
    const/4 v13, 0x0

    move v12, v13

    .local v12, "j":I
    :goto_2
    move v13, v12

    move v14, v6

    if-ge v13, v14, :cond_0

    .line 162
    move-object v13, v11

    move-object v14, v4

    move v15, v12

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 163
    move-object v13, v3

    move v14, v12

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object v14, v10

    invoke-static {v13, v14}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    goto :goto_1

    .line 161
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 169
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "inName":Ljava/lang/String;
    .end local v12    # "j":I
    :cond_3
    move-object v13, v1

    new-instance v14, Landroidx/fragment/app/FragmentTransitionImpl$1;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v0

    move/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v21}, Landroidx/fragment/app/FragmentTransitionImpl$1;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v13, v14}, Landroidx/fragment/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/fragment/app/OneShotPreDrawListener;

    move-result-object v13

    .line 178
    return-void
.end method

.method public abstract setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
.end method
