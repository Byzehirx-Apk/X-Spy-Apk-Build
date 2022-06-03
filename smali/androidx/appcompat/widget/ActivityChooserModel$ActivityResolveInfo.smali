.class public final Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v1, p1

    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 870
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 871
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .locals 4

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v1, p1

    .local v1, "another":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v2, v1

    iget v2, v2, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 880
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 881
    const/4 v3, 0x1

    move v0, v3

    .line 893
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :goto_0
    return v0

    .line 883
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 884
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 886
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 887
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 889
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v2, v3

    .line 890
    .local v2, "other":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move-object v4, v2

    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 891
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 893
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    const/16 v1, 0x1f

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 903
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 904
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 905
    move-object v3, v2

    const-string/jumbo v4, "resolveInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 906
    move-object v3, v2

    const-string/jumbo v4, "; weight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/math/BigDecimal;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget v6, v6, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 907
    move-object v3, v2

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 908
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    return-object v1
.end method
