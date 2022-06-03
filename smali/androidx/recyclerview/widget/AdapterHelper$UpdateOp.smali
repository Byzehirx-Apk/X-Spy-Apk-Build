.class Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move v1, p1

    .local v1, "cmd":I
    move v2, p2

    .local v2, "positionStart":I
    move v3, p3

    .local v3, "itemCount":I
    move-object v4, p4

    .local v4, "payload":Ljava/lang/Object;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 652
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 653
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 654
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 655
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 656
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v1, v0

    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v1, :pswitch_data_0

    .line 669
    :pswitch_0
    const-string/jumbo v1, "??"

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :goto_0
    return-object v0

    .line 661
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :pswitch_1
    const-string/jumbo v1, "add"

    move-object v0, v1

    goto :goto_0

    .line 663
    :pswitch_2
    const-string/jumbo v1, "rm"

    move-object v0, v1

    goto :goto_0

    .line 665
    :pswitch_3
    const-string/jumbo v1, "up"

    move-object v0, v1

    goto :goto_0

    .line 667
    :pswitch_4
    const-string/jumbo v1, "mv"

    move-object v0, v1

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 682
    const/4 v3, 0x1

    move v0, v3

    .line 713
    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :goto_0
    return v0

    .line 684
    .restart local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 685
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 688
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-object v2, v3

    .line 690
    .local v2, "op":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_3

    .line 691
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 693
    :cond_3
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v4, v0

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 695
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v3, v4, :cond_4

    .line 696
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 699
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_5

    .line 700
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 702
    :cond_5
    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    move-object v4, v2

    iget v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_6

    .line 703
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 705
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 706
    move-object v3, v0

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 707
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 709
    :cond_7
    move-object v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 710
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 713
    :cond_8
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    move v1, v2

    .line 719
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    move v1, v2

    .line 720
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    move v1, v2

    .line 721
    move v2, v1

    move v0, v2

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 675
    invoke-virtual {v2}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",p:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    return-object v0
.end method
