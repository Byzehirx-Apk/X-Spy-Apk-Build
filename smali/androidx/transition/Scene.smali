.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroidx/transition/Scene;->mLayoutId:I

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move v2, p2

    .local v2, "layoutId":I
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroidx/transition/Scene;->mLayoutId:I

    .line 109
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/transition/Scene;->mContext:Landroid/content/Context;

    .line 110
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 111
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroidx/transition/Scene;->mLayoutId:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "layout":Landroid/view/View;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/transition/Scene;->mLayoutId:I

    .line 125
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 126
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    .line 127
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    sget v2, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Scene;

    move-object v0, v1

    .end local v0    # "view":Landroid/view/View;
    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/transition/Scene;
    .locals 11
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "sceneRoot":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "layoutId":I
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v5, v0

    sget v6, Landroidx/transition/R$id;->transition_scene_layoutid_cache:I

    .line 64
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move-object v3, v5

    .line 65
    .local v3, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/transition/Scene;>;"
    move-object v5, v3

    if-nez v5, :cond_0

    .line 66
    new-instance v5, Landroid/util/SparseArray;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v5

    .line 67
    move-object v5, v0

    sget v6, Landroidx/transition/R$id;->transition_scene_layoutid_cache:I

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 69
    :cond_0
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Scene;

    move-object v4, v5

    .line 70
    .local v4, "scene":Landroidx/transition/Scene;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 71
    move-object v5, v4

    move-object v0, v5

    .line 75
    .end local v0    # "sceneRoot":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 73
    .restart local v0    # "sceneRoot":Landroid/view/ViewGroup;
    :cond_1
    new-instance v5, Landroidx/transition/Scene;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroidx/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    move-object v4, v5

    .line 74
    move-object v5, v3

    move v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method static setCurrentScene(Landroid/view/View;Landroidx/transition/Scene;)V
    .locals 5

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "scene":Landroidx/transition/Scene;
    move-object v2, v0

    sget v3, Landroidx/transition/R$id;->transition_current_scene:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, v0

    iget v1, v1, Landroidx/transition/Scene;->mLayoutId:I

    if-gtz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    move-object v1, v0

    iget v1, v1, Landroidx/transition/Scene;->mLayoutId:I

    if-lez v1, :cond_3

    .line 173
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/transition/Scene;->mLayoutId:I

    move-object v3, v0

    iget-object v3, v3, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 180
    :cond_1
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 181
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    move-object v2, v0

    invoke-static {v1, v2}, Landroidx/transition/Scene;->setCurrentScene(Landroid/view/View;Landroidx/transition/Scene;)V

    .line 185
    return-void

    .line 175
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroidx/transition/Scene;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 150
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 151
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 154
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    move-object v0, v1

    .end local v0    # "this":Landroidx/transition/Scene;
    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, v0

    iget v1, v1, Landroidx/transition/Scene;->mLayoutId:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/transition/Scene;
    return v0

    .restart local v0    # "this":Landroidx/transition/Scene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 229
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/transition/Scene;
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 249
    return-void
.end method
