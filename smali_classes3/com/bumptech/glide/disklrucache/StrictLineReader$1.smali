.class Lcom/bumptech/glide/disklrucache/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader$1;
    move-object v1, p1

    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->this$0:Lcom/bumptech/glide/disklrucache/StrictLineReader;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/StrictLineReader$1;
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->count:I

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->buf:[B

    move-object v4, v0

    iget v4, v4, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->count:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->count:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    move v1, v3

    .line 153
    .local v1, "length":I
    :try_start_0
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->buf:[B

    const/4 v6, 0x0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->this$0:Lcom/bumptech/glide/disklrucache/StrictLineReader;

    invoke-static {v8}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/StrictLineReader$1;
    return-object v0

    .line 151
    .end local v1    # "length":I
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/StrictLineReader$1;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->count:I

    goto :goto_0

    .line 154
    .restart local v1    # "length":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 155
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
