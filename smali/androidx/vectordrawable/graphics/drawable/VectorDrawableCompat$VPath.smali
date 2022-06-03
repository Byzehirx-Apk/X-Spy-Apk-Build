.class abstract Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1675
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;)V

    .line 1671
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1677
    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 4

    .prologue
    .line 1701
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, p1

    .local v1, "copy":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$1;)V

    .line 1671
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1702
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    .line 1703
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    iput v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    .line 1704
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-static {v3}, Landroidx/core/graphics/PathParser;->deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v3

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1705
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1723
    return-void
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 1719
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    return v0
.end method

.method public getPathData()[Landroidx/core/graphics/PathParser$PathDataNode;
    .locals 2

    .prologue
    .line 1732
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1715
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    return-object v0
.end method

.method public isClipPath()Z
    .locals 2

    .prologue
    .line 1726
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    return v0
.end method

.method public nodesToString([Landroidx/core/graphics/PathParser$PathDataNode;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1690
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, p1

    .local v1, "nodes":[Landroidx/core/graphics/PathParser$PathDataNode;
    const-string/jumbo v6, " "

    move-object v2, v6

    .line 1691
    .local v2, "result":Ljava/lang/String;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 1692
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    iget-char v7, v7, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1693
    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    move-object v4, v6

    .line 1694
    .local v4, "params":[F
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 1695
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    move v8, v5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1694
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1691
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1698
    .end local v4    # "params":[F
    .end local v5    # "j":I
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    return-object v0
.end method

.method public printVPath(I)V
    .locals 9

    .prologue
    .line 1680
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move v1, p1

    .local v1, "level":I
    const-string/jumbo v4, ""

    move-object v2, v4

    .line 1681
    .local v2, "indent":Ljava/lang/String;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 1682
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1681
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1684
    :cond_0
    const-string/jumbo v4, "VectorDrawableCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "current path is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pathData is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1685
    invoke-virtual {v6, v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->nodesToString([Landroidx/core/graphics/PathParser$PathDataNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1684
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1687
    return-void
.end method

.method public setPathData([Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 4

    .prologue
    .line 1737
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, p1

    .local v1, "nodes":[Landroidx/core/graphics/PathParser$PathDataNode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1739
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroidx/core/graphics/PathParser;->deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v3

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 1743
    :goto_0
    return-void

    .line 1741
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/PathParser;->updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V

    goto :goto_0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 4

    .prologue
    .line 1708
    move-object v0, p0

    .local v0, "this":Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
    move-object v1, p1

    .local v1, "path":Landroid/graphics/Path;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1709
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    if-eqz v2, :cond_0

    .line 1710
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1712
    :cond_0
    return-void
.end method
