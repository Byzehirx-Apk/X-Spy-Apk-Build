.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
    .locals 5

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v1, p1

    move-object v2, p2

    .local v2, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 711
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 712
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 713
    return-void

    .line 712
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v4

    new-array v4, v4, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 7

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v3, p3

    .local v3, "x2":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .locals 2

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    return-object v0
.end method

.method static synthetic access$1500(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)[Z
    .locals 2

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    return-object v0
.end method

.method private newInputStream(I)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move v1, p1

    .local v1, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    .line 721
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v5

    move-object v6, v0

    if-eq v5, v6, :cond_0

    .line 722
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 732
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 724
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 725
    const/4 v5, 0x0

    move-object v6, v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 730
    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :goto_0
    return-object v0

    .line 728
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move v8, v1

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v2

    :try_start_3
    monitor-exit v6

    move-object v0, v5

    goto :goto_0

    .line 729
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 730
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    move-object v6, v2

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 791
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->committed:Z

    if-nez v2, :cond_0

    .line 796
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .line 800
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    .line 782
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 783
    return-void
.end method

.method public getFile(I)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move v1, p1

    .local v1, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 746
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v5

    move-object v6, v0

    if-eq v5, v6, :cond_0

    .line 747
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 757
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 749
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 750
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    move v6, v1

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 752
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v5

    move-object v3, v5

    .line 753
    .local v3, "dirtyFile":Ljava/io/File;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 754
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 756
    :cond_2
    move-object v5, v3

    move-object v6, v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 741
    .local v2, "in":Ljava/io/InputStream;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public set(ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 764
    .local v3, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 765
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    sget-object v9, Lcom/bumptech/glide/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v3, v6

    .line 766
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    move-object v6, v3

    invoke-static {v6}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 769
    .line 770
    return-void

    .line 768
    .end local v4    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-static {v6}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v5

    throw v6
.end method
