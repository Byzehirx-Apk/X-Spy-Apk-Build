.class public Landroidx/core/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v1, p1

    .local v1, "baseName":Ljava/io/File;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 56
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".bak"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    .line 57
    return-void
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .locals 3
    .param p0    # Ljava/io/FileOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "stream":Ljava/io/FileOutputStream;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    const/4 v2, 0x1

    move v0, v2

    .line 216
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return v0

    .line 214
    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 216
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 73
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 74
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 6
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v1, p1

    .local v1, "str":Ljava/io/FileOutputStream;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v1

    invoke-static {v3}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    move-result v3

    .line 147
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 148
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 149
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 152
    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 151
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "AtomicFile"

    const-string/jumbo v4, "failWrite: Got exception:"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 6
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v1, p1

    .local v1, "str":Ljava/io/FileOutputStream;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 128
    move-object v3, v1

    invoke-static {v3}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    move-result v3

    .line 130
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 131
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 134
    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 133
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "AtomicFile"

    const-string/jumbo v4, "finishWrite: Got exception:"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/util/AtomicFile;
    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 172
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 174
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/util/AtomicFile;
    return-object v0
.end method

.method public readFully()[B
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/core/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8

    move-object v1, v8

    .line 185
    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    move v2, v8

    .line 186
    .local v2, "pos":I
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v8

    move v3, v8

    .line 187
    .local v3, "avail":I
    move v8, v3

    new-array v8, v8, [B

    move-object v4, v8

    .line 189
    .local v4, "data":[B
    :goto_0
    move-object v8, v1

    move-object v9, v4

    move v10, v2

    move-object v11, v4

    array-length v11, v11

    move v12, v2

    sub-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move v5, v8

    .line 192
    .local v5, "amt":I
    move v8, v5

    if-gtz v8, :cond_0

    .line 195
    move-object v8, v4

    move-object v6, v8

    .line 206
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Landroidx/core/util/AtomicFile;
    return-object v0

    .line 197
    .restart local v0    # "this":Landroidx/core/util/AtomicFile;
    :cond_0
    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    move v2, v8

    .line 198
    move-object v8, v1

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v8

    move v3, v8

    .line 199
    move v8, v3

    move-object v9, v4

    array-length v9, v9

    move v10, v2

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_1

    .line 200
    move v8, v2

    move v9, v3

    add-int/2addr v8, v9

    new-array v8, v8, [B

    move-object v6, v8

    .line 201
    .local v6, "newData":[B
    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move v12, v2

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    move-object v8, v6

    move-object v4, v8

    .line 204
    .end local v6    # "newData":[B
    :cond_1
    goto :goto_0

    .line 206
    .end local v3    # "avail":I
    .end local v4    # "data":[B
    .end local v5    # "amt":I
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    move-object v8, v7

    throw v8
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/AtomicFile;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    const-string/jumbo v5, "AtomicFile"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t rename file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to backup file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 105
    :cond_0
    :goto_0
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 116
    .line 117
    .local v1, "str":Ljava/io/FileOutputStream;
    :goto_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/util/AtomicFile;
    return-object v0

    .line 100
    .end local v1    # "str":Ljava/io/FileOutputStream;
    .restart local v0    # "this":Landroidx/core/util/AtomicFile;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_0

    .line 106
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 107
    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v3, v5

    .line 108
    .local v3, "parent":Ljava/io/File;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    new-instance v5, Ljava/io/IOException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_2
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    .line 115
    .restart local v1    # "str":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 113
    .end local v1    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 114
    .local v4, "e2":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/io/IOException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
