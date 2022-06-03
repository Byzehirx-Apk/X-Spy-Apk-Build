.class public Lcom/microsoft/appcenter/utils/storage/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/FileManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .locals 8
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "directory":Ljava/io/File;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move-object v1, v6

    .line 252
    .local v1, "contents":[Ljava/io/File;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 253
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 254
    .local v5, "file":Ljava/io/File;
    move-object v6, v5

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/storage/FileManager;->deleteDirectory(Ljava/io/File;)Z

    move-result v6

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    move v0, v1

    .end local v0    # "file":Ljava/io/File;
    return v0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    move-result v1

    move v0, v1

    .end local v0    # "path":Ljava/lang/String;
    return v0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 8
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    move-object v1, v6

    .line 237
    .local v1, "contents":[Ljava/io/File;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 238
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 239
    .local v5, "f":Ljava/io/File;
    move-object v6, v5

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/storage/FileManager;->deleteDirectory(Ljava/io/File;)Z

    move-result v6

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .end local v5    # "f":Ljava/io/File;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    move v0, v6

    .end local v0    # "file":Ljava/io/File;
    return v0
.end method

.method public static getFilenames(Ljava/lang/String;Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FilenameFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v1, p1

    .local v1, "filter":Ljava/io/FilenameFilter;
    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 160
    .local v2, "dir":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 164
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "path":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const-class v2, Lcom/microsoft/appcenter/utils/storage/FileManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/storage/FileManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 45
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/utils/storage/FileManager;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v2

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "context":Landroid/content/Context;
    throw v0
.end method

.method public static lastModifiedFile(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;
    .locals 14
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FilenameFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "dir":Ljava/io/File;
    move-object v1, p1

    .local v1, "filter":Ljava/io/FilenameFilter;
    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 190
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    move-object v2, v10

    .line 191
    .local v2, "files":[Ljava/io/File;
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 192
    .local v3, "lastModification":J
    const/4 v10, 0x0

    move-object v5, v10

    .line 194
    .local v5, "lastModifiedFile":Ljava/io/File;
    move-object v10, v2

    if-eqz v10, :cond_2

    .line 195
    move-object v10, v2

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_1

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 196
    .local v9, "file":Ljava/io/File;
    move-object v10, v9

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    move-wide v12, v3

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 197
    move-object v10, v9

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    move-wide v3, v10

    .line 198
    move-object v10, v9

    move-object v5, v10

    .line 195
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 202
    .end local v9    # "file":Ljava/io/File;
    :cond_1
    move-object v10, v5

    move-object v0, v10

    .line 206
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "lastModification":J
    .end local v5    # "lastModifiedFile":Ljava/io/File;
    :goto_1
    return-object v0

    .restart local v0    # "dir":Ljava/io/File;
    :cond_2
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method

.method public static lastModifiedFile(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FilenameFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v1, p1

    .local v1, "filter":Ljava/io/FilenameFilter;
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/FileManager;->lastModifiedFile(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "path":Ljava/lang/String;
    return-object v0
.end method

.method public static mkdir(Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 268
    return-void
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/io/FileReader;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 74
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    const-string/jumbo v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 75
    .local v4, "lineSeparator":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 76
    .local v2, "contents":Ljava/lang/StringBuilder;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 77
    .local v3, "line":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 78
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 79
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v3, v7

    if-eqz v6, :cond_0

    .line 80
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 84
    :cond_0
    move-object v6, v1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 85
    .line 86
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 90
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "contents":Ljava/lang/StringBuilder;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lineSeparator":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 84
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 85
    move-object v6, v5

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 88
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "path":Ljava/lang/String;
    return-object v0
.end method

.method public static readBytes(Ljava/io/File;)[B
    .locals 10
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v6, v6, [B

    move-object v1, v6

    .line 102
    .local v1, "fileContents":[B
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 106
    .local v2, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/DataInputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 107
    .local v3, "dataInputStream":Ljava/io/DataInputStream;
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    move-object v6, v1

    move-object v4, v6

    .line 110
    move-object v6, v2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 108
    move-object v6, v4

    move-object v0, v6

    .line 115
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    .end local v3    # "dataInputStream":Ljava/io/DataInputStream;
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fileStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 111
    move-object v6, v5

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .end local v2    # "fileStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 113
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "AppCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 138
    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v4, Ljava/io/BufferedWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/FileWriter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v4

    .line 143
    .local v2, "writer":Ljava/io/BufferedWriter;
    move-object v4, v2

    move-object v5, v1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 146
    .line 147
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 146
    move-object v4, v3

    throw v4
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    return-void
.end method
