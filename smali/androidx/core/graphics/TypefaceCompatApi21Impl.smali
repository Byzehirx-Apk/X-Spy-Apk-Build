.class Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    move-object v1, p1

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/proc/self/fd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 53
    .local v2, "path":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget v3, v3, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 59
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 56
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 58
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 59
    .local v2, "e":Landroid/system/ErrnoException;
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 25
    .param p3    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    move-object/from16 v3, p1

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p2

    .local v4, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v5, p3

    .local v5, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move/from16 v6, p4

    .local v6, "style":I
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 67
    const/16 v20, 0x0

    move-object/from16 v2, v20

    .line 83
    .end local v2    # "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    :goto_0
    return-object v2

    .line 69
    .restart local v2    # "this":Landroidx/core/graphics/TypefaceCompatApi21Impl;
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move/from16 v22, v6

    invoke-virtual/range {v20 .. v22}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v20

    move-object/from16 v7, v20

    .line 70
    .local v7, "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v8, v20

    .line 71
    .local v8, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    .line 72
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v21

    const-string/jumbo v22, "r"

    move-object/from16 v23, v4

    invoke-virtual/range {v20 .. v23}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v20

    move-object/from16 v9, v20

    .line 71
    .local v9, "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v20, 0x0

    move-object/from16 v10, v20

    .line 73
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    :try_start_1
    invoke-direct/range {v20 .. v21}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v11, v20

    .line 74
    .local v11, "file":Ljava/io/File;
    move-object/from16 v20, v11

    if-eqz v20, :cond_1

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->canRead()Z

    move-result v20

    if-nez v20, :cond_9

    .line 77
    :cond_1
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, v20

    .local v12, "fis":Ljava/io/FileInputStream;
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 78
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    :try_start_2
    invoke-super/range {v20 .. v22}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v20

    move-object/from16 v14, v20

    .line 79
    move-object/from16 v20, v12

    if-eqz v20, :cond_2

    move-object/from16 v20, v13

    if-eqz v20, :cond_4

    move-object/from16 v20, v12

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :cond_2
    :goto_1
    move-object/from16 v20, v9

    if-eqz v20, :cond_3

    move-object/from16 v20, v10

    if-eqz v20, :cond_6

    move-object/from16 v20, v9

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v20

    move-object/from16 v15, v20

    move-object/from16 v20, v13

    move-object/from16 v21, v15

    :try_start_5
    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 71
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v20

    move-object/from16 v11, v20

    move-object/from16 v20, v11

    move-object/from16 v10, v20

    move-object/from16 v20, v11

    :try_start_6
    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 82
    :catchall_0
    move-exception v20

    move-object/from16 v18, v20

    move-object/from16 v20, v9

    if-eqz v20, :cond_5

    move-object/from16 v20, v10

    if-eqz v20, :cond_c

    move-object/from16 v20, v9

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_3
    move-object/from16 v20, v18

    :try_start_8
    throw v20

    .end local v9    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v20

    move-object/from16 v9, v20

    .line 83
    .local v9, "e":Ljava/io/IOException;
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 82
    .local v9, "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v20

    move-object/from16 v15, v20

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 77
    :catch_4
    move-exception v20

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    move-object/from16 v13, v20

    move-object/from16 v20, v14

    :try_start_9
    throw v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 79
    :catchall_1
    move-exception v20

    move-object/from16 v16, v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_7

    move-object/from16 v20, v13

    if-eqz v20, :cond_8

    move-object/from16 v20, v12

    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    :goto_4
    move-object/from16 v20, v16

    :try_start_b
    throw v20

    :catch_5
    move-exception v20

    move-object/from16 v17, v20

    move-object/from16 v20, v13

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    .line 81
    .end local v12    # "fis":Ljava/io/FileInputStream;
    :cond_9
    move-object/from16 v20, v11

    invoke-static/range {v20 .. v20}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v20

    move-object/from16 v12, v20

    .line 82
    move-object/from16 v20, v9

    if-eqz v20, :cond_a

    move-object/from16 v20, v10

    if-eqz v20, :cond_b

    move-object/from16 v20, v9

    :try_start_c
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :cond_a
    :goto_5
    move-object/from16 v20, v12

    move-object/from16 v2, v20

    goto/16 :goto_0

    :catch_6
    move-exception v20

    move-object/from16 v13, v20

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    :try_start_d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_5

    .end local v11    # "file":Ljava/io/File;
    :catch_7
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v10

    move-object/from16 v21, v19

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3
.end method
