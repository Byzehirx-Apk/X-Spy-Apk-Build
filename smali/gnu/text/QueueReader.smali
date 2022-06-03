.class public Lgnu/text/QueueReader;
.super Ljava/io/Reader;
.source "QueueReader.java"

# interfaces
.implements Ljava/lang/Appendable;


# instance fields
.field EOFseen:Z

.field buffer:[C

.field limit:I

.field mark:I

.field pos:I

.field readAheadLimit:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/Reader;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized append(C)Lgnu/text/QueueReader;
    .locals 10

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move v1, p1

    .local v1, "ch":C
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/QueueReader;->buffer:[C

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/QueueReader;->limit:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/QueueReader;->limit:I

    move v4, v1

    aput-char v4, v2, v3

    .line 131
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/QueueReader;
    monitor-exit v7

    return-object v0

    .line 129
    .restart local v0    # "this":Lgnu/text/QueueReader;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 61
    const-string/jumbo v2, "null"

    move-object v1, v2

    .line 62
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/QueueReader;
    return-object v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;
    .locals 15

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object/from16 v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "end":I
    move-object v14, p0

    monitor-enter v14

    move-object v9, v1

    if-nez v9, :cond_0

    .line 68
    :try_start_0
    const-string/jumbo v9, "null"

    move-object v1, v9

    .line 69
    :cond_0
    move v9, v3

    move v10, v2

    sub-int/2addr v9, v10

    move v4, v9

    .line 70
    .local v4, "len":I
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 71
    move-object v9, v0

    iget v9, v9, Lgnu/text/QueueReader;->limit:I

    move v5, v9

    .line 72
    .local v5, "sz":I
    move-object v9, v0

    iget-object v9, v9, Lgnu/text/QueueReader;->buffer:[C

    move-object v6, v9

    .line 73
    .local v6, "d":[C
    move-object v9, v1

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 74
    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move v10, v2

    move v11, v3

    move-object v12, v6

    move v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 83
    :cond_1
    :goto_0
    move-object v9, v0

    move v10, v5

    move v11, v4

    add-int/2addr v10, v11

    iput v10, v9, Lgnu/text/QueueReader;->limit:I

    .line 84
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    move-object v9, v0

    move-object v0, v9

    .end local v0    # "this":Lgnu/text/QueueReader;
    monitor-exit v14

    return-object v0

    .line 75
    .restart local v0    # "this":Lgnu/text/QueueReader;
    :cond_2
    move-object v9, v1

    :try_start_1
    instance-of v9, v9, Lgnu/lists/CharSeq;

    if-eqz v9, :cond_3

    .line 76
    move-object v9, v1

    check-cast v9, Lgnu/lists/CharSeq;

    move v10, v2

    move v11, v3

    move-object v12, v6

    move v13, v5

    invoke-interface {v9, v10, v11, v12, v13}, Lgnu/lists/CharSeq;->getChars(II[CI)V

    goto :goto_0

    .line 79
    :cond_3
    move v9, v5

    move v7, v9

    .line 80
    .local v7, "j":I
    move v9, v2

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 81
    move-object v9, v6

    move v10, v7

    add-int/lit8 v7, v7, 0x1

    move-object v11, v1

    move v12, v8

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v9, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 67
    .end local v4    # "len":I
    .end local v5    # "sz":I
    .end local v6    # "d":[C
    .end local v7    # "j":I
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v14

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/QueueReader;->append(C)Lgnu/text/QueueReader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/QueueReader;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;)Lgnu/text/QueueReader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/text/QueueReader;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/text/QueueReader;
    return-object v0
.end method

.method public append([C)V
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, p1

    .local v1, "chars":[C
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/text/QueueReader;->append([CII)V

    .line 117
    return-void
.end method

.method public declared-synchronized append([CII)V
    .locals 11

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, p1

    .local v1, "chars":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    move v5, v3

    :try_start_0
    invoke-virtual {v4, v5}, Lgnu/text/QueueReader;->reserveSpace(I)V

    .line 122
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/text/QueueReader;->buffer:[C

    move-object v7, v0

    iget v7, v7, Lgnu/text/QueueReader;->limit:I

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lgnu/text/QueueReader;->limit:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lgnu/text/QueueReader;->limit:I

    .line 124
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v9

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public declared-synchronized appendEOF()V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit v3

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public checkAvailable()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    iput v2, v1, Lgnu/text/QueueReader;->pos:I

    .line 208
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/QueueReader;->limit:I

    .line 209
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/text/QueueReader;->mark:I

    .line 210
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/text/QueueReader;->EOFseen:Z

    .line 211
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/text/QueueReader;->buffer:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit v3

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move v1, p1

    .local v1, "readAheadLimit":I
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move v3, v1

    :try_start_0
    iput v3, v2, Lgnu/text/QueueReader;->readAheadLimit:I

    .line 31
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lgnu/text/QueueReader;->pos:I

    iput v3, v2, Lgnu/text/QueueReader;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v4

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/QueueReader;
    return v0
.end method

.method public declared-synchronized read()I
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v7, p0

    monitor-enter v7

    :goto_0
    move-object v2, v0

    :try_start_0
    iget v2, v2, Lgnu/text/QueueReader;->pos:I

    move-object v3, v0

    iget v3, v3, Lgnu/text/QueueReader;->limit:I

    if-lt v2, v3, :cond_1

    .line 165
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 166
    const/4 v2, -0x1

    move v0, v2

    .line 177
    .end local v0    # "this":Lgnu/text/QueueReader;
    .local v1, "ch":C
    :goto_1
    monitor-exit v7

    return v0

    .line 167
    .end local v1    # "ch":C
    .restart local v0    # "this":Lgnu/text/QueueReader;
    :cond_0
    move-object v2, v0

    :try_start_1
    invoke-virtual {v2}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    move-object v2, v0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_1
    move-object v2, v0

    :try_start_3
    iget-object v2, v2, Lgnu/text/QueueReader;->buffer:[C

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lgnu/text/QueueReader;->pos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/text/QueueReader;->pos:I

    aget-char v2, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    .line 177
    .restart local v1    # "ch":C
    move v2, v1

    move v0, v2

    goto :goto_1

    .line 163
    .end local v1    # "ch":C
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public declared-synchronized read([CII)I
    .locals 12

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v1, p1

    .local v1, "cbuf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v10, p0

    monitor-enter v10

    move v5, v3

    if-nez v5, :cond_1

    .line 183
    const/4 v5, 0x0

    move v0, v5

    .line 202
    .end local v0    # "this":Lgnu/text/QueueReader;
    :goto_0
    monitor-exit v10

    return v0

    .line 188
    .restart local v0    # "this":Lgnu/text/QueueReader;
    :cond_0
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lgnu/text/QueueReader;->checkAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 184
    :cond_1
    :goto_1
    move-object v5, v0

    :try_start_2
    iget v5, v5, Lgnu/text/QueueReader;->pos:I

    move-object v6, v0

    iget v6, v6, Lgnu/text/QueueReader;->limit:I

    if-lt v5, v6, :cond_2

    .line 186
    move-object v5, v0

    iget-boolean v5, v5, Lgnu/text/QueueReader;->EOFseen:Z

    if-eqz v5, :cond_0

    .line 187
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 193
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 195
    goto :goto_1

    .line 197
    :cond_2
    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->limit:I

    move-object v6, v0

    iget v6, v6, Lgnu/text/QueueReader;->pos:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 198
    .local v4, "avail":I
    move v5, v3

    move v6, v4

    if-le v5, v6, :cond_3

    .line 199
    move v5, v4

    move v3, v5

    .line 200
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/text/QueueReader;->buffer:[C

    move-object v6, v0

    iget v6, v6, Lgnu/text/QueueReader;->pos:I

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lgnu/text/QueueReader;->pos:I

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lgnu/text/QueueReader;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    move v5, v3

    move v0, v5

    goto :goto_0

    .line 182
    .end local v4    # "avail":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method public declared-synchronized ready()Z
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lgnu/text/QueueReader;->pos:I

    move-object v2, v0

    iget v2, v2, Lgnu/text/QueueReader;->limit:I

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lgnu/text/QueueReader;->EOFseen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/text/QueueReader;
    monitor-exit v3

    return v0

    .restart local v0    # "this":Lgnu/text/QueueReader;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method protected reserveSpace(I)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move v1, p1

    .local v1, "len":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/QueueReader;->buffer:[C

    if-nez v2, :cond_1

    .line 144
    move-object v2, v0

    const/16 v3, 0x64

    move v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [C

    iput-object v3, v2, Lgnu/text/QueueReader;->buffer:[C

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/text/QueueReader;->buffer:[C

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lgnu/text/QueueReader;->limit:I

    move v4, v1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 146
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/text/QueueReader;->resize(I)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v1, :cond_0

    .line 37
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/text/QueueReader;->mark:I

    iput v2, v1, Lgnu/text/QueueReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit v3

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/text/QueueReader;
    throw v0
.end method

.method resize(I)V
    .locals 10

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/text/QueueReader;
    move v1, p1

    .local v1, "len":I
    move-object v4, v0

    iget v4, v4, Lgnu/text/QueueReader;->limit:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->pos:I

    sub-int/2addr v4, v5

    move v2, v4

    .line 43
    .local v2, "cur_size":I
    move-object v4, v0

    iget v4, v4, Lgnu/text/QueueReader;->readAheadLimit:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lgnu/text/QueueReader;->pos:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->readAheadLimit:I

    if-gt v4, v5, :cond_0

    .line 44
    move-object v4, v0

    iget v4, v4, Lgnu/text/QueueReader;->limit:I

    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v4, v5

    move v2, v4

    .line 47
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/QueueReader;->buffer:[C

    array-length v4, v4

    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    const/4 v4, 0x2

    move v5, v2

    mul-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    new-array v4, v4, [C

    :goto_1
    move-object v3, v4

    .line 50
    .local v3, "new_buffer":[C
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/QueueReader;->buffer:[C

    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->mark:I

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/text/QueueReader;->buffer:[C

    .line 52
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/text/QueueReader;->pos:I

    move-object v6, v0

    iget v6, v6, Lgnu/text/QueueReader;->mark:I

    sub-int/2addr v5, v6

    iput v5, v4, Lgnu/text/QueueReader;->pos:I

    .line 53
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/text/QueueReader;->mark:I

    .line 54
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/text/QueueReader;->limit:I

    .line 55
    return-void

    .line 46
    .end local v3    # "new_buffer":[C
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lgnu/text/QueueReader;->pos:I

    iput v5, v4, Lgnu/text/QueueReader;->mark:I

    goto :goto_0

    .line 47
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/text/QueueReader;->buffer:[C

    goto :goto_1
.end method
