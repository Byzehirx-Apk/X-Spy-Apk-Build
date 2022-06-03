.class public Landroidx/core/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/FileProvider$SimplePathStrategy;,
        Landroidx/core/content/FileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final TAG_EXTERNAL_MEDIA:Ljava/lang/String; = "external-media-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/core/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroidx/core/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 340
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "_size"

    aput-object v3, v1, v2

    sput-object v0, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/io/File;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 360
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, v0

    invoke-direct {v1}, Landroid/content/ContentProvider;-><init>()V

    .line 691
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 12

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "base":Ljava/io/File;
    move-object v1, p1

    .local v1, "segments":[Ljava/lang/String;
    move-object v7, v0

    move-object v2, v7

    .line 815
    .local v2, "cur":Ljava/io/File;
    move-object v7, v1

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 816
    .local v6, "segment":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 817
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v7

    .line 815
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 820
    .end local v6    # "segment":Ljava/lang/String;
    :cond_1
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "base":Ljava/io/File;
    return-object v0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "original":[Ljava/lang/Object;
    move v1, p1

    .local v1, "newLength":I
    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 831
    .local v2, "result":[Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "original":[Ljava/lang/Object;
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 8

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "original":[Ljava/lang/String;
    move v1, p1

    .local v1, "newLength":I
    move v3, v1

    new-array v3, v3, [Ljava/lang/String;

    move-object v2, v3

    .line 825
    .local v2, "result":[Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "original":[Ljava/lang/String;
    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    .locals 11

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "authority":Ljava/lang/String;
    sget-object v6, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 576
    :try_start_0
    sget-object v6, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 577
    .local v2, "strat":Landroidx/core/content/FileProvider$PathStrategy;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 579
    move-object v6, v0

    move-object v7, v1

    :try_start_1
    invoke-static {v6, v7}, Landroidx/core/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v2, v6

    .line 586
    .line 587
    :try_start_2
    sget-object v6, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 589
    :cond_0
    move-object v6, v3

    monitor-exit v6

    .line 590
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 580
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 581
    .local v4, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 589
    .end local v2    # "strat":Landroidx/core/content/FileProvider$PathStrategy;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v5

    throw v6

    .line 583
    .restart local v2    # "strat":Landroidx/core/content/FileProvider$PathStrategy;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 584
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "authority":Ljava/lang/String;
    move-object v2, p2

    .local v2, "file":Ljava/io/File;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object v4

    move-object v3, v4

    .line 418
    .local v3, "strategy":Landroidx/core/content/FileProvider$PathStrategy;
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Landroidx/core/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v2, "r"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    const/high16 v2, 0x10000000

    move v1, v2

    .line 810
    .local v1, "modeBits":I
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "mode":Ljava/lang/String;
    return v0

    .line 792
    .end local v1    # "modeBits":I
    .restart local v0    # "mode":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "w"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "wt"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    :cond_1
    const/high16 v2, 0x2c000000

    move v1, v2

    .restart local v1    # "modeBits":I
    goto :goto_0

    .line 796
    .end local v1    # "modeBits":I
    :cond_2
    const-string/jumbo v2, "wa"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    const/high16 v2, 0x2a000000

    move v1, v2

    .restart local v1    # "modeBits":I
    goto :goto_0

    .line 800
    .end local v1    # "modeBits":I
    :cond_3
    const-string/jumbo v2, "rw"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 801
    const/high16 v2, 0x38000000

    move v1, v2

    .restart local v1    # "modeBits":I
    goto :goto_0

    .line 803
    .end local v1    # "modeBits":I
    :cond_4
    const-string/jumbo v2, "rwt"

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 804
    const/high16 v2, 0x3c000000    # 0.0078125f

    move v1, v2

    .restart local v1    # "modeBits":I
    goto :goto_0

    .line 808
    .end local v1    # "modeBits":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 601
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "authority":Ljava/lang/String;
    new-instance v11, Landroidx/core/content/FileProvider$SimplePathStrategy;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v1

    invoke-direct {v12, v13}, Landroidx/core/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    move-object v2, v11

    .line 603
    .local v2, "strat":Landroidx/core/content/FileProvider$SimplePathStrategy;
    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object v12, v1

    const/16 v13, 0x80

    .line 604
    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v11

    move-object v3, v11

    .line 605
    .local v3, "info":Landroid/content/pm/ProviderInfo;
    move-object v11, v3

    move-object v12, v0

    .line 606
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "android.support.FILE_PROVIDER_PATHS"

    .line 605
    invoke-virtual {v11, v12, v13}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    move-object v4, v11

    .line 607
    .local v4, "in":Landroid/content/res/XmlResourceParser;
    move-object v11, v4

    if-nez v11, :cond_0

    .line 608
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string/jumbo v13, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 613
    :cond_0
    :goto_0
    move-object v11, v4

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move/from16 v18, v11

    move/from16 v11, v18

    move/from16 v12, v18

    move v5, v12

    .local v5, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 614
    move v11, v5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 615
    move-object v11, v4

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 617
    .local v6, "tag":Ljava/lang/String;
    move-object v11, v4

    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 618
    .local v7, "name":Ljava/lang/String;
    move-object v11, v4

    const/4 v12, 0x0

    const-string/jumbo v13, "path"

    invoke-interface {v11, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 620
    .local v8, "path":Ljava/lang/String;
    const/4 v11, 0x0

    move-object v9, v11

    .line 621
    .local v9, "target":Ljava/io/File;
    const-string/jumbo v11, "root-path"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 622
    sget-object v11, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    move-object v9, v11

    .line 647
    :cond_1
    :goto_1
    move-object v11, v9

    if-eqz v11, :cond_2

    .line 648
    move-object v11, v2

    move-object v12, v7

    move-object v13, v9

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v8

    aput-object v17, v15, v16

    invoke-static {v13, v14}, Landroidx/core/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroidx/core/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    .line 650
    :cond_2
    goto :goto_0

    .line 623
    :cond_3
    const-string/jumbo v11, "files-path"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 624
    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 625
    :cond_4
    const-string/jumbo v11, "cache-path"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 626
    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 627
    :cond_5
    const-string/jumbo v11, "external-path"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 628
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 629
    :cond_6
    const-string/jumbo v11, "external-files-path"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 630
    move-object v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v11

    move-object v10, v11

    .line 631
    .local v10, "externalFilesDirs":[Ljava/io/File;
    move-object v11, v10

    array-length v11, v11

    if-lez v11, :cond_7

    .line 632
    move-object v11, v10

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v9, v11

    .line 634
    :cond_7
    goto :goto_1

    .end local v10    # "externalFilesDirs":[Ljava/io/File;
    :cond_8
    const-string/jumbo v11, "external-cache-path"

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 635
    move-object v11, v0

    invoke-static {v11}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v11

    move-object v10, v11

    .line 636
    .local v10, "externalCacheDirs":[Ljava/io/File;
    move-object v11, v10

    array-length v11, v11

    if-lez v11, :cond_9

    .line 637
    move-object v11, v10

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v9, v11

    .line 639
    :cond_9
    goto/16 :goto_1

    .end local v10    # "externalCacheDirs":[Ljava/io/File;
    :cond_a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_1

    const-string/jumbo v11, "external-media-path"

    move-object v12, v6

    .line 640
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 641
    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v11

    move-object v10, v11

    .line 642
    .local v10, "externalMediaDirs":[Ljava/io/File;
    move-object v11, v10

    array-length v11, v11

    if-lez v11, :cond_1

    .line 643
    move-object v11, v10

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v9, v11

    goto/16 :goto_1

    .line 653
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "target":Ljava/io/File;
    .end local v10    # "externalMediaDirs":[Ljava/io/File;
    :cond_b
    move-object v11, v2

    move-object v0, v11

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "info":Landroid/content/pm/ProviderInfo;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 385
    move-object v3, v2

    iget-boolean v3, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v3, :cond_0

    .line 386
    new-instance v3, Ljava/lang/SecurityException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Provider must not be exported"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_0
    move-object v3, v2

    iget-boolean v3, v3, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v3, :cond_1

    .line 389
    new-instance v3, Ljava/lang/SecurityException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Provider must grant uri permissions"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 392
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 393
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "selection":Ljava/lang/String;
    move-object v3, p3

    .local v3, "selectionArgs":[Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    move-object v4, v5

    .line 542
    .local v4, "file":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Landroidx/core/content/FileProvider;
    return v0

    .restart local v0    # "this":Landroidx/core/content/FileProvider;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    move-object v7, v1

    invoke-interface {v6, v7}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v6

    move-object v2, v6

    .line 495
    .local v2, "file":Ljava/io/File;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v3, v6

    .line 496
    .local v3, "lastDot":I
    move v6, v3

    if-ltz v6, :cond_0

    .line 497
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 498
    .local v4, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 499
    .local v5, "mime":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 500
    move-object v6, v5

    move-object v0, v6

    .line 504
    .end local v0    # "this":Landroidx/core/content/FileProvider;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "mime":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/content/FileProvider;
    :cond_0
    const-string/jumbo v6, "application/octet-stream"

    move-object v0, v6

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "values":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "No external inserts"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/core/content/FileProvider;
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "mode":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    move-object v3, v5

    .line 565
    .local v3, "file":Ljava/io/File;
    move-object v5, v2

    invoke-static {v5}, Landroidx/core/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 566
    .local v4, "fileMode":I
    move-object v5, v3

    move v6, v4

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/content/FileProvider;
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 454
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object/from16 v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object/from16 v2, p2

    .local v2, "projection":[Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "selection":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "sortOrder":Ljava/lang/String;
    move-object v14, v0

    iget-object v14, v14, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    move-object v15, v1

    invoke-interface {v14, v15}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v14

    move-object v6, v14

    .line 456
    .local v6, "file":Ljava/io/File;
    move-object v14, v2

    if-nez v14, :cond_0

    .line 457
    sget-object v14, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    move-object v2, v14

    .line 460
    :cond_0
    move-object v14, v2

    array-length v14, v14

    new-array v14, v14, [Ljava/lang/String;

    move-object v7, v14

    .line 461
    .local v7, "cols":[Ljava/lang/String;
    move-object v14, v2

    array-length v14, v14

    new-array v14, v14, [Ljava/lang/Object;

    move-object v8, v14

    .line 462
    .local v8, "values":[Ljava/lang/Object;
    const/4 v14, 0x0

    move v9, v14

    .line 463
    .local v9, "i":I
    move-object v14, v2

    move-object v10, v14

    move-object v14, v10

    array-length v14, v14

    move v11, v14

    const/4 v14, 0x0

    move v12, v14

    :goto_0
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_3

    move-object v14, v10

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 464
    .local v13, "col":Ljava/lang/String;
    const-string/jumbo v14, "_display_name"

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 465
    move-object v14, v7

    move v15, v9

    const-string/jumbo v16, "_display_name"

    aput-object v16, v14, v15

    .line 466
    move-object v14, v8

    move v15, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 463
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 467
    :cond_2
    const-string/jumbo v14, "_size"

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 468
    move-object v14, v7

    move v15, v9

    const-string/jumbo v16, "_size"

    aput-object v16, v14, v15

    .line 469
    move-object v14, v8

    move v15, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    goto :goto_1

    .line 473
    .end local v13    # "col":Ljava/lang/String;
    :cond_3
    move-object v14, v7

    move v15, v9

    invoke-static {v14, v15}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 474
    move-object v14, v8

    move v15, v9

    invoke-static {v14, v15}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    .line 476
    new-instance v14, Landroid/database/MatrixCursor;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v7

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move-object v10, v14

    .line 477
    .local v10, "cursor":Landroid/database/MatrixCursor;
    move-object v14, v10

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 478
    move-object v14, v10

    move-object v0, v14

    .end local v0    # "this":Landroidx/core/content/FileProvider;
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/FileProvider;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "values":Landroid/content/ContentValues;
    move-object v3, p3

    .local v3, "selection":Ljava/lang/String;
    move-object v4, p4

    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "No external updates"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
