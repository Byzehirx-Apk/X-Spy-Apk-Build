.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 520
    return-void
.end method


# virtual methods
.method public final skip(J)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    move-object v1, p0

    move-wide/from16 v2, p1

    const-wide/16 v8, 0x0

    move-wide v4, v8

    .line 525
    :goto_0
    move-wide v8, v4

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 526
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$a;->in:Ljava/io/InputStream;

    move-wide v9, v2

    move-wide v11, v4

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    move-wide v13, v8

    move-wide v8, v13

    move-wide v10, v13

    .line 527
    move-wide v6, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 528
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil$a;->read()I

    move-result v8

    if-ltz v8, :cond_1

    .line 531
    const-wide/16 v8, 0x1

    move-wide v6, v8

    .line 534
    :cond_0
    move-wide v8, v4

    move-wide v10, v6

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 535
    goto :goto_0

    .line 536
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    return-wide v1
.end method
