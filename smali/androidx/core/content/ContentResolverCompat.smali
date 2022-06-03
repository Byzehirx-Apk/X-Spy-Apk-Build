.class public final Landroidx/core/content/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/ContentResolverCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 16

    .prologue
    .line 74
    move-object/from16 v0, p0

    .local v0, "resolver":Landroid/content/ContentResolver;
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
    move-object/from16 v6, p6

    .local v6, "cancellationSignal":Landroidx/core/os/CancellationSignal;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_2

    .line 76
    move-object v8, v6

    if-eqz v8, :cond_0

    move-object v8, v6

    .line 79
    :try_start_0
    invoke-virtual {v8}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v8

    :goto_0
    check-cast v8, Landroid/os/CancellationSignal;

    check-cast v8, Landroid/os/CancellationSignal;

    move-object v7, v8

    .line 81
    .local v7, "cancellationSignalObj":Landroid/os/CancellationSignal;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v7

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 99
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "cancellationSignalObj":Landroid/os/CancellationSignal;
    :goto_1
    return-object v0

    .line 79
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    move-object v8, v7

    instance-of v8, v8, Landroid/os/OperationCanceledException;

    if-eqz v8, :cond_1

    .line 87
    new-instance v8, Landroidx/core/os/OperationCanceledException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v8

    .line 90
    :cond_1
    move-object v8, v7

    throw v8

    .line 96
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 97
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    .line 99
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    goto :goto_1
.end method
