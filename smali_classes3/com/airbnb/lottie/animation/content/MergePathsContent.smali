.class public Lcom/airbnb/lottie/animation/content/MergePathsContent;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/content/GreedyContent;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final firstPath:Landroid/graphics/Path;

.field private final mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final pathContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final remainderPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/MergePaths;)V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    move-object v1, p1

    .local v1, "mergePaths":Lcom/airbnb/lottie/model/content/MergePaths;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 16
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 17
    move-object v2, v0

    new-instance v3, Landroid/graphics/Path;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    .line 20
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 25
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Merge paths are not supported pre-KitKat."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/content/MergePaths;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->name:Ljava/lang/String;

    .line 28
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    .line 29
    return-void
.end method

.method private addPaths()V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v3}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private opFirstPathWithRest(Landroid/graphics/Path$Op;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    move-object v1, p1

    .local v1, "op":Landroid/graphics/Path$Op;
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 91
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 93
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v2, v7

    .local v2, "i":I
    :goto_0
    move v7, v2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    .line 94
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    move v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/PathContent;

    move-object v3, v7

    .line 96
    .local v3, "content":Lcom/airbnb/lottie/animation/content/PathContent;
    move-object v7, v3

    instance-of v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;

    if-eqz v7, :cond_1

    .line 97
    move-object v7, v3

    check-cast v7, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 98
    .local v4, "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/PathContent;>;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "j":I
    :goto_1
    move v7, v5

    if-ltz v7, :cond_0

    .line 99
    move-object v7, v4

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v7}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    move-object v6, v7

    .line 100
    .local v6, "path":Landroid/graphics/Path;
    move-object v7, v6

    move-object v8, v3

    check-cast v8, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 101
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 98
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 103
    .line 93
    .end local v4    # "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/PathContent;>;"
    .end local v5    # "j":I
    .end local v6    # "path":Landroid/graphics/Path;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 104
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    move-object v8, v3

    invoke-interface {v8}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_2

    .line 108
    .end local v3    # "content":Lcom/airbnb/lottie/animation/content/PathContent;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/PathContent;

    move-object v2, v7

    .line 109
    .local v2, "lastContent":Lcom/airbnb/lottie/animation/content/PathContent;
    move-object v7, v2

    instance-of v7, v7, Lcom/airbnb/lottie/animation/content/ContentGroup;

    if-eqz v7, :cond_4

    .line 110
    move-object v7, v2

    check-cast v7, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 111
    .local v3, "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/PathContent;>;"
    const/4 v7, 0x0

    move v4, v7

    .local v4, "j":I
    :goto_3
    move v7, v4

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 112
    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v7}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    move-object v5, v7

    .line 113
    .local v5, "path":Landroid/graphics/Path;
    move-object v7, v5

    move-object v8, v2

    check-cast v8, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 114
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 116
    .line 120
    .end local v3    # "pathList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/PathContent;>;"
    .end local v4    # "j":I
    .end local v5    # "path":Landroid/graphics/Path;
    :cond_3
    :goto_4
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    move-object v9, v0

    iget-object v9, v9, Lcom/airbnb/lottie/animation/content/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    move-object v10, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v7

    .line 121
    return-void

    .line 117
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/animation/content/MergePathsContent;->firstPath:Landroid/graphics/Path;

    move-object v8, v2

    invoke-interface {v8}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_4
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    move-object v1, p1

    .local v1, "contents":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/airbnb/lottie/animation/content/Content;>;"
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    move-object v2, v3

    .line 37
    .local v2, "content":Lcom/airbnb/lottie/animation/content/Content;
    move-object v3, v2

    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v3, :cond_1

    .line 38
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 39
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 41
    :cond_1
    goto :goto_1

    .line 42
    .end local v2    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/MergePathsContent;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 53
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/MergePaths;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    .line 75
    .end local v0    # "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    :cond_0
    sget-object v1, Lcom/airbnb/lottie/animation/content/MergePathsContent$1;->$SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode:[I

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/model/content/MergePaths;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/MergePaths;->getMode()Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/MergePathsContent;->path:Landroid/graphics/Path;

    move-object v0, v1

    goto :goto_0

    .line 59
    :pswitch_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->addPaths()V

    .line 60
    goto :goto_1

    .line 62
    :pswitch_1
    move-object v1, v0

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 63
    goto :goto_1

    .line 65
    :pswitch_2
    move-object v1, v0

    sget-object v2, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 66
    goto :goto_1

    .line 68
    :pswitch_3
    move-object v1, v0

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    .line 69
    goto :goto_1

    .line 71
    :pswitch_4
    move-object v1, v0

    sget-object v2, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/content/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/animation/content/MergePathsContent;
    move-object v1, p1

    .local v1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    move-object v2, p2

    .local v2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 46
    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/animation/content/MergePathsContent;->pathContents:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lcom/airbnb/lottie/animation/content/PathContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
