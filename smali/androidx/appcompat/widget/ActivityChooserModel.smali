.class Landroidx/appcompat/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;,
        Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;,
        Landroidx/appcompat/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field static final LOG_TAG:Ljava/lang/String;

.field static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

.field mCanReadHistoricalData:Z

.field final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    const-class v0, Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "historyFileName":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Landroid/database/DataSetObservable;-><init>()V

    .line 229
    move-object v3, v0

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 234
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 239
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 259
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    .line 264
    move-object v3, v0

    const/16 v4, 0x32

    iput v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 274
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 285
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 293
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 298
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 347
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 348
    move-object v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, ".xml"

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private addHistoricalRecord(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 5

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, p1

    .local v1, "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 728
    .local v2, "added":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 729
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 730
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 731
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 732
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v3

    .line 733
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    .line 735
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    return v0
.end method

.method private ensureConsistentState()V
    .locals 4

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v2

    move v1, v2

    .line 655
    .local v1, "stateChanged":Z
    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 656
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 657
    move v2, v1

    if-eqz v2, :cond_0

    .line 658
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v2

    .line 659
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    .line 661
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/widget/ActivityChooserModel;
    .locals 10

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "historyFileName":Ljava/lang/String;
    sget-object v5, Landroidx/appcompat/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    .line 331
    :try_start_0
    sget-object v5, Landroidx/appcompat/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActivityChooserModel;

    move-object v3, v5

    .line 332
    .local v3, "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 333
    new-instance v5, Landroidx/appcompat/widget/ActivityChooserModel;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    .line 334
    sget-object v5, Landroidx/appcompat/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 336
    :cond_0
    move-object v5, v3

    move-object v6, v2

    monitor-exit v6

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 337
    .end local v3    # "dataModel":Landroidx/appcompat/widget/ActivityChooserModel;
    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 10

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 688
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 689
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 690
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    .line 691
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 692
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    .line 693
    .local v2, "resolveInfoCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 694
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    move-object v4, v5

    .line 695
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v6, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 693
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 697
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 699
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :goto_1
    return v0

    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "resolveInfoCount":I
    .end local v3    # "i":I
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 10

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v1, :cond_0

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const-string/jumbo v3, "No preceding call to #readHistoricalData"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v1, :cond_1

    .line 570
    .line 577
    :goto_0
    return-void

    .line 572
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 573
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    new-instance v1, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroidx/appcompat/widget/ActivityChooserModel;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v6, v4, v5

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 577
    :cond_2
    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 6

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int/2addr v4, v5

    move v1, v4

    .line 743
    .local v1, "pruneCount":I
    move v4, v1

    if-gtz v4, :cond_0

    .line 744
    .line 753
    :goto_0
    return-void

    .line 746
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 747
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 748
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object v3, v4

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 753
    :cond_1
    goto :goto_0
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 711
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 713
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 714
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 715
    const/4 v1, 0x1

    move v0, v1

    .line 717
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private readHistoricalDataImpl()V
    .locals 21

    .prologue
    .line 964
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    const/4 v14, 0x0

    move-object v2, v14

    .line 966
    .local v2, "fis":Ljava/io/FileInputStream;
    move-object v14, v1

    :try_start_0
    iget-object v14, v14, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object v15, v1

    iget-object v15, v15, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v2, v14

    .line 972
    .line 974
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    move-object v3, v14

    .line 975
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v14, v3

    move-object v15, v2

    const-string/jumbo v16, "UTF-8"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 977
    const/4 v14, 0x0

    move v4, v14

    .line 978
    .local v4, "type":I
    :goto_0
    move v14, v4

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move v14, v4

    const/4 v15, 0x2

    if-eq v14, v15, :cond_0

    .line 979
    move-object v14, v3

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v4, v14

    goto :goto_0

    .line 967
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 1032
    :goto_1
    return-void

    .line 982
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_0
    const-string/jumbo v14, "historical-records"

    move-object v15, v3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 983
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string/jumbo v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    :catch_1
    move-exception v14

    move-object v3, v14

    .line 1020
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v14, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error reading historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .line 1024
    move-object v14, v2

    if-eqz v14, :cond_1

    .line 1026
    move-object v14, v2

    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1029
    .line 1032
    .end local v3    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    goto :goto_1

    .line 987
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    :cond_2
    move-object v14, v1

    :try_start_4
    iget-object v14, v14, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    move-object v5, v14

    .line 988
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object v14, v5

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 991
    :cond_3
    :goto_3
    move-object v14, v3

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    move v4, v14

    .line 992
    move v14, v4

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 993
    .line 1024
    move-object v14, v2

    if-eqz v14, :cond_1

    .line 1026
    move-object v14, v2

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1029
    goto :goto_2

    .line 995
    :cond_4
    move v14, v4

    const/4 v15, 0x3

    if-eq v14, v15, :cond_3

    move v14, v4

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    .line 996
    goto :goto_3

    .line 998
    :cond_5
    move-object v14, v3

    :try_start_6
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 999
    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "historical-record"

    move-object v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1000
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string/jumbo v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1021
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v6    # "nodeName":Ljava/lang/String;
    :catch_2
    move-exception v14

    move-object v3, v14

    .line 1022
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_7
    sget-object v14, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error reading historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v14

    .line 1024
    move-object v14, v2

    if-eqz v14, :cond_1

    .line 1026
    move-object v14, v2

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1029
    goto :goto_2

    .line 1003
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "type":I
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v6    # "nodeName":Ljava/lang/String;
    :cond_6
    move-object v14, v3

    const/4 v15, 0x0

    :try_start_9
    const-string/jumbo v16, "activity"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 1004
    .local v7, "activity":Ljava/lang/String;
    move-object v14, v3

    const/4 v15, 0x0

    const-string/jumbo v16, "time"

    .line 1005
    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide v8, v14

    .line 1006
    .local v8, "time":J
    move-object v14, v3

    const/4 v15, 0x0

    const-string/jumbo v16, "weight"

    .line 1007
    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    move v10, v14

    .line 1008
    .local v10, "weight":F
    new-instance v14, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move/from16 v19, v10

    invoke-direct/range {v15 .. v19}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    move-object v11, v14

    .line 1009
    .local v11, "readRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    move-object v14, v5

    move-object v15, v11

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v14

    .line 1014
    goto/16 :goto_3

    .line 1027
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "weight":F
    .end local v11    # "readRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    :catch_3
    move-exception v14

    move-object v3, v14

    .line 1029
    goto/16 :goto_2

    .line 1027
    .end local v4    # "type":I
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v14

    move-object v3, v14

    .line 1029
    goto/16 :goto_2

    .line 1027
    .local v3, "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v14

    move-object v3, v14

    .line 1029
    goto/16 :goto_2

    .line 1024
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    move-object v12, v14

    move-object v14, v2

    if-eqz v14, :cond_7

    .line 1026
    move-object v14, v2

    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1029
    :cond_7
    :goto_4
    move-object v14, v12

    throw v14

    .line 1027
    :catch_6
    move-exception v14

    move-object v13, v14

    goto :goto_4
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 5

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 672
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 674
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 673
    invoke-interface {v1, v2, v3, v4}, Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 675
    const/4 v1, 0x1

    move v0, v1

    .line 677
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 16

    .prologue
    .line 457
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move/from16 v1, p1

    .local v1, "index":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v2, v10

    monitor-enter v9

    .line 458
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-nez v9, :cond_0

    .line 459
    const/4 v9, 0x0

    move-object v10, v2

    monitor-exit v10

    move-object v0, v9

    .line 487
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :goto_0
    return-object v0

    .line 462
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_0
    move-object v9, v0

    invoke-direct {v9}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 464
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v3, v9

    .line 466
    .local v3, "chosenActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v9, Landroid/content/ComponentName;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v12, v3

    iget-object v12, v12, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 470
    .local v4, "chosenName":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v5, v9

    .line 471
    .local v5, "choiceIntent":Landroid/content/Intent;
    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 473
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v9, :cond_1

    .line 475
    new-instance v9, Landroid/content/Intent;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v6, v9

    .line 476
    .local v6, "choiceIntentCopy":Landroid/content/Intent;
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    move-object v10, v0

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroidx/appcompat/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v9

    move v7, v9

    .line 478
    .local v7, "handled":Z
    move v9, v7

    if-eqz v9, :cond_1

    .line 479
    const/4 v9, 0x0

    move-object v10, v2

    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    .line 483
    .end local v6    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v7    # "handled":Z
    :cond_1
    new-instance v9, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    move-object v6, v9

    .line 485
    .local v6, "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->addHistoricalRecord(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z

    move-result v9

    .line 487
    move-object v9, v5

    move-object v10, v2

    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    .line 488
    .end local v3    # "chosenActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "choiceIntent":Landroid/content/Intent;
    .end local v6    # "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 7

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 411
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 412
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    return-object v0

    .line 413
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getActivityCount()I
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 396
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 397
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    return v0

    .line 398
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 11

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, p1

    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    move-object v2, v9

    monitor-enter v8

    .line 425
    move-object v8, v0

    :try_start_0
    invoke-direct {v8}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 426
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move-object v3, v8

    .line 427
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v4, v8

    .line 428
    .local v4, "activityCount":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 429
    move-object v8, v3

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v6, v8

    .line 430
    .local v6, "currentActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v8, v6

    iget-object v8, v8, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v9, v1

    if-ne v8, v9, :cond_0

    .line 431
    move v8, v5

    move-object v9, v2

    monitor-exit v9

    move v0, v8

    .line 434
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    .end local v6    # "currentActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :goto_1
    return v0

    .line 428
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    .restart local v6    # "currentActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 434
    .end local v6    # "currentActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v8, -0x1

    move-object v9, v2

    monitor-exit v9

    move v0, v8

    goto :goto_1

    .line 435
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v4    # "activityCount":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 513
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 514
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 518
    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :goto_0
    return-object v0

    .line 517
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 518
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getHistoryMaxSize()I
    .locals 6

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 631
    move-object v3, v0

    :try_start_0
    iget v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    return v0

    .line 632
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getHistorySize()I
    .locals 6

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 642
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 643
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    return v0

    .line 644
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 383
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    return-object v0

    .line 384
    .restart local v0    # "this":Landroidx/appcompat/widget/ActivityChooserModel;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public setActivitySorter(Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, p1

    .local v1, "activitySorter":Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 588
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 589
    move-object v4, v2

    monitor-exit v4

    .line 596
    :goto_0
    return-void

    .line 591
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mActivitySorter:Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;

    .line 592
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    .line 595
    :cond_1
    move-object v4, v2

    monitor-exit v4

    .line 596
    goto :goto_0

    .line 595
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setDefaultActivity(I)V
    .locals 16

    .prologue
    .line 532
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move/from16 v1, p1

    .local v1, "index":I
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v2, v10

    monitor-enter v9

    .line 533
    move-object v9, v0

    :try_start_0
    invoke-direct {v9}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 535
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v3, v9

    .line 536
    .local v3, "newDefaultActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v4, v9

    .line 539
    .local v4, "oldDefaultActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    move-object v9, v4

    if-eqz v9, :cond_0

    .line 541
    move-object v9, v4

    iget v9, v9, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    move-object v10, v3

    iget v10, v10, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v9, v10

    move v5, v9

    .line 547
    .local v5, "weight":F
    :goto_0
    new-instance v9, Landroid/content/ComponentName;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    iget-object v11, v11, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v12, v3

    iget-object v12, v12, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 550
    .local v6, "defaultName":Landroid/content/ComponentName;
    new-instance v9, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    move-object v7, v9

    .line 552
    .local v7, "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/ActivityChooserModel;->addHistoricalRecord(Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;)Z

    move-result v9

    .line 553
    move-object v9, v2

    monitor-exit v9

    .line 554
    return-void

    .line 544
    .end local v5    # "weight":F
    .end local v6    # "defaultName":Landroid/content/ComponentName;
    .end local v7    # "historicalRecord":Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v9

    .restart local v5    # "weight":F
    goto :goto_0

    .line 553
    .end local v3    # "newDefaultActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "oldDefaultActivity":Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v5    # "weight":F
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public setHistoryMaxSize(I)V
    .locals 7

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move v1, p1

    .local v1, "historyMaxSize":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 613
    move-object v4, v0

    :try_start_0
    iget v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 614
    move-object v4, v2

    monitor-exit v4

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 617
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 618
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 619
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->notifyChanged()V

    .line 621
    :cond_1
    move-object v4, v2

    monitor-exit v4

    .line 622
    goto :goto_0

    .line 621
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 367
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 368
    move-object v4, v2

    monitor-exit v4

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 371
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 372
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 373
    move-object v4, v2

    monitor-exit v4

    .line 374
    goto :goto_0

    .line 373
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setOnChooseActivityListener(Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 7

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserModel;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 498
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 499
    move-object v4, v2

    monitor-exit v4

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
