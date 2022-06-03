.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$Builder;
    }
.end annotation


# static fields
.field private static final EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field private static final TAG:Ljava/lang/String; = "RemoteInput"


# instance fields
.field private final mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Z",
            "Landroid/os/Bundle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, p1

    .local v1, "resultKey":Ljava/lang/String;
    move-object v2, p2

    .local v2, "label":Ljava/lang/CharSequence;
    move-object v3, p3

    .local v3, "choices":[Ljava/lang/CharSequence;
    move v4, p4

    .local v4, "allowFreeFormTextInput":Z
    move-object v5, p5

    .local v5, "extras":Landroid/os/Bundle;
    move-object v6, p6

    .local v6, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 62
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 63
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 64
    move-object v7, v0

    move v8, v4

    iput-boolean v8, v7, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 65
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 66
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    .line 67
    return-void
.end method

.method public static addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "remoteInput":Landroidx/core/app/RemoteInput;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, p2

    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_0

    .line 398
    move-object v9, v0

    invoke-static {v9}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    invoke-static {v9, v10, v11}, Landroid/app/RemoteInput;->addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 422
    :goto_0
    return-void

    .line 399
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_5

    .line 400
    move-object v9, v1

    invoke-static {v9}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    move-object v3, v9

    .line 401
    .local v3, "clipDataIntent":Landroid/content/Intent;
    move-object v9, v3

    if-nez v9, :cond_1

    .line 402
    new-instance v9, Landroid/content/Intent;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v3, v9

    .line 404
    :cond_1
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v5, v9

    .line 405
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/Uri;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .line 406
    .local v6, "mimeType":Ljava/lang/String;
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object v7, v9

    .line 407
    .local v7, "uri":Landroid/net/Uri;
    move-object v9, v6

    if-nez v9, :cond_2

    .line 408
    goto :goto_1

    .line 410
    :cond_2
    move-object v9, v3

    move-object v10, v6

    .line 411
    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    move-object v8, v9

    .line 412
    .local v8, "resultsBundle":Landroid/os/Bundle;
    move-object v9, v8

    if-nez v9, :cond_3

    .line 413
    new-instance v9, Landroid/os/Bundle;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v8, v9

    .line 415
    :cond_3
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object v9, v3

    move-object v10, v6

    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    .line 417
    goto :goto_1

    .line 418
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/Uri;>;"
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "resultsBundle":Landroid/os/Bundle;
    :cond_4
    move-object v9, v1

    const-string/jumbo v10, "android.remoteinput.results"

    move-object v11, v3

    invoke-static {v10, v11}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 419
    goto/16 :goto_0

    .line 420
    .end local v3    # "clipDataIntent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v9, "RemoteInput"

    const-string/jumbo v10, "RemoteInput is only supported from API Level 16"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0
.end method

.method public static addResultsToIntent([Landroidx/core/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "remoteInputs":[Landroidx/core/app/RemoteInput;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object/from16 v2, p2

    .local v2, "results":Landroid/os/Bundle;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_0

    .line 339
    move-object v10, v0

    invoke-static {v10}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v10

    move-object v11, v1

    move-object v12, v2

    invoke-static {v10, v11, v12}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 385
    :goto_0
    return-void

    .line 340
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x14

    if-lt v10, v11, :cond_4

    .line 344
    move-object v10, v1

    .line 345
    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v10

    move-object v3, v10

    .line 346
    .local v3, "existingTextResults":Landroid/os/Bundle;
    move-object v10, v3

    if-nez v10, :cond_2

    .line 347
    move-object v10, v2

    move-object v3, v10

    .line 351
    :goto_1
    move-object v10, v0

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_2
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_3

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 353
    .local v7, "input":Landroidx/core/app/RemoteInput;
    move-object v10, v1

    move-object v11, v7

    .line 355
    invoke-virtual {v11}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v11

    .line 354
    invoke-static {v10, v11}, Landroidx/core/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    move-object v8, v10

    .line 356
    .local v8, "existingDataResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    const/4 v10, 0x1

    new-array v10, v10, [Landroidx/core/app/RemoteInput;

    move-object v9, v10

    .line 357
    .local v9, "arr":[Landroidx/core/app/RemoteInput;
    move-object v10, v9

    const/4 v11, 0x0

    move-object v12, v7

    aput-object v12, v10, v11

    .line 358
    move-object v10, v9

    .line 359
    invoke-static {v10}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v10

    move-object v11, v1

    move-object v12, v3

    .line 358
    invoke-static {v10, v11, v12}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 360
    move-object v10, v8

    if-eqz v10, :cond_1

    .line 361
    move-object v10, v7

    move-object v11, v1

    move-object v12, v8

    invoke-static {v10, v11, v12}, Landroidx/core/app/RemoteInput;->addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 351
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 349
    .end local v7    # "input":Landroidx/core/app/RemoteInput;
    .end local v8    # "existingDataResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    .end local v9    # "arr":[Landroidx/core/app/RemoteInput;
    :cond_2
    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    .line 364
    :cond_3
    goto :goto_0

    .end local v3    # "existingTextResults":Landroid/os/Bundle;
    :cond_4
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_9

    .line 365
    move-object v10, v1

    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    move-object v3, v10

    .line 366
    .local v3, "clipDataIntent":Landroid/content/Intent;
    move-object v10, v3

    if-nez v10, :cond_5

    .line 367
    new-instance v10, Landroid/content/Intent;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    move-object v3, v10

    .line 369
    :cond_5
    move-object v10, v3

    const-string/jumbo v11, "android.remoteinput.resultsData"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    move-object v4, v10

    .line 370
    .local v4, "resultsBundle":Landroid/os/Bundle;
    move-object v10, v4

    if-nez v10, :cond_6

    .line 371
    new-instance v10, Landroid/os/Bundle;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v4, v10

    .line 373
    :cond_6
    move-object v10, v0

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_3
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_8

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 374
    .local v8, "remoteInput":Landroidx/core/app/RemoteInput;
    move-object v10, v2

    move-object v11, v8

    invoke-virtual {v11}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    .line 375
    .local v9, "result":Ljava/lang/Object;
    move-object v10, v9

    instance-of v10, v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_7

    .line 376
    move-object v10, v4

    move-object v11, v8

    .line 377
    invoke-virtual {v11}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v11

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    .line 376
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 373
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 380
    .end local v8    # "remoteInput":Landroidx/core/app/RemoteInput;
    .end local v9    # "result":Ljava/lang/Object;
    :cond_8
    move-object v10, v3

    const-string/jumbo v11, "android.remoteinput.resultsData"

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v10

    .line 381
    move-object v10, v1

    const-string/jumbo v11, "android.remoteinput.results"

    move-object v12, v3

    invoke-static {v11, v12}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 382
    goto/16 :goto_0

    .line 383
    .end local v3    # "clipDataIntent":Landroid/content/Intent;
    .end local v4    # "resultsBundle":Landroid/os/Bundle;
    :cond_9
    const-string/jumbo v10, "RemoteInput"

    const-string/jumbo v11, "RemoteInput is only supported from API Level 16"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_0
.end method

.method static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "src":Landroidx/core/app/RemoteInput;
    new-instance v1, Landroid/app/RemoteInput$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 443
    invoke-virtual {v2}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    move-object v2, v0

    .line 444
    invoke-virtual {v2}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    move-object v2, v0

    .line 445
    invoke-virtual {v2}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    move-object v2, v0

    .line 446
    invoke-virtual {v2}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "src":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "srcArray":[Landroidx/core/app/RemoteInput;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 431
    const/4 v3, 0x0

    move-object v0, v3

    .line 437
    .end local v0    # "srcArray":[Landroidx/core/app/RemoteInput;
    .local v1, "result":[Landroid/app/RemoteInput;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 433
    .end local v1    # "result":[Landroid/app/RemoteInput;
    .end local v2    # "i":I
    .restart local v0    # "srcArray":[Landroidx/core/app/RemoteInput;
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [Landroid/app/RemoteInput;

    move-object v1, v3

    .line 434
    .restart local v1    # "result":[Landroid/app/RemoteInput;
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 435
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-object v5, v5, v6

    invoke-static {v5}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v5

    aput-object v5, v3, v4

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 437
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method private static getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    move-object v1, v3

    .line 453
    .local v1, "clipData":Landroid/content/ClipData;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 454
    const/4 v3, 0x0

    move-object v0, v3

    .line 463
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 456
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    move-object v2, v3

    .line 457
    .local v2, "clipDescription":Landroid/content/ClipDescription;
    move-object v3, v2

    const-string/jumbo v4, "text/vnd.android.intent"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 458
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 460
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    const-string/jumbo v4, "android.remoteinput.results"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 461
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 463
    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p1

    .local v1, "remoteInputResultKey":Ljava/lang/String;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_0

    .line 273
    move-object v10, v0

    move-object v11, v1

    invoke-static {v10, v11}, Landroid/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    move-object v0, v10

    .line 298
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 274
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_8

    .line 275
    move-object v10, v0

    invoke-static {v10}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    move-object v2, v10

    .line 276
    .local v2, "clipDataIntent":Landroid/content/Intent;
    move-object v10, v2

    if-nez v10, :cond_1

    .line 277
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 279
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v3, v10

    .line 280
    .local v3, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    move-object v10, v2

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    move-object v4, v10

    .line 281
    .local v4, "extras":Landroid/os/Bundle;
    move-object v10, v4

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :cond_2
    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 282
    .local v6, "key":Ljava/lang/String;
    move-object v10, v6

    const-string/jumbo v11, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 283
    move-object v10, v6

    const-string/jumbo v11, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 284
    .local v7, "mimeType":Ljava/lang/String;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 285
    goto :goto_1

    .line 287
    :cond_3
    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    move-object v8, v10

    .line 288
    .local v8, "bundle":Landroid/os/Bundle;
    move-object v10, v8

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 289
    .local v9, "uriStr":Ljava/lang/String;
    move-object v10, v9

    if-eqz v10, :cond_2

    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 290
    goto :goto_1

    .line 292
    :cond_4
    move-object v10, v3

    move-object v11, v7

    move-object v12, v9

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 294
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "uriStr":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 295
    .end local v6    # "key":Ljava/lang/String;
    :cond_6
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    :goto_2
    move-object v0, v10

    goto/16 :goto_0

    :cond_7
    move-object v10, v3

    goto :goto_2

    .line 297
    .end local v2    # "clipDataIntent":Landroid/content/Intent;
    .end local v3    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_8
    const-string/jumbo v10, "RemoteInput"

    const-string/jumbo v11, "RemoteInput is only supported from API Level 16"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 298
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0
.end method

.method private static getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "mimeType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "mimeType":Ljava/lang/String;
    return-object v0
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 312
    move-object v2, v0

    invoke-static {v2}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 321
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 313
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 314
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 315
    .local v1, "clipDataIntent":Landroid/content/Intent;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 316
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 318
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.remoteinput.resultsData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v0, v2

    goto :goto_0

    .line 320
    .end local v1    # "clipDataIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "RemoteInput"

    const-string/jumbo v3, "RemoteInput is only supported from API Level 16"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 321
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return v0
.end method

.method public getAllowedDataTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return-object v0
.end method

.method public isDataOnly()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/RemoteInput;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 102
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    .line 103
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 104
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/RemoteInput;
    return v0

    .restart local v0    # "this":Landroidx/core/app/RemoteInput;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
