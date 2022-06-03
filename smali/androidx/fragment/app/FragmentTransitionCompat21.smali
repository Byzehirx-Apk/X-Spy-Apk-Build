.class Landroidx/fragment/app/FragmentTransitionCompat21;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "transition":Landroid/transition/Transition;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 120
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 121
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "transition":Landroid/transition/Transition;
    return v0

    .restart local v0    # "transition":Landroid/transition/Transition;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 288
    move-object v4, v1

    check-cast v4, Landroid/transition/Transition;

    move-object v3, v4

    .line 289
    .local v3, "transition":Landroid/transition/Transition;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v4

    .line 291
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 11
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

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v8, v1

    check-cast v8, Landroid/transition/Transition;

    move-object v3, v8

    .line 93
    .local v3, "transition":Landroid/transition/Transition;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 94
    .line 113
    :goto_0
    return-void

    .line 96
    :cond_0
    move-object v8, v3

    instance-of v8, v8, Landroid/transition/TransitionSet;

    if-eqz v8, :cond_2

    .line 97
    move-object v8, v3

    check-cast v8, Landroid/transition/TransitionSet;

    move-object v4, v8

    .line 98
    .local v4, "set":Landroid/transition/TransitionSet;
    move-object v8, v4

    invoke-virtual {v8}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v8

    move v5, v8

    .line 99
    .local v5, "numTransitions":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 100
    move-object v8, v4

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v8

    move-object v7, v8

    .line 101
    .local v7, "child":Landroid/transition/Transition;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 103
    .line 113
    .end local v4    # "set":Landroid/transition/TransitionSet;
    .end local v5    # "numTransitions":I
    .end local v6    # "i":I
    .end local v7    # "child":Landroid/transition/Transition;
    :cond_1
    goto :goto_0

    .line 103
    :cond_2
    move-object v8, v3

    invoke-static {v8}, Landroidx/fragment/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 104
    move-object v8, v3

    invoke-virtual {v8}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 105
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v8, v4

    invoke-static {v8}, Landroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 107
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 108
    .local v5, "numViews":I
    const/4 v8, 0x0

    move v6, v8

    .restart local v6    # "i":I
    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 109
    move-object v8, v3

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v8

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "transition":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroid/transition/Transition;

    invoke-static {v3, v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 207
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Landroid/transition/Transition;

    move v0, v2

    .end local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v2, v3

    .line 42
    .local v2, "copy":Landroid/transition/Transition;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 43
    move-object v3, v1

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v3

    move-object v2, v3

    .line 45
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "exitTransitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "enterTransitionObj":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "sharedElementTransitionObj":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v4, v9

    .line 179
    .local v4, "staggered":Landroid/transition/Transition;
    move-object v9, v1

    check-cast v9, Landroid/transition/Transition;

    move-object v5, v9

    .line 180
    .local v5, "exitTransition":Landroid/transition/Transition;
    move-object v9, v2

    check-cast v9, Landroid/transition/Transition;

    move-object v6, v9

    .line 181
    .local v6, "enterTransition":Landroid/transition/Transition;
    move-object v9, v3

    check-cast v9, Landroid/transition/Transition;

    move-object v7, v9

    .line 182
    .local v7, "sharedElementTransition":Landroid/transition/Transition;
    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v6

    if-eqz v9, :cond_2

    .line 183
    new-instance v9, Landroid/transition/TransitionSet;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroid/transition/TransitionSet;-><init>()V

    move-object v10, v5

    .line 184
    invoke-virtual {v9, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v9

    move-object v10, v6

    .line 185
    invoke-virtual {v9, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v9

    const/4 v10, 0x1

    .line 186
    invoke-virtual {v9, v10}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v9

    move-object v4, v9

    .line 192
    :cond_0
    :goto_0
    move-object v9, v7

    if-eqz v9, :cond_4

    .line 193
    new-instance v9, Landroid/transition/TransitionSet;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroid/transition/TransitionSet;-><init>()V

    move-object v8, v9

    .line 194
    .local v8, "together":Landroid/transition/TransitionSet;
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 195
    move-object v9, v8

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v9

    .line 197
    :cond_1
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v9

    .line 198
    move-object v9, v8

    move-object v0, v9

    .line 200
    .end local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    .end local v8    # "together":Landroid/transition/TransitionSet;
    :goto_1
    return-object v0

    .line 187
    .restart local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 188
    move-object v9, v5

    move-object v4, v9

    goto :goto_0

    .line 189
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 190
    move-object v9, v6

    move-object v4, v9

    goto :goto_0

    .line 200
    :cond_4
    move-object v9, v4

    move-object v0, v9

    goto :goto_1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transition1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "transition2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "transition3":Ljava/lang/Object;
    new-instance v5, Landroid/transition/TransitionSet;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/transition/TransitionSet;-><init>()V

    move-object v4, v5

    .line 128
    .local v4, "transitionSet":Landroid/transition/TransitionSet;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 129
    move-object v5, v4

    move-object v6, v1

    check-cast v6, Landroid/transition/Transition;

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    .line 131
    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 132
    move-object v5, v4

    move-object v6, v2

    check-cast v6, Landroid/transition/Transition;

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    .line 134
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 135
    move-object v5, v4

    move-object v6, v3

    check-cast v6, Landroid/transition/Transition;

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    .line 137
    :cond_2
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 296
    move-object v4, v1

    check-cast v4, Landroid/transition/Transition;

    move-object v3, v4

    .line 297
    .local v3, "transition":Landroid/transition/Transition;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v4

    .line 299
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
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

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    .local v3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v1

    check-cast v9, Landroid/transition/Transition;

    move-object v4, v9

    .line 262
    .local v4, "transition":Landroid/transition/Transition;
    move-object v9, v4

    instance-of v9, v9, Landroid/transition/TransitionSet;

    if-eqz v9, :cond_1

    .line 263
    move-object v9, v4

    check-cast v9, Landroid/transition/TransitionSet;

    move-object v5, v9

    .line 264
    .local v5, "set":Landroid/transition/TransitionSet;
    move-object v9, v5

    invoke-virtual {v9}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v9

    move v6, v9

    .line 265
    .local v6, "numTransitions":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 266
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v9

    move-object v8, v9

    .line 267
    .local v8, "child":Landroid/transition/Transition;
    move-object v9, v0

    move-object v10, v8

    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroidx/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 269
    .line 283
    .end local v5    # "set":Landroid/transition/TransitionSet;
    .end local v6    # "numTransitions":I
    .end local v7    # "i":I
    .end local v8    # "child":Landroid/transition/Transition;
    :cond_0
    return-void

    .line 269
    :cond_1
    move-object v9, v4

    invoke-static {v9}, Landroidx/fragment/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 270
    move-object v9, v4

    invoke-virtual {v9}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 271
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v9, v5

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    move-object v9, v5

    move-object v10, v2

    .line 272
    invoke-interface {v9, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 274
    move-object v9, v3

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    move v6, v9

    .line 275
    .local v6, "targetCount":I
    const/4 v9, 0x0

    move v7, v9

    .restart local v7    # "i":I
    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 276
    move-object v9, v4

    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v9

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 274
    .end local v6    # "targetCount":I
    .end local v7    # "i":I
    :cond_2
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_1

    .line 278
    .restart local v6    # "targetCount":I
    .restart local v7    # "i":I
    :cond_3
    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    :goto_3
    move v9, v7

    if-ltz v9, :cond_0

    .line 279
    move-object v9, v4

    move-object v10, v2

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v9

    .line 278
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 12
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

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "exitTransitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "fragmentView":Landroid/view/View;
    move-object v3, p3

    .local v3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v1

    check-cast v5, Landroid/transition/Transition;

    move-object v4, v5

    .line 144
    .local v4, "exitTransition":Landroid/transition/Transition;
    move-object v5, v4

    new-instance v6, Landroidx/fragment/app/FragmentTransitionCompat21$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/fragment/app/FragmentTransitionCompat21$2;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v5

    .line 171
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 20
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

    .prologue
    .line 214
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object/from16 v1, p1

    .local v1, "overallTransitionObj":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "enterTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v4, p4

    .local v4, "exitTransition":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v6, p6

    .local v6, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v7, p7

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v1

    check-cast v9, Landroid/transition/Transition;

    move-object v8, v9

    .line 215
    .local v8, "overallTransition":Landroid/transition/Transition;
    move-object v9, v8

    new-instance v10, Landroidx/fragment/app/FragmentTransitionCompat21$3;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Landroidx/fragment/app/FragmentTransitionCompat21$3;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v9

    .line 245
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "epicenter":Landroid/graphics/Rect;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 304
    move-object v4, v1

    check-cast v4, Landroid/transition/Transition;

    move-object v3, v4

    .line 305
    .local v3, "transition":Landroid/transition/Transition;
    move-object v4, v3

    new-instance v5, Landroidx/fragment/app/FragmentTransitionCompat21$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/FragmentTransitionCompat21$4;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 315
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 11

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 77
    move-object v5, v1

    check-cast v5, Landroid/transition/Transition;

    move-object v3, v5

    .line 78
    .local v3, "transition":Landroid/transition/Transition;
    new-instance v5, Landroid/graphics/Rect;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v5

    .line 79
    .local v4, "epicenter":Landroid/graphics/Rect;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 81
    move-object v5, v3

    new-instance v6, Landroidx/fragment/app/FragmentTransitionCompat21$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/fragment/app/FragmentTransitionCompat21$1;-><init>(Landroidx/fragment/app/FragmentTransitionCompat21;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 88
    .end local v3    # "transition":Landroid/transition/Transition;
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 12
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

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "nonExistentView":Landroid/view/View;
    move-object v3, p3

    .local v3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v1

    check-cast v9, Landroid/transition/TransitionSet;

    move-object v4, v9

    .line 62
    .local v4, "transition":Landroid/transition/TransitionSet;
    move-object v9, v4

    invoke-virtual {v9}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 63
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 64
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 65
    .local v6, "count":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 66
    move-object v9, v3

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 67
    .local v8, "view":Landroid/view/View;
    move-object v9, v5

    move-object v10, v8

    invoke-static {v9, v10}, Landroidx/fragment/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 65
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 69
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    move-object v9, v5

    move-object v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 70
    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 71
    move-object v9, v0

    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroidx/fragment/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 72
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
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

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "sharedElementTransitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v1

    check-cast v5, Landroid/transition/TransitionSet;

    move-object v4, v5

    .line 251
    .local v4, "sharedElementTransition":Landroid/transition/TransitionSet;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 252
    move-object v5, v4

    invoke-virtual {v5}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 253
    move-object v5, v4

    invoke-virtual {v5}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 254
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 256
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 51
    const/4 v3, 0x0

    move-object v0, v3

    .line 55
    .end local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    :goto_0
    return-object v0

    .line 53
    .restart local v0    # "this":Landroidx/fragment/app/FragmentTransitionCompat21;
    :cond_0
    new-instance v3, Landroid/transition/TransitionSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    move-object v2, v3

    .line 54
    .local v2, "transitionSet":Landroid/transition/TransitionSet;
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Landroid/transition/Transition;

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    .line 55
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
