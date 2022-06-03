.class final Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

.field dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, p1

    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 823
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 824
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v7

    new-array v7, v7, [J

    iput-object v7, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 825
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v7

    new-array v7, v7, [Ljava/io/File;

    iput-object v7, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 826
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v7

    new-array v7, v7, [Ljava/io/File;

    iput-object v7, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 829
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v3, v6

    .line 830
    .local v3, "fileBuilder":Ljava/lang/StringBuilder;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v4, v6

    .line 831
    .local v4, "truncateTo":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v1

    invoke-static {v7}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 832
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 833
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v7, v5

    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-static {v10}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 834
    move-object v6, v3

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 835
    move-object v6, v0

    iget-object v6, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v7, v5

    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-static {v10}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 836
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 831
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 838
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 7

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
    .locals 3

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, v0

    iget-wide v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    move-wide v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-wide v0
.end method

.method static synthetic access$1202(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J
    .locals 13

    .prologue
    .line 803
    move-object v1, p0

    .local v1, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-wide v2, p1

    .local v2, "x1":J
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    move-wide v1, v4

    .end local v1    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-wide v1
.end method

.method static synthetic access$600(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    move v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return v0
.end method

.method static synthetic access$602(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z
    .locals 7

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    move v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return v0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 2

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-object v0, v1

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v0
.end method

.method static synthetic access$702(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 7

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, p1

    .local v1, "x1":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-object v0, v2

    .end local v0    # "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v0
.end method

.method static synthetic access$800(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, p1

    .local v1, "x1":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v1, p1

    .local v1, "strings":[Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move-object v2, p1

    .local v2, "strings":[Ljava/lang/String;
    move-object v4, v2

    array-length v4, v4

    move-object v5, v1

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 851
    move-object v4, v1

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 855
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    :try_start_0
    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 856
    move-object v4, v1

    iget-object v4, v4, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 860
    .line 861
    :cond_1
    return-void

    .line 858
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 859
    .local v3, "e":Ljava/lang/NumberFormatException;
    move-object v4, v1

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 872
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v8

    .line 842
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v8, v1

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    move-object v3, v8

    .local v3, "arr$":[J
    move-object v8, v3

    array-length v8, v8

    move v4, v8

    .local v4, "len$":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i$":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    move-object v8, v3

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v6, v8

    .line 843
    .local v6, "size":J
    move-object v8, v2

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 842
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 845
    .end local v6    # "size":J
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    return-object v1
.end method
