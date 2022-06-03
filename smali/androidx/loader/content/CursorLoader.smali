.class public Landroidx/loader/content/CursorLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 124
    move-object v2, v0

    new-instance v3, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v3, v2, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    move-object v3, p3

    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "selection":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "sortOrder":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 137
    move-object v7, v0

    new-instance v8, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v8, v7, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 138
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 139
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 140
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 141
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 142
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v3, v0

    invoke-super {v3}, Landroidx/loader/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 88
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 89
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v3}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 92
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 93
    return-void

    .line 92
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

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/CursorLoader;->isReset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 101
    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 103
    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    move-object v2, v3

    .line 106
    .local v2, "oldCursor":Landroid/database/Cursor;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 108
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/loader/content/CursorLoader;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 112
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_3

    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_3
    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fd":Ljava/io/FileDescriptor;
    move-object v3, p3

    .local v3, "writer":Ljava/io/PrintWriter;
    move-object v4, p4

    .local v4, "args":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/loader/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 240
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mUri="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 241
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mProjection="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mSelection="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mSelectionArgs="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mSortOrder="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mCursor="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 248
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string/jumbo v6, "mContentChanged="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroidx/loader/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 249
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 16

    .prologue
    .line 56
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v1, v9

    monitor-enter v8

    .line 57
    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Landroidx/loader/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 58
    new-instance v8, Landroidx/core/os/OperationCanceledException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v8

    .line 61
    :catchall_0
    move-exception v8

    move-object v2, v8

    move-object v8, v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v2

    throw v8

    .line 60
    :cond_0
    move-object v8, v0

    :try_start_1
    new-instance v9, Landroidx/core/os/CancellationSignal;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v9, v8, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 61
    move-object v8, v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    move-object v8, v0

    :try_start_2
    invoke-virtual {v8}, Landroidx/loader/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object v10, v0

    iget-object v10, v10, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object v13, v0

    iget-object v13, v13, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    move-object v14, v0

    iget-object v14, v14, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    invoke-static/range {v8 .. v14}, Landroidx/core/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidx/core/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    move-object v1, v8

    .line 66
    .local v1, "cursor":Landroid/database/Cursor;
    move-object v8, v1

    if-eqz v8, :cond_1

    .line 69
    move-object v8, v1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 70
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroidx/loader/content/CursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .line 76
    :cond_1
    move-object v8, v1

    move-object v2, v8

    .line 78
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v3, v9

    monitor-enter v8

    .line 79
    move-object v8, v0

    const/4 v9, 0x0

    :try_start_4
    iput-object v9, v8, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 80
    move-object v8, v3

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v2

    move-object v0, v8

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0

    .line 71
    .restart local v0    # "this":Landroidx/loader/content/CursorLoader;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 72
    .local v2, "ex":Ljava/lang/RuntimeException;
    move-object v8, v1

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    move-object v8, v2

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v8

    move-object v5, v8

    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    monitor-enter v8

    .line 79
    move-object v8, v0

    const/4 v9, 0x0

    :try_start_6
    iput-object v9, v8, Landroidx/loader/content/CursorLoader;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    .line 80
    move-object v8, v6

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v8, v5

    throw v8

    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v8

    move-object v4, v8

    move-object v8, v3

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v8, v4

    throw v8

    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v8, v7

    throw v8
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/loader/content/CursorLoader;
    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Landroidx/loader/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    invoke-super {v1}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 183
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/CursorLoader;->onStopLoading()V

    .line 185
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 189
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 155
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroidx/loader/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 157
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/CursorLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/loader/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 158
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/CursorLoader;->forceLoad()V

    .line 160
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/loader/content/CursorLoader;->cancelLoad()Z

    move-result v1

    .line 169
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "projection":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "selection":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "selectionArgs":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "sortOrder":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/loader/content/CursorLoader;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/loader/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 198
    return-void
.end method
