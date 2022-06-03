.class public Landroidx/transition/FragmentTransitionSupport;
.super Landroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


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
    .line 39
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroidx/transition/Transition;)Z
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "transition":Landroidx/transition/Transition;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 124
    invoke-virtual {v1}, Landroidx/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 125
    invoke-virtual {v1}, Landroidx/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "transition":Landroidx/transition/Transition;
    return v0

    .restart local v0    # "transition":Landroidx/transition/Transition;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 292
    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 293
    .local v3, "transition":Landroidx/transition/Transition;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v4

    .line 295
    .end local v3    # "transition":Landroidx/transition/Transition;
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
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v8, v1

    check-cast v8, Landroidx/transition/Transition;

    move-object v3, v8

    .line 100
    .local v3, "transition":Landroidx/transition/Transition;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 101
    .line 120
    :goto_0
    return-void

    .line 103
    :cond_0
    move-object v8, v3

    instance-of v8, v8, Landroidx/transition/TransitionSet;

    if-eqz v8, :cond_2

    .line 104
    move-object v8, v3

    check-cast v8, Landroidx/transition/TransitionSet;

    move-object v4, v8

    .line 105
    .local v4, "set":Landroidx/transition/TransitionSet;
    move-object v8, v4

    invoke-virtual {v8}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v8

    move v5, v8

    .line 106
    .local v5, "numTransitions":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 107
    move-object v8, v4

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object v8

    move-object v7, v8

    .line 108
    .local v7, "child":Landroidx/transition/Transition;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 110
    .line 120
    .end local v4    # "set":Landroidx/transition/TransitionSet;
    .end local v5    # "numTransitions":I
    .end local v6    # "i":I
    .end local v7    # "child":Landroidx/transition/Transition;
    :cond_1
    goto :goto_0

    .line 110
    :cond_2
    move-object v8, v3

    invoke-static {v8}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 111
    move-object v8, v3

    invoke-virtual {v8}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 112
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v8, v4

    invoke-static {v8}, Landroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 115
    .local v5, "numViews":I
    const/4 v8, 0x0

    move v6, v8

    .restart local v6    # "i":I
    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 116
    move-object v8, v3

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v8

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "transition":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroidx/transition/Transition;

    invoke-static {v3, v4}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 211
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Landroidx/transition/Transition;

    move v0, v2

    .end local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v2, v3

    .line 49
    .local v2, "copy":Landroidx/transition/Transition;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 50
    move-object v3, v1

    check-cast v3, Landroidx/transition/Transition;

    invoke-virtual {v3}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v3

    move-object v2, v3

    .line 52
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "exitTransitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "enterTransitionObj":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "sharedElementTransitionObj":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v4, v9

    .line 183
    .local v4, "staggered":Landroidx/transition/Transition;
    move-object v9, v1

    check-cast v9, Landroidx/transition/Transition;

    move-object v5, v9

    .line 184
    .local v5, "exitTransition":Landroidx/transition/Transition;
    move-object v9, v2

    check-cast v9, Landroidx/transition/Transition;

    move-object v6, v9

    .line 185
    .local v6, "enterTransition":Landroidx/transition/Transition;
    move-object v9, v3

    check-cast v9, Landroidx/transition/Transition;

    move-object v7, v9

    .line 186
    .local v7, "sharedElementTransition":Landroidx/transition/Transition;
    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v6

    if-eqz v9, :cond_2

    .line 187
    new-instance v9, Landroidx/transition/TransitionSet;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v10, v5

    .line 188
    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    move-object v10, v6

    .line 189
    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    const/4 v10, 0x1

    .line 190
    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    move-result-object v9

    move-object v4, v9

    .line 196
    :cond_0
    :goto_0
    move-object v9, v7

    if-eqz v9, :cond_4

    .line 197
    new-instance v9, Landroidx/transition/TransitionSet;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v8, v9

    .line 198
    .local v8, "together":Landroidx/transition/TransitionSet;
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 199
    move-object v9, v8

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    .line 201
    :cond_1
    move-object v9, v8

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v9

    .line 202
    move-object v9, v8

    move-object v0, v9

    .line 204
    .end local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    .end local v8    # "together":Landroidx/transition/TransitionSet;
    :goto_1
    return-object v0

    .line 191
    .restart local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 192
    move-object v9, v5

    move-object v4, v9

    goto :goto_0

    .line 193
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 194
    move-object v9, v6

    move-object v4, v9

    goto :goto_0

    .line 204
    :cond_4
    move-object v9, v4

    move-object v0, v9

    goto :goto_1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transition1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "transition2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "transition3":Ljava/lang/Object;
    new-instance v5, Landroidx/transition/TransitionSet;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v4, v5

    .line 132
    .local v4, "transitionSet":Landroidx/transition/TransitionSet;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 133
    move-object v5, v4

    move-object v6, v1

    check-cast v6, Landroidx/transition/Transition;

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 135
    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 136
    move-object v5, v4

    move-object v6, v2

    check-cast v6, Landroidx/transition/Transition;

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 138
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 139
    move-object v5, v4

    move-object v6, v3

    check-cast v6, Landroidx/transition/Transition;

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 141
    :cond_2
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 300
    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 301
    .local v3, "transition":Landroidx/transition/Transition;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v4

    .line 303
    .end local v3    # "transition":Landroidx/transition/Transition;
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
    .line 265
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    .local v3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v1

    check-cast v9, Landroidx/transition/Transition;

    move-object v4, v9

    .line 266
    .local v4, "transition":Landroidx/transition/Transition;
    move-object v9, v4

    instance-of v9, v9, Landroidx/transition/TransitionSet;

    if-eqz v9, :cond_1

    .line 267
    move-object v9, v4

    check-cast v9, Landroidx/transition/TransitionSet;

    move-object v5, v9

    .line 268
    .local v5, "set":Landroidx/transition/TransitionSet;
    move-object v9, v5

    invoke-virtual {v9}, Landroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v9

    move v6, v9

    .line 269
    .local v6, "numTransitions":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 270
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/transition/TransitionSet;->getTransitionAt(I)Landroidx/transition/Transition;

    move-result-object v9

    move-object v8, v9

    .line 271
    .local v8, "child":Landroidx/transition/Transition;
    move-object v9, v0

    move-object v10, v8

    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 269
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 273
    .line 287
    .end local v5    # "set":Landroidx/transition/TransitionSet;
    .end local v6    # "numTransitions":I
    .end local v7    # "i":I
    .end local v8    # "child":Landroidx/transition/Transition;
    :cond_0
    return-void

    .line 273
    :cond_1
    move-object v9, v4

    invoke-static {v9}, Landroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroidx/transition/Transition;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 274
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 275
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    move-object v9, v5

    move-object v10, v2

    .line 276
    invoke-interface {v9, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 278
    move-object v9, v3

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    move v6, v9

    .line 279
    .local v6, "targetCount":I
    const/4 v9, 0x0

    move v7, v9

    .restart local v7    # "i":I
    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 280
    move-object v9, v4

    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v9

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 278
    .end local v6    # "targetCount":I
    .end local v7    # "i":I
    :cond_2
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_1

    .line 282
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

    .line 283
    move-object v9, v4

    move-object v10, v2

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v9

    .line 282
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
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "exitTransitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "fragmentView":Landroid/view/View;
    move-object v3, p3

    .local v3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v1

    check-cast v5, Landroidx/transition/Transition;

    move-object v4, v5

    .line 148
    .local v4, "exitTransition":Landroidx/transition/Transition;
    move-object v5, v4

    new-instance v6, Landroidx/transition/FragmentTransitionSupport$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroidx/transition/FragmentTransitionSupport$2;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v5

    .line 175
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
    .line 218
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
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

    check-cast v9, Landroidx/transition/Transition;

    move-object v8, v9

    .line 219
    .local v8, "overallTransition":Landroidx/transition/Transition;
    move-object v9, v8

    new-instance v10, Landroidx/transition/FragmentTransitionSupport$3;

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

    invoke-direct/range {v11 .. v18}, Landroidx/transition/FragmentTransitionSupport$3;-><init>(Landroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v10}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v9

    .line 249
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "epicenter":Landroid/graphics/Rect;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 308
    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 309
    .local v3, "transition":Landroidx/transition/Transition;
    move-object v4, v3

    new-instance v5, Landroidx/transition/FragmentTransitionSupport$4;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroidx/transition/FragmentTransitionSupport$4;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 319
    .end local v3    # "transition":Landroidx/transition/Transition;
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 84
    move-object v5, v1

    check-cast v5, Landroidx/transition/Transition;

    move-object v3, v5

    .line 85
    .local v3, "transition":Landroidx/transition/Transition;
    new-instance v5, Landroid/graphics/Rect;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v5

    .line 86
    .local v4, "epicenter":Landroid/graphics/Rect;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroidx/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    move-object v5, v3

    new-instance v6, Landroidx/transition/FragmentTransitionSupport$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/transition/FragmentTransitionSupport$1;-><init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 95
    .end local v3    # "transition":Landroidx/transition/Transition;
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
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "nonExistentView":Landroid/view/View;
    move-object v3, p3

    .local v3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v9, v1

    check-cast v9, Landroidx/transition/TransitionSet;

    move-object v4, v9

    .line 69
    .local v4, "transition":Landroidx/transition/TransitionSet;
    move-object v9, v4

    invoke-virtual {v9}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 70
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 71
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 72
    .local v6, "count":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 73
    move-object v9, v3

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v8, v9

    .line 74
    .local v8, "view":Landroid/view/View;
    move-object v9, v5

    move-object v10, v8

    invoke-static {v9, v10}, Landroidx/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 76
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    move-object v9, v5

    move-object v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 77
    move-object v9, v3

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 78
    move-object v9, v0

    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Landroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 79
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
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "sharedElementTransitionObj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v3, p3

    .local v3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, v1

    check-cast v5, Landroidx/transition/TransitionSet;

    move-object v4, v5

    .line 255
    .local v4, "sharedElementTransition":Landroidx/transition/TransitionSet;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 256
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 257
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 258
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 260
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/transition/FragmentTransitionSupport;
    move-object v1, p1

    .local v1, "transition":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 58
    const/4 v3, 0x0

    move-object v0, v3

    .line 62
    .end local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "this":Landroidx/transition/FragmentTransitionSupport;
    :cond_0
    new-instance v3, Landroidx/transition/TransitionSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/transition/TransitionSet;-><init>()V

    move-object v2, v3

    .line 61
    .local v2, "transitionSet":Landroidx/transition/TransitionSet;
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Landroidx/transition/Transition;

    invoke-virtual {v3, v4}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v3

    .line 62
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
