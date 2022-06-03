.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 18

    .prologue
    .line 176
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object/from16 v2, p1

    .local v2, "directory":Ljava/io/File;
    move/from16 v3, p2

    .local v3, "appVersion":I
    move/from16 v4, p3

    .local v4, "valueCount":I
    move-wide/from16 v5, p4

    .local v5, "maxSize":J
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 144
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 146
    move-object v7, v1

    new-instance v8, Ljava/util/LinkedHashMap;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const/high16 v11, 0x3f400000    # 0.75f

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 155
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 158
    move-object v7, v1

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x3c

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v9 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    move-object v7, v1

    new-instance v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 177
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 178
    move-object v7, v1

    move v8, v3

    iput v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 179
    move-object v7, v1

    new-instance v8, Ljava/io/File;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    const-string/jumbo v11, "journal"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 180
    move-object v7, v1

    new-instance v8, Ljava/io/File;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    const-string/jumbo v11, "journal.tmp"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 181
    move-object v7, v1

    new-instance v8, Ljava/io/File;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    const-string/jumbo v11, "journal.bkp"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 182
    move-object v7, v1

    move v8, v4

    iput v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 183
    move-object v7, v1

    move-wide v8, v5

    iput-wide v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "x2":J
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Ljava/io/InputStream;
    move-object v1, v0

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/io/InputStream;
    return-object v0
.end method

.method static synthetic access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    iget v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return v0
.end method

.method static synthetic access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return v0
.end method

.method static synthetic access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, p1

    .local v1, "x1":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    move v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return v0
.end method

.method private checkNotClosed()V
    .locals 5

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "cache is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    move-object/from16 v3, p0

    .local v3, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object/from16 v4, p1

    .local v4, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move/from16 v5, p2

    .local v5, "success":Z
    move-object/from16 v22, p0

    monitor-enter v22

    move-object v14, v4

    :try_start_0
    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1400(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-result-object v14

    move-object v6, v14

    .line 503
    .local v6, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v14, v6

    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v14

    move-object v15, v4

    if-eq v14, v15, :cond_0

    .line 504
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v6    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v3

    monitor-exit v22

    .end local v3    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v3

    .line 508
    .restart local v3    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .restart local v6    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_0
    move v14, v5

    if-eqz v14, :cond_3

    move-object v14, v6

    :try_start_1
    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 509
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i":I
    :goto_0
    move v14, v7

    move-object v15, v3

    iget v15, v15, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v14, v15, :cond_3

    .line 510
    move-object v14, v4

    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v14

    move v15, v7

    aget-boolean v14, v14, v15

    if-nez v14, :cond_1

    .line 511
    move-object v14, v4

    invoke-virtual {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 512
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Newly created entry didn\'t create value for index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 514
    :cond_1
    move-object v14, v6

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 515
    move-object v14, v4

    invoke-virtual {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    .line 562
    :goto_1
    monitor-exit v22

    return-void

    .line 509
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 521
    .end local v7    # "i":I
    :cond_3
    const/4 v14, 0x0

    move v7, v14

    .restart local v7    # "i":I
    :goto_2
    move v14, v7

    move-object v15, v3

    :try_start_2
    iget v15, v15, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v14, v15, :cond_6

    .line 522
    move-object v14, v6

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v14

    move-object v8, v14

    .line 523
    .local v8, "dirty":Ljava/io/File;
    move v14, v5

    if-eqz v14, :cond_5

    .line 524
    move-object v14, v8

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 525
    move-object v14, v6

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v14

    move-object v9, v14

    .line 526
    .local v9, "clean":Ljava/io/File;
    move-object v14, v8

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    .line 527
    move-object v14, v6

    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v14

    move v15, v7

    aget-wide v14, v14, v15

    move-wide v10, v14

    .line 528
    .local v10, "oldLength":J
    move-object v14, v9

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    move-wide v12, v14

    .line 529
    .local v12, "newLength":J
    move-object v14, v6

    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v14

    move v15, v7

    move-wide/from16 v16, v12

    aput-wide v16, v14, v15

    .line 530
    move-object v14, v3

    move-object v15, v3

    iget-wide v15, v15, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    move-wide/from16 v17, v10

    sub-long v15, v15, v17

    move-wide/from16 v17, v12

    add-long v15, v15, v17

    iput-wide v15, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 531
    .line 521
    .end local v9    # "clean":Ljava/io/File;
    .end local v10    # "oldLength":J
    .end local v12    # "newLength":J
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 533
    :cond_5
    move-object v14, v8

    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 537
    .end local v8    # "dirty":Ljava/io/File;
    :cond_6
    move-object v14, v3

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    iget v15, v15, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 538
    move-object v14, v6

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v14

    .line 539
    move-object v14, v6

    invoke-static {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v14

    move v15, v5

    or-int/2addr v14, v15

    if-eqz v14, :cond_a

    .line 540
    move-object v14, v6

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    move-result v14

    .line 541
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v15, "CLEAN"

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v14

    .line 542
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v14

    .line 543
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v15, v6

    invoke-static {v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v14

    .line 544
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v15, v6

    invoke-virtual {v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v14

    .line 545
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v14

    .line 547
    move v14, v5

    if-eqz v14, :cond_7

    .line 548
    move-object v14, v6

    move-object v15, v3

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    move-wide/from16 v16, v0

    move-object/from16 v23, v15

    move-wide/from16 v24, v16

    move-wide/from16 v15, v24

    move-object/from16 v17, v23

    move-wide/from16 v18, v24

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    invoke-static/range {v14 .. v16}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1202(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J

    move-result-wide v14

    .line 557
    :cond_7
    :goto_4
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v14}, Ljava/io/Writer;->flush()V

    .line 559
    move-object v14, v3

    iget-wide v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_8

    move-object v14, v3

    invoke-direct {v14}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 560
    :cond_8
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v15, v3

    iget-object v15, v15, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    .line 562
    :cond_9
    goto/16 :goto_1

    .line 551
    :cond_a
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v15, v6

    invoke-static {v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 552
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v15, "REMOVE"

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v14

    .line 553
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v14

    .line 554
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v15, v6

    invoke-static {v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v14

    .line 555
    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    goto :goto_4
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    new-instance v1, Ljava/io/IOException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 390
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "expectedSequenceNumber":J
    move-object v11, p0

    monitor-enter v11

    move-object v6, v0

    :try_start_0
    invoke-direct {v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 446
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v4, v6

    .line 447
    .local v4, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-wide v6, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-static {v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 449
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 467
    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :goto_0
    monitor-exit v11

    return-object v0

    .line 451
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_1
    move-object v6, v4

    if-nez v6, :cond_3

    .line 452
    :try_start_1
    new-instance v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    move-object v4, v6

    .line 453
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 458
    :cond_2
    new-instance v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v4

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    move-object v5, v6

    .line 459
    .local v5, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v6, v4

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v6

    .line 462
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v7, "DIRTY"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v6

    .line 463
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v6

    .line 464
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v6

    .line 465
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v6

    .line 466
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 467
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 454
    .end local v5    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :cond_3
    move-object v6, v4

    invoke-static {v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    .line 455
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 445
    .end local v4    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/InputStreamReader;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    sget-object v4, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "in":Ljava/io/InputStream;
    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    const/16 v2, 0x7d0

    move v1, v2

    .line 570
    .local v1, "redundantOpCompactThreshold":I
    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    move-object/from16 v1, p0

    .local v1, "directory":Ljava/io/File;
    move/from16 v2, p1

    .local v2, "appVersion":I
    move/from16 v3, p2

    .local v3, "valueCount":I
    move-wide/from16 v4, p3

    .local v4, "maxSize":J
    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    .line 198
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string/jumbo v11, "maxSize <= 0"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 200
    :cond_0
    move v9, v3

    if-gtz v9, :cond_1

    .line 201
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string/jumbo v11, "valueCount <= 0"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 205
    :cond_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    const-string/jumbo v12, "journal.bkp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v9

    .line 206
    .local v6, "backupFile":Ljava/io/File;
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 207
    new-instance v9, Ljava/io/File;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    const-string/jumbo v12, "journal"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v9

    .line 209
    .local v7, "journalFile":Ljava/io/File;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 210
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    .line 217
    .end local v7    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v9, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-wide v14, v4

    invoke-direct/range {v10 .. v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v7, v9

    .line 218
    .local v7, "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v9, v7

    iget-object v9, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 220
    move-object v9, v7

    :try_start_0
    invoke-direct {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournal()V

    .line 221
    move-object v9, v7

    invoke-direct {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    move-object v9, v7

    move-object v1, v9

    .line 238
    .end local v1    # "directory":Ljava/io/File;
    :goto_1
    return-object v1

    .line 212
    .restart local v1    # "directory":Ljava/io/File;
    .local v7, "journalFile":Ljava/io/File;
    :cond_3
    move-object v9, v6

    move-object v10, v7

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 223
    .local v7, "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 224
    .local v8, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DiskLruCache "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is corrupt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", removing"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    move-object v9, v7

    invoke-virtual {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->delete()V

    .line 235
    .end local v8    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_4
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v9

    .line 236
    new-instance v9, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-wide v14, v4

    invoke-direct/range {v10 .. v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v7, v9

    .line 237
    move-object v9, v7

    invoke-direct {v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 238
    move-object v9, v7

    move-object v1, v9

    goto :goto_1
.end method

.method private processJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 326
    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 327
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v3, v5

    .line 328
    .local v3, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v5, v3

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v5

    if-nez v5, :cond_1

    .line 329
    const/4 v5, 0x0

    move v4, v5

    .local v4, "t":I
    :goto_1
    move v5, v4

    move-object v6, v1

    iget v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v5, v6, :cond_0

    .line 330
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    move-object v8, v3

    invoke-static {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    move v9, v4

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 340
    :cond_0
    :goto_2
    goto :goto_0

    .line 333
    .end local v4    # "t":I
    :cond_1
    move-object v5, v3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v5

    .line 334
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "t":I
    :goto_3
    move v5, v4

    move-object v6, v1

    iget v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v5, v6, :cond_2

    .line 335
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 336
    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 338
    :cond_2
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 341
    .end local v3    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v4    # "t":I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    new-instance v11, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v1

    iget-object v15, v15, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v14, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v14}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v2, v11

    .line 244
    .local v2, "reader":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    move-object v11, v2

    :try_start_0
    invoke-virtual {v11}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 245
    .local v3, "magic":Ljava/lang/String;
    move-object v11, v2

    invoke-virtual {v11}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 246
    .local v4, "version":Ljava/lang/String;
    move-object v11, v2

    invoke-virtual {v11}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 247
    .local v5, "appVersionString":Ljava/lang/String;
    move-object v11, v2

    invoke-virtual {v11}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 248
    .local v6, "valueCountString":Ljava/lang/String;
    move-object v11, v2

    invoke-virtual {v11}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 249
    .local v7, "blank":Ljava/lang/String;
    const-string/jumbo v11, "libcore.io.DiskLruCache"

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "1"

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v1

    iget v11, v11, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v1

    iget v11, v11, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, ""

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 254
    :cond_0
    new-instance v11, Ljava/io/IOException;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unexpected journal header: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v3    # "magic":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    .end local v5    # "appVersionString":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "blank":Ljava/lang/String;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    invoke-static {v11}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v11, v10

    throw v11

    .line 258
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v4    # "version":Ljava/lang/String;
    .restart local v5    # "appVersionString":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "blank":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    move v8, v11

    .line 261
    .local v8, "lineCount":I
    :goto_0
    move-object v11, v1

    move-object v12, v2

    :try_start_1
    invoke-virtual {v12}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    add-int/lit8 v8, v8, 0x1

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 267
    .local v9, "endOfJournal":Ljava/io/EOFException;
    move-object v11, v1

    move v12, v8

    move-object v13, v1

    :try_start_2
    iget-object v13, v13, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v11, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 270
    move-object v11, v2

    invoke-virtual {v11}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 271
    move-object v11, v1

    invoke-direct {v11}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :goto_1
    move-object v11, v2

    invoke-static {v11}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    .line 279
    return-void

    .line 273
    :cond_2
    move-object v11, v1

    :try_start_3
    new-instance v12, Ljava/io/BufferedWriter;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    new-instance v14, Ljava/io/OutputStreamWriter;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-direct/range {v17 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v17, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct/range {v15 .. v17}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v12, v11, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object/from16 v1, p1

    .local v1, "line":Ljava/lang/String;
    move-object v8, v1

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v2, v8

    .line 283
    .local v2, "firstSpace":I
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 284
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected journal line: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 287
    :cond_0
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 288
    .local v3, "keyBegin":I
    move-object v8, v1

    const/16 v9, 0x20

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    move v4, v8

    .line 290
    .local v4, "secondSpace":I
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 291
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 292
    .local v5, "key":Ljava/lang/String;
    move v8, v2

    const-string/jumbo v9, "REMOVE"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_2

    move-object v8, v1

    const-string/jumbo v9, "REMOVE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 293
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 294
    .line 318
    :goto_0
    return-void

    .line 297
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    move-object v8, v1

    move v9, v3

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 300
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v6, v8

    .line 301
    .local v6, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v8, v6

    if-nez v8, :cond_3

    .line 302
    new-instance v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    move-object v6, v8

    .line 303
    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 306
    :cond_3
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    move v8, v2

    const-string/jumbo v9, "CLEAN"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_4

    move-object v8, v1

    const-string/jumbo v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 307
    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 308
    .local v7, "parts":[Ljava/lang/String;
    move-object v8, v6

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z

    move-result v8

    .line 309
    move-object v8, v6

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v8

    .line 310
    move-object v8, v6

    move-object v9, v7

    invoke-static {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 311
    .line 318
    .end local v7    # "parts":[Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 311
    :cond_4
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    move v8, v2

    const-string/jumbo v9, "DIRTY"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_5

    move-object v8, v1

    const-string/jumbo v9, "DIRTY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 312
    move-object v8, v6

    new-instance v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v6

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V

    invoke-static {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v8

    goto :goto_1

    .line 313
    :cond_5
    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    move v8, v2

    const-string/jumbo v9, "READ"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_6

    move-object v8, v1

    const-string/jumbo v9, "READ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    .line 316
    :cond_6
    new-instance v8, Ljava/io/IOException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected journal line: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    move-object/from16 v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object/from16 v14, p0

    monitor-enter v14

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v5, :cond_0

    .line 349
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    .line 352
    :cond_0
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    new-instance v7, Ljava/io/OutputStreamWriter;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Ljava/io/FileOutputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v10, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v5

    .line 355
    .local v1, "writer":Ljava/io/Writer;
    move-object v5, v1

    :try_start_1
    const-string/jumbo v6, "libcore.io.DiskLruCache"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    move-object v5, v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    move-object v5, v1

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    move-object v5, v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    move-object v5, v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    move-object v5, v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    move-object v5, v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v3, v5

    .line 366
    .local v3, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v5, v3

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 367
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DIRTY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-static {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    :goto_1
    goto :goto_0

    .line 369
    :cond_1
    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CLEAN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-static {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 373
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    move-object v5, v4

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v0

    monitor-exit v14

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0

    .line 373
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .restart local v1    # "writer":Ljava/io/Writer;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v5, v1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    .line 374
    .line 376
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 382
    move-object v5, v0

    new-instance v6, Ljava/io/BufferedWriter;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    new-instance v8, Ljava/io/OutputStreamWriter;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Ljava/io/FileOutputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v11, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v6, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    monitor-exit v14

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "from":Ljava/io/File;
    move-object v1, p1

    .local v1, "to":Ljava/io/File;
    move v2, p2

    .local v2, "deleteDestination":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 394
    move-object v3, v1

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 396
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    new-instance v3, Ljava/io/IOException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 399
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :goto_0
    move-object v2, v0

    iget-wide v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    move-object v4, v0

    iget-wide v4, v4, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 646
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v1, v2

    .line 647
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    move-result v2

    .line 648
    goto :goto_0

    .line 649
    .end local v1    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 632
    .line 642
    :goto_0
    monitor-exit v6

    return-void

    .line 634
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v2, v3

    .line 635
    .local v2, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 636
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 638
    :cond_1
    goto :goto_1

    .line 639
    .end local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 640
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 641
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    goto :goto_0

    .line 631
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 658
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 659
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, -0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 625
    move-object v1, v0

    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 626
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit v2

    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object/from16 v2, p1

    .local v2, "key":Ljava/lang/String;
    move-object/from16 v17, p0

    monitor-enter v17

    move-object v8, v1

    :try_start_0
    invoke-direct {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 408
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v8

    .line 409
    .local v3, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 410
    const/4 v8, 0x0

    move-object v1, v8

    .line 433
    .end local v1    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :goto_0
    monitor-exit v17

    return-object v1

    .line 413
    .restart local v1    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_0
    move-object v8, v3

    :try_start_1
    invoke-static {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 414
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_0

    .line 417
    :cond_1
    move-object v8, v3

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move-object v4, v8

    .local v4, "arr$":[Ljava/io/File;
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "len$":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i$":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 419
    .local v7, "file":Ljava/io/File;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 420
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_0

    .line 417
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 424
    .end local v7    # "file":Ljava/io/File;
    :cond_3
    move-object v8, v1

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    iget v9, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 425
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v9, "READ"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    .line 426
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    .line 427
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    .line 428
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v8

    .line 429
    move-object v8, v1

    invoke-direct {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 430
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v9, v1

    iget-object v9, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 433
    :cond_4
    new-instance v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-static {v12}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v12

    move-object v14, v3

    iget-object v14, v14, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move-object v15, v3

    invoke-static {v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v8

    goto/16 :goto_0

    .line 407
    .end local v3    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :catchall_0
    move-exception v1

    monitor-exit v17

    .end local v1    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    monitor-exit v3

    return-wide v0

    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 3

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v10, p0

    monitor-enter v10

    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 582
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v2, v5

    .line 583
    .local v2, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_1

    .line 584
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 608
    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :goto_0
    monitor-exit v10

    return v0

    .line 587
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v0

    :try_start_1
    iget v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v5, v6, :cond_3

    .line 588
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    move-object v4, v5

    .line 589
    .local v4, "file":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 590
    new-instance v5, Ljava/io/IOException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "failed to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    .end local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v3    # "i":I
    .end local v4    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0

    .line 592
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .restart local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .restart local v3    # "i":I
    .restart local v4    # "file":Ljava/io/File;
    :cond_2
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    :try_start_2
    iget-wide v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    move-object v8, v2

    invoke-static {v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    move v9, v3

    aget-wide v8, v8, v9

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 593
    move-object v5, v2

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    move v6, v3

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    .line 587
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 596
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 597
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 598
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    .line 599
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 600
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v5

    .line 602
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 604
    move-object v5, v0

    invoke-direct {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 605
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 608
    :cond_4
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 7

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-wide v1, p1

    .local v1, "maxSize":J
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-wide v4, v1

    :try_start_0
    iput-wide v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 489
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 490
    monitor-exit v6

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized size()J
    .locals 4

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    monitor-exit v3

    return-wide v0

    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    throw v0
.end method
