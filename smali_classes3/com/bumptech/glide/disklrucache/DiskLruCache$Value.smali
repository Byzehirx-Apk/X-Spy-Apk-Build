.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 11

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move-object v1, p1

    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-wide v3, p3

    .local v3, "sequenceNumber":J
    move-object/from16 v5, p5

    .local v5, "files":[Ljava/io/File;
    move-object/from16 v6, p6

    .local v6, "lengths":[J
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 673
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    .line 674
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    .line 675
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    .line 676
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 17

    .prologue
    .line 666
    move-object/from16 v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move-object/from16 v2, p1

    .local v2, "x0":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    move-object/from16 v3, p2

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p3

    .local v4, "x2":J
    move-object/from16 v6, p5

    .local v6, "x3":[Ljava/io/File;
    move-object/from16 v7, p6

    .local v7, "x4":[J
    move-object/from16 v8, p7

    .local v8, "x5":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    move-object v1, p0

    .local v1, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move-object v2, v1

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v3, v1

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    move-object v4, v1

    iget-wide v4, v4, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    invoke-static {v2, v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    return-object v1
.end method

.method public getFile(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    return-object v0
.end method

.method public getLength(I)J
    .locals 4

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    move v1, p1

    .local v1, "index":I
    new-instance v3, Ljava/io/FileInputStream;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    move v6, v1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 695
    .local v2, "is":Ljava/io/InputStream;
    move-object v3, v2

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    return-object v0
.end method
