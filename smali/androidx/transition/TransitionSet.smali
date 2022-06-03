.class public Landroidx/transition/TransitionSet;
.super Landroidx/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field private static final FLAG_CHANGE_EPICENTER:I = 0x8

.field private static final FLAG_CHANGE_INTERPOLATOR:I = 0x1

.field private static final FLAG_CHANGE_PATH_MOTION:I = 0x4

.field private static final FLAG_CHANGE_PROPAGATION:I = 0x2

.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field private mChangeFlags:I

.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field private mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 79
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 80
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 83
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 87
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 80
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 83
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/transition/TransitionSet;->mStarted:Z

    .line 87
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 114
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/transition/Styleable;->TRANSITION_SET:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 115
    .local v3, "a":Landroid/content/res/TypedArray;
    move-object v5, v3

    move-object v6, v2

    check-cast v6, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "transitionOrdering"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 118
    .local v4, "ordering":I
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    move-result-object v5

    .line 119
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method private setupStartEndListeners()V
    .locals 8

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    new-instance v4, Landroidx/transition/TransitionSet$TransitionSetListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroidx/transition/TransitionSet$TransitionSetListener;-><init>(Landroidx/transition/TransitionSet;)V

    move-object v1, v4

    .line 409
    .local v1, "listener":Landroidx/transition/TransitionSet$TransitionSetListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 410
    .local v3, "childTransition":Landroidx/transition/Transition;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v4

    .line 411
    goto :goto_0

    .line 412
    .end local v3    # "childTransition":Landroidx/transition/Transition;
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    .line 413
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;
    .locals 4
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "listener":Landroidx/transition/Transition$TransitionListener;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionSet;

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroidx/transition/Transition;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->addTarget(I)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public addTarget(I)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    .local v1, "targetId":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    move-result-object v3

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 264
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v3

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "targetType":Ljava/lang/Class;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 291
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    move-result-object v3

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 282
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    move-result-object v3

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;
    .locals 6
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 177
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 178
    move-object v2, v0

    iget-wide v2, v2, Landroidx/transition/TransitionSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 179
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Landroidx/transition/TransitionSet;->mDuration:J

    invoke-virtual {v2, v3, v4}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v2

    .line 181
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 182
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/TransitionSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v2

    .line 184
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 185
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/TransitionSet;->getPropagation()Landroidx/transition/TransitionPropagation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 187
    :cond_2
    move-object v2, v0

    iget v2, v2, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 188
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/TransitionSet;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 190
    :cond_3
    move-object v2, v0

    iget v2, v2, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/16 v3, 0x8

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 191
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/transition/TransitionSet;->getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 193
    :cond_4
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method protected cancel()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v3, v0

    invoke-super {v3}, Landroidx/transition/Transition;->cancel()V

    .line 572
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 573
    .local v1, "numTransitions":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 574
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    invoke-virtual {v3}, Landroidx/transition/Transition;->cancel()V

    .line 573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 6
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 528
    .local v3, "childTransition":Landroidx/transition/Transition;
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 530
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 532
    :cond_0
    goto :goto_0

    .line 534
    .end local v3    # "childTransition":Landroidx/transition/Transition;
    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 539
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 540
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 541
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 6
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "transitionValues":Landroidx/transition/TransitionValues;
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 516
    .local v3, "childTransition":Landroidx/transition/Transition;
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 518
    move-object v4, v1

    iget-object v4, v4, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 520
    :cond_0
    goto :goto_0

    .line 522
    .end local v3    # "childTransition":Landroidx/transition/Transition;
    :cond_1
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 8

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v4, v0

    invoke-super {v4}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionSet;

    move-object v1, v4

    .line 640
    .local v1, "clone":Landroidx/transition/TransitionSet;
    move-object v4, v1

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 641
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 642
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 643
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition;

    invoke-virtual {v5}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v4

    .line 642
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/TransitionSet;->clone()Landroidx/transition/Transition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/transition/TransitionSet;
    move-object/from16 v2, p1

    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v3, p2

    .local v3, "startValues":Landroidx/transition/TransitionValuesMaps;
    move-object/from16 v4, p3

    .local v4, "endValues":Landroidx/transition/TransitionValuesMaps;
    move-object/from16 v5, p4

    .local v5, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object/from16 v6, p5

    .local v6, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object v14, v1

    invoke-virtual {v14}, Landroidx/transition/TransitionSet;->getStartDelay()J

    move-result-wide v14

    move-wide v7, v14

    .line 457
    .local v7, "startDelay":J
    move-object v14, v1

    iget-object v14, v14, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v9, v14

    .line 458
    .local v9, "numTransitions":I
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    :goto_0
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_3

    .line 459
    move-object v14, v1

    iget-object v14, v14, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/transition/Transition;

    move-object v11, v14

    .line 462
    .local v11, "childTransition":Landroidx/transition/Transition;
    move-wide v14, v7

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    move-object v14, v1

    iget-boolean v14, v14, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    if-nez v14, :cond_0

    move v14, v10

    if-nez v14, :cond_1

    .line 463
    :cond_0
    move-object v14, v11

    invoke-virtual {v14}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v14

    move-wide v12, v14

    .line 464
    .local v12, "childStartDelay":J
    move-wide v14, v12

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 465
    move-object v14, v11

    move-wide v15, v7

    move-wide/from16 v17, v12

    add-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object v14

    .line 470
    .end local v12    # "childStartDelay":J
    :cond_1
    :goto_1
    move-object v14, v11

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 458
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 467
    .restart local v12    # "childStartDelay":J
    :cond_2
    move-object v14, v11

    move-wide v15, v7

    invoke-virtual/range {v14 .. v16}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object v14

    goto :goto_1

    .line 473
    .end local v11    # "childTransition":Landroidx/transition/Transition;
    .end local v12    # "childStartDelay":J
    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    .local v1, "targetId":I
    move v2, p2

    .local v2, "exclude":Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 360
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    move-result-object v4

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    move v2, p2

    .local v2, "exclude":Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 342
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;

    move-result-object v4

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;
    move v2, p2

    .local v2, "exclude":Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 369
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    move-result-object v4

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move v2, p2

    .local v2, "exclude":Z
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 351
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    move-result-object v4

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 583
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 584
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 585
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return v0

    .restart local v0    # "this":Landroidx/transition/TransitionSet;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTransitionAt(I)Landroidx/transition/Transition;
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 216
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 218
    .end local v0    # "this":Landroidx/transition/TransitionSet;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/transition/TransitionSet;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/Transition;

    move-object v0, v2

    goto :goto_0
.end method

.method public getTransitionCount()I
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    .line 550
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 551
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 552
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    .line 551
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;
    .locals 4
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "listener":Landroidx/transition/Transition$TransitionListener;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionSet;

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroidx/transition/Transition;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->removeTarget(I)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public removeTarget(I)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    .local v1, "targetId":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 306
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->removeTarget(I)Landroidx/transition/Transition;

    move-result-object v3

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->removeTarget(I)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "target":Landroid/view/View;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 315
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v3

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "target":Ljava/lang/Class;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 324
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    move-result-object v3

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 333
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    move-result-object v3

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public removeTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;
    .locals 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "transition":Landroidx/transition/Transition;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 398
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 399
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public resume(Landroid/view/View;)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 561
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 562
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 563
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/TransitionSet;->start()V

    .line 483
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/transition/TransitionSet;->end()V

    .line 484
    .line 510
    :goto_0
    return-void

    .line 486
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroidx/transition/TransitionSet;->setupStartEndListeners()V

    .line 487
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    if-nez v4, :cond_3

    .line 490
    const/4 v4, 0x1

    move v1, v4

    .local v1, "i":I
    :goto_1
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 491
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v2, v4

    .line 492
    .local v2, "previousTransition":Landroidx/transition/Transition;
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v3, v4

    .line 493
    .local v3, "nextTransition":Landroidx/transition/Transition;
    move-object v4, v2

    new-instance v5, Landroidx/transition/TransitionSet$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/transition/TransitionSet$1;-><init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    move-result-object v4

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    .end local v2    # "previousTransition":Landroidx/transition/Transition;
    .end local v3    # "nextTransition":Landroidx/transition/Transition;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v1, v4

    .line 502
    .local v1, "firstTransition":Landroidx/transition/Transition;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 503
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/transition/Transition;->runAnimators()V

    .line 505
    .line 510
    .end local v1    # "firstTransition":Landroidx/transition/Transition;
    :cond_2
    goto :goto_0

    .line 506
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_2
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v2, v4

    .line 507
    .local v2, "childTransition":Landroidx/transition/Transition;
    move-object v4, v2

    invoke-virtual {v4}, Landroidx/transition/Transition;->runAnimators()V

    .line 508
    goto :goto_2
.end method

.method setCanRemoveViews(Z)V
    .locals 6

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    .local v1, "canRemoveViews":Z
    move-object v4, v0

    move v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 602
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 603
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 604
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/transition/Transition;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public setDuration(J)Landroidx/transition/TransitionSet;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 231
    move-object v1, p0

    .local v1, "this":Landroidx/transition/TransitionSet;
    move-wide v2, p1

    .local v2, "duration":J
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v6

    .line 232
    move-object v6, v1

    iget-wide v6, v6, Landroidx/transition/TransitionSet;->mDuration:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 233
    move-object v6, v1

    iget-object v6, v6, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 234
    .local v4, "numTransitions":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 235
    move-object v6, v1

    iget-object v6, v6, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v6

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 238
    .end local v4    # "numTransitions":I
    .end local v5    # "i":I
    :cond_0
    move-object v6, v1

    move-object v1, v6

    .end local v1    # "this":Landroidx/transition/TransitionSet;
    return-object v1
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 8

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "epicenterCallback":Landroidx/transition/Transition$EpicenterCallback;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 621
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 622
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 623
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 624
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    .line 623
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 4
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;
    .locals 8
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 251
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 252
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 253
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 254
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v4

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionSet;

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public setOrdering(I)Landroidx/transition/TransitionSet;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move v1, p1

    .local v1, "ordering":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 140
    new-instance v2, Landroid/util/AndroidRuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :pswitch_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 135
    .line 143
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0

    .line 137
    .restart local v0    # "this":Landroidx/transition/TransitionSet;
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    .line 138
    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 7

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "pathMotion":Landroidx/transition/PathMotion;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 383
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 384
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 385
    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 8

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "propagation":Landroidx/transition/TransitionPropagation;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 611
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroidx/transition/TransitionSet;->mChangeFlags:I

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroidx/transition/TransitionSet;->mChangeFlags:I

    .line 612
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 613
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 614
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/TransitionSet;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/TransitionSet;
    .locals 6

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;

    move-result-object v4

    .line 592
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    .line 593
    .local v2, "numTransitions":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 594
    move-object v4, v0

    iget-object v4, v4, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;

    move-result-object v4

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public bridge synthetic setStartDelay(J)Landroidx/transition/Transition;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroidx/transition/TransitionSet;->setStartDelay(J)Landroidx/transition/TransitionSet;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method public setStartDelay(J)Landroidx/transition/TransitionSet;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-wide v1, p1

    .local v1, "startDelay":J
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionSet;

    move-object v0, v3

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Landroidx/transition/TransitionSet;
    move-object v1, p1

    .local v1, "indent":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 631
    .local v2, "result":Ljava/lang/String;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 631
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 634
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Landroidx/transition/TransitionSet;
    return-object v0
.end method
