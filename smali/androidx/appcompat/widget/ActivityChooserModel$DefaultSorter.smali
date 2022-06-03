.class final Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 918
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 922
    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;
    move-object/from16 v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object/from16 v2, p2

    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    move-object/from16 v3, p3

    .local v3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    move-object v4, v12

    .line 929
    .local v4, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 931
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .line 932
    .local v5, "activityCount":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_0
    move v12, v6

    move v13, v5

    if-ge v12, v13, :cond_0

    .line 933
    move-object v12, v2

    move v13, v6

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v7, v12

    .line 934
    .local v7, "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v12, v7

    const/4 v13, 0x0

    iput v13, v12, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 935
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v7

    iget-object v14, v14, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v15, v7

    iget-object v15, v15, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    .line 938
    .local v8, "componentName":Landroid/content/ComponentName;
    move-object v12, v4

    move-object v13, v8

    move-object v14, v7

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 932
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 941
    .end local v7    # "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    :cond_0
    move-object v12, v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v6, v12

    .line 942
    .local v6, "lastShareIndex":I
    const/high16 v12, 0x3f800000    # 1.0f

    move v7, v12

    .line 943
    .local v7, "nextRecordWeight":F
    move v12, v6

    move v8, v12

    .local v8, "i":I
    :goto_1
    move v12, v8

    if-ltz v12, :cond_2

    .line 944
    move-object v12, v3

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object v9, v12

    .line 945
    .local v9, "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    move-object v12, v9

    iget-object v12, v12, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    move-object v10, v12

    .line 946
    .local v10, "componentName":Landroid/content/ComponentName;
    move-object v12, v4

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v11, v12

    .line 947
    .local v11, "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v12, v11

    if-eqz v12, :cond_1

    .line 948
    move-object v12, v11

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    iget v13, v13, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    move-object v14, v9

    iget v14, v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    move v15, v7

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 949
    move v12, v7

    const v13, 0x3f733333    # 0.95f

    mul-float/2addr v12, v13

    move v7, v12

    .line 943
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 953
    .end local v9    # "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "activity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_2
    move-object v12, v2

    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 960
    return-void
.end method
