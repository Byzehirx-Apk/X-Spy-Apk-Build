.class public Lcom/airbnb/lottie/model/content/MergePaths;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final mode:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/MergePaths;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "mode":Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    move v3, p3

    .local v3, "hidden":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/airbnb/lottie/model/content/MergePaths;->name:Ljava/lang/String;

    .line 45
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/airbnb/lottie/model/content/MergePaths;->mode:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 46
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/airbnb/lottie/model/content/MergePaths;->hidden:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getMode()Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/MergePaths;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/MergePaths;->mode:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/MergePaths;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/MergePaths;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/content/MergePaths;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/MergePaths;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/MergePaths;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/content/MergePaths;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/MergePaths;
    return v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/MergePaths;
    move-object v1, p1

    .local v1, "drawable":Lcom/airbnb/lottie/LottieDrawable;
    move-object v2, p2

    .local v2, "layer":Lcom/airbnb/lottie/model/layer/BaseLayer;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const-string/jumbo v3, "Animation contains merge paths but they are disabled."

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 64
    const/4 v3, 0x0

    move-object v0, v3

    .line 66
    .end local v0    # "this":Lcom/airbnb/lottie/model/content/MergePaths;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/content/MergePaths;
    :cond_0
    new-instance v3, Lcom/airbnb/lottie/animation/content/MergePathsContent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/animation/content/MergePathsContent;-><init>(Lcom/airbnb/lottie/model/content/MergePaths;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/content/MergePaths;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MergePaths{mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/content/MergePaths;->mode:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/content/MergePaths;
    return-object v0
.end method
