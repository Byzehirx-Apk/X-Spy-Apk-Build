.class public Landroidx/core/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "c":Ljava/io/Closeable;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 172
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move v2, p2

    .local v2, "id":I
    move-object v6, v0

    invoke-static {v6}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    move-object v3, v6

    .line 120
    .local v3, "tmpFile":Ljava/io/File;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 121
    const/4 v6, 0x0

    move-object v0, v6

    .line 129
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v6, v3

    move-object v7, v1

    move v8, v2

    :try_start_0
    invoke-static {v6, v7, v8}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 125
    const/4 v6, 0x0

    move-object v4, v6

    .line 129
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 127
    :cond_1
    move-object v6, v3

    :try_start_1
    invoke-static {v6}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 129
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    move-object v6, v5

    throw v6
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 8

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move v2, p2

    .local v2, "id":I
    const/4 v6, 0x0

    move-object v3, v6

    .line 162
    .local v3, "is":Ljava/io/InputStream;
    move-object v6, v1

    move v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    move-object v3, v6

    .line 163
    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v4, v6

    .line 165
    move-object v6, v3

    invoke-static {v6}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    move v6, v4

    move v0, v6

    .end local v0    # "file":Ljava/io/File;
    return v0

    .restart local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-static {v6}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v5

    throw v6
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 13

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    move-object v2, v8

    .line 138
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    move-object v3, v8

    .line 140
    .local v3, "old":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v8

    .line 141
    const/16 v8, 0x400

    new-array v8, v8, [B

    move-object v4, v8

    .line 143
    .local v4, "buffer":[B
    :goto_0
    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v5, v9

    .local v5, "readLen":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 144
    move-object v8, v2

    move-object v9, v4

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :cond_0
    const/4 v8, 0x1

    move v6, v8

    .line 151
    move-object v8, v2

    invoke-static {v8}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    move-object v8, v3

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v8, v6

    move v0, v8

    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "buffer":[B
    .end local v5    # "readLen":I
    :goto_1
    return v0

    .line 147
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 148
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v8, "TypefaceCompatUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error copying resource contents to temp file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 149
    const/4 v8, 0x0

    move v5, v8

    .line 151
    move-object v8, v2

    invoke-static {v8}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    move-object v8, v3

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v8, v5

    move v0, v8

    goto :goto_1

    .line 151
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    invoke-static {v8}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    move-object v8, v3

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v8, v7

    throw v8
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ".font"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 64
    .local v1, "prefix":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    const/16 v6, 0x64

    if-ge v5, v6, :cond_1

    .line 65
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v5

    .line 67
    .local v3, "file":Ljava/io/File;
    move-object v5, v3

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    move-object v5, v3

    move-object v0, v5

    .line 74
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    return-object v0

    .line 72
    .line 64
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_2

    .line 74
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 25
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 98
    move-object/from16 v1, p0

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p1

    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v3, p2

    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v4, v18

    .line 99
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    :try_start_0
    const-string/jumbo v20, "r"

    move-object/from16 v21, v2

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    move-object/from16 v5, v18

    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 100
    move-object/from16 v18, v5

    if-nez v18, :cond_2

    .line 101
    const/16 v18, 0x0

    move-object/from16 v7, v18

    .line 108
    move-object/from16 v18, v5

    if-eqz v18, :cond_0

    move-object/from16 v18, v6

    if-eqz v18, :cond_1

    move-object/from16 v18, v5

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object/from16 v18, v7

    move-object/from16 v1, v18

    .line 109
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v1

    .line 108
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    :try_start_2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v18

    move-object/from16 v5, v18

    .line 109
    .local v5, "e":Ljava/io/IOException;
    const/16 v18, 0x0

    move-object/from16 v1, v18

    goto :goto_1

    .line 103
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :try_start_3
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v7, v18

    .local v7, "fis":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 104
    move-object/from16 v18, v7

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    move-object/from16 v9, v18

    .line 105
    .local v9, "channel":Ljava/nio/channels/FileChannel;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 106
    .local v10, "size":J
    move-object/from16 v18, v9

    sget-object v19, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v10

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v18

    move-object/from16 v12, v18

    .line 107
    move-object/from16 v18, v7

    if-eqz v18, :cond_3

    move-object/from16 v18, v8

    if-eqz v18, :cond_5

    move-object/from16 v18, v7

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    :cond_3
    :goto_2
    move-object/from16 v18, v5

    if-eqz v18, :cond_4

    move-object/from16 v18, v6

    if-eqz v18, :cond_7

    move-object/from16 v18, v5

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    move-object/from16 v18, v12

    move-object/from16 v1, v18

    goto :goto_1

    .line 107
    :catch_2
    move-exception v18

    move-object/from16 v13, v18

    move-object/from16 v18, v8

    move-object/from16 v19, v13

    :try_start_7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 99
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "channel":Ljava/nio/channels/FileChannel;
    .end local v10    # "size":J
    :catch_3
    move-exception v18

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    :try_start_8
    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 108
    :catchall_0
    move-exception v18

    move-object/from16 v16, v18

    move-object/from16 v18, v5

    if-eqz v18, :cond_6

    move-object/from16 v18, v6

    if-eqz v18, :cond_a

    move-object/from16 v18, v5

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :goto_4
    move-object/from16 v18, v16

    :try_start_a
    throw v18

    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v10    # "size":J
    :catch_4
    move-exception v18

    move-object/from16 v13, v18

    move-object/from16 v18, v6

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 103
    .end local v9    # "channel":Ljava/nio/channels/FileChannel;
    .end local v10    # "size":J
    :catch_5
    move-exception v18

    move-object/from16 v9, v18

    move-object/from16 v18, v9

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    :try_start_b
    throw v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 107
    :catchall_1
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v7

    if-eqz v18, :cond_8

    move-object/from16 v18, v8

    if-eqz v18, :cond_9

    move-object/from16 v18, v7

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_8
    :goto_5
    move-object/from16 v18, v14

    :try_start_d
    throw v18

    :catch_6
    move-exception v18

    move-object/from16 v15, v18

    move-object/from16 v18, v8

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 108
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v6

    move-object/from16 v19, v17

    :try_start_e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 83
    move-object/from16 v0, p0

    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v10

    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    move-object v2, v10

    .line 84
    move-object v10, v1

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    move-object v3, v10

    .line 85
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    move-wide v4, v10

    .line 86
    .local v4, "size":J
    move-object v10, v3

    sget-object v11, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v12, 0x0

    move-wide v14, v4

    invoke-virtual/range {v10 .. v15}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v6, v10

    .line 87
    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v10, v6

    move-object v0, v10

    .line 88
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    :goto_1
    return-object v0

    .line 87
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    :catch_0
    move-exception v10

    move-object v7, v10

    move-object v10, v2

    move-object v11, v7

    :try_start_3
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 88
    .local v1, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1

    .line 83
    .local v1, "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    move-object v3, v10

    move-object v10, v3

    move-object v2, v10

    move-object v10, v3

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v1

    if-eqz v10, :cond_2

    move-object v10, v2

    if-eqz v10, :cond_3

    move-object v10, v1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    move-object v10, v8

    :try_start_6
    throw v10

    :catch_3
    move-exception v10

    move-object v9, v10

    move-object v10, v2

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method
