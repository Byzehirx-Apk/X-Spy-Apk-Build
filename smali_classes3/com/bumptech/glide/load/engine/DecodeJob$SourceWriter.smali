.class Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;TDataType;)V"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "encoder":Lcom/bumptech/glide/load/Encoder;, "Lcom/bumptech/glide/load/Encoder<TDataType;>;"
    move-object v3, p3

    .local v3, "data":Ljava/lang/Object;, "TDataType;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 260
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    .line 261
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 10

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    const/4 v7, 0x0

    move v2, v7

    .line 267
    .local v2, "success":Z
    const/4 v7, 0x0

    move-object v3, v7

    .line 269
    .local v3, "os":Ljava/io/OutputStream;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v7}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v7

    move-object v3, v7

    .line 270
    move-object v7, v0

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    move v2, v7

    .line 276
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 278
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .line 284
    :cond_0
    :goto_0
    move v7, v2

    move v0, v7

    .end local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    return v0

    .line 279
    .restart local v0    # "this":Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;, "Lcom/bumptech/glide/load/engine/DecodeJob<TA;TT;TZ;>.SourceWriter<TDataType;>;"
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 281
    goto :goto_0

    .line 271
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 272
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v7, "DecodeJob"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 273
    const-string/jumbo v7, "DecodeJob"

    const-string/jumbo v8, "Failed to find file to write to disk cache"

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 276
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 278
    move-object v7, v3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 281
    goto :goto_0

    .line 279
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 281
    goto :goto_0

    .line 276
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    if-eqz v7, :cond_2

    .line 278
    move-object v7, v3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 281
    :cond_2
    :goto_1
    move-object v7, v5

    throw v7

    .line 279
    :catch_3
    move-exception v7

    move-object v6, v7

    goto :goto_1
.end method
