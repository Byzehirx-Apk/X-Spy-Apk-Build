.class Landroidx/recyclerview/widget/ChildHelper$Bucket;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# static fields
.field static final BITS_PER_WORD:I = 0x40

.field static final LAST_BIT:J = -0x8000000000000000L


# instance fields
.field mData:J

.field mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 401
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    return-void
.end method

.method private ensureNext()V
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v1, :cond_0

    .line 416
    move-object v1, v0

    new-instance v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object v2, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method clear(I)V
    .locals 11

    .prologue
    .line 421
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move v2, p1

    .local v2, "index":I
    move v3, v2

    const/16 v4, 0x40

    if-lt v3, v4, :cond_1

    .line 422
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v3, :cond_0

    .line 423
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    const/16 v5, 0x40

    add-int/lit8 v4, v4, -0x40

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    move-object v3, v1

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget-wide v4, v4, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v6, 0x1

    move v8, v2

    shl-long/2addr v6, v8

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method countOnesBefore(I)I
    .locals 8

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v2, :cond_1

    .line 494
    move v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 495
    move-object v2, v0

    iget-wide v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    move v0, v2

    .line 502
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :goto_0
    return v0

    .line 497
    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v4, 0x1

    move v6, v1

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 499
    :cond_1
    move v2, v1

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 500
    move-object v2, v0

    iget-wide v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v4, 0x1

    move v6, v1

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 502
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v3, v1

    const/16 v4, 0x40

    add-int/lit8 v3, v3, -0x40

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v2

    move-object v3, v0

    iget-wide v3, v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    add-int/2addr v2, v3

    move v0, v2

    goto :goto_0
.end method

.method get(I)Z
    .locals 7

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move v1, p1

    .local v1, "index":I
    move v2, v1

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    .line 433
    move-object v2, v0

    invoke-direct {v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    .line 434
    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v3, v1

    const/16 v4, 0x40

    add-int/lit8 v3, v3, -0x40

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v2

    move v0, v2

    .line 436
    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v4, 0x1

    move v6, v1

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method insert(IZ)V
    .locals 16

    .prologue
    .line 448
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move/from16 v1, p1

    .local v1, "index":I
    move/from16 v2, p2

    .local v2, "value":Z
    move v10, v1

    const/16 v11, 0x40

    if-lt v10, v11, :cond_1

    .line 449
    move-object v10, v0

    invoke-direct {v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    .line 450
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v11, v1

    const/16 v12, 0x40

    add-int/lit8 v11, v11, -0x40

    move v12, v2

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    move-object v10, v0

    iget-wide v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    .line 453
    .local v3, "lastBit":Z
    const-wide/16 v10, 0x1

    move v12, v1

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-wide v4, v10

    .line 454
    .local v4, "mask":J
    move-object v10, v0

    iget-wide v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v4

    and-long/2addr v10, v12

    move-wide v6, v10

    .line 455
    .local v6, "before":J
    move-object v10, v0

    iget-wide v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v4

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v10, v12

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    move-wide v8, v10

    .line 456
    .local v8, "after":J
    move-object v10, v0

    move-wide v11, v6

    move-wide v13, v8

    or-long/2addr v11, v13

    iput-wide v11, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    .line 457
    move v10, v2

    if-eqz v10, :cond_4

    .line 458
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    .line 462
    :goto_2
    move v10, v3

    if-nez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v10, :cond_0

    .line 463
    :cond_2
    move-object v10, v0

    invoke-direct {v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    .line 464
    move-object v10, v0

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v11, 0x0

    move v12, v3

    invoke-virtual {v10, v11, v12}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    goto :goto_0

    .line 452
    .end local v3    # "lastBit":Z
    .end local v4    # "mask":J
    .end local v6    # "before":J
    .end local v8    # "after":J
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 460
    .restart local v3    # "lastBit":Z
    .restart local v4    # "mask":J
    .restart local v6    # "before":J
    .restart local v8    # "after":J
    :cond_4
    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    goto :goto_2
.end method

.method remove(I)Z
    .locals 18

    .prologue
    .line 470
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move/from16 v2, p1

    .local v2, "index":I
    move v10, v2

    const/16 v11, 0x40

    if-lt v10, v11, :cond_0

    .line 471
    move-object v10, v1

    invoke-direct {v10}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    .line 472
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v11, v2

    const/16 v12, 0x40

    add-int/lit8 v11, v11, -0x40

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v10

    move v1, v10

    .line 488
    .end local v1    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :goto_0
    return v1

    .line 474
    .restart local v1    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :cond_0
    const-wide/16 v10, 0x1

    move v12, v2

    shl-long/2addr v10, v12

    move-wide v3, v10

    .line 475
    .local v3, "mask":J
    move-object v10, v1

    iget-wide v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v3

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    move v5, v10

    .line 476
    .local v5, "value":Z
    move-object v10, v1

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    iget-wide v11, v11, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide v13, v3

    const-wide/16 v15, -0x1

    xor-long/2addr v13, v15

    and-long/2addr v11, v13

    iput-wide v11, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    .line 477
    move-wide v10, v3

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-wide v3, v10

    .line 478
    move-object v10, v1

    iget-wide v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v3

    and-long/2addr v10, v12

    move-wide v6, v10

    .line 480
    .local v6, "before":J
    move-object v10, v1

    iget-wide v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    move-wide v12, v3

    const-wide/16 v14, -0x1

    xor-long/2addr v12, v14

    and-long/2addr v10, v12

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    move-wide v8, v10

    .line 481
    .local v8, "after":J
    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v8

    or-long/2addr v11, v13

    iput-wide v11, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    .line 482
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v10, :cond_2

    .line 483
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 484
    move-object v10, v1

    const/16 v11, 0x3f

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    .line 486
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v10

    .line 488
    :cond_2
    move v10, v5

    move v1, v10

    goto :goto_0

    .line 475
    .end local v5    # "value":Z
    .end local v6    # "before":J
    .end local v8    # "after":J
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    .line 442
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-eqz v1, :cond_0

    .line 443
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    .line 445
    :cond_0
    return-void
.end method

.method set(I)V
    .locals 10

    .prologue
    .line 406
    move-object v1, p0

    .local v1, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move v2, p1

    .local v2, "index":I
    move v3, v2

    const/16 v4, 0x40

    if-lt v3, v4, :cond_0

    .line 407
    move-object v3, v1

    invoke-direct {v3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->ensureNext()V

    .line 408
    move-object v3, v1

    iget-object v3, v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move v4, v2

    const/16 v5, 0x40

    add-int/lit8 v4, v4, -0x40

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-wide v4, v4, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    const-wide/16 v6, 0x1

    move v8, v2

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    move-object v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-wide v1, v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    .line 509
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    return-object v0

    .line 508
    .restart local v0    # "this":Landroidx/recyclerview/widget/ChildHelper$Bucket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 509
    invoke-virtual {v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "xx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
