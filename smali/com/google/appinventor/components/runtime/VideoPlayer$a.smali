.class final Lcom/google/appinventor/components/runtime/VideoPlayer$a;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field public iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

.field public iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

.field vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

.field wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 649
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 650
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 635
    move-object v3, v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    .line 641
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    .line 647
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    .line 651
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V
    .locals 18

    .prologue
    .line 667
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v10, 0x0

    move v4, v10

    .line 668
    const/4 v10, 0x0

    move v5, v10

    .line 669
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v10}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v10

    move v6, v10

    .line 670
    const-string/jumbo v10, "VideoPlayer..onMeasure"

    const-string/jumbo v11, "Device Density = "

    move v12, v6

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 671
    const-string/jumbo v10, "VideoPlayer..onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "AI setting dimensions as:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    iget v12, v12, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget v12, v12, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 673
    const-string/jumbo v10, "VideoPlayer..onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Dimenions from super>>"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v12, v1

    .line 674
    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    .line 675
    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 673
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 678
    const/16 v10, 0xb0

    move v7, v10

    .line 679
    const/16 v10, 0x90

    move v8, v10

    .line 681
    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    packed-switch v10, :pswitch_data_0

    .line 715
    const/4 v10, 0x1

    move v5, v10

    .line 716
    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    move v7, v10

    .line 719
    :cond_0
    :goto_0
    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    const/16 v11, -0x3e8

    if-gt v10, v11, :cond_4

    .line 720
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v10}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v10

    move/from16 v17, v10

    move/from16 v10, v17

    move/from16 v11, v17

    .line 721
    move v9, v11

    if-nez v10, :cond_1

    move v10, v3

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 722
    const-string/jumbo v10, "VideoPlayer...onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Width not stable... trying again (onMeasure "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 723
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-direct/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/VideoPlayer$a$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v10

    .line 729
    move-object v10, v0

    const/16 v11, 0x64

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMeasuredDimension(II)V

    .line 730
    .line 795
    :goto_1
    return-void

    .line 683
    :pswitch_0
    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 697
    :goto_2
    goto :goto_0

    .line 686
    :sswitch_0
    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move v7, v10

    .line 687
    goto :goto_0

    .line 690
    :sswitch_1
    move-object v10, v0

    :try_start_0
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    move v7, v10

    .line 695
    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v10

    const/16 v10, 0xb0

    move v7, v10

    .line 695
    goto/16 :goto_0

    .line 694
    :catch_1
    move-exception v10

    const/16 v10, 0xb0

    move v7, v10

    goto :goto_2

    .line 699
    :pswitch_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 701
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v10

    move v7, v10

    .line 702
    const-string/jumbo v10, "VideoPlayer.onMeasure"

    const-string/jumbo v11, "Got width from MediaPlayer>"

    move v12, v7

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    .line 710
    goto/16 :goto_0

    .line 704
    :catch_2
    move-exception v10

    move-object v9, v10

    .line 705
    const-string/jumbo v10, "VideoPlayer..onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Failed to get MediaPlayer for width:\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v9

    .line 708
    invoke-virtual {v12}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 705
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 709
    const/16 v10, 0xb0

    move v7, v10

    .line 710
    goto/16 :goto_0

    .line 732
    :cond_1
    move v10, v9

    move v11, v7

    const/16 v12, -0x3e8

    add-int/lit16 v11, v11, 0x3e8

    neg-int v11, v11

    mul-int/2addr v10, v11

    const/16 v11, 0x64

    div-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    .line 737
    :cond_2
    :goto_3
    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    packed-switch v10, :pswitch_data_1

    .line 766
    const/4 v10, 0x1

    move v4, v10

    .line 767
    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    move v8, v10

    .line 770
    :cond_3
    :goto_4
    move-object v10, v0

    iget v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    const/16 v11, -0x3e8

    if-gt v10, v11, :cond_7

    .line 771
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v10}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v10

    move/from16 v17, v10

    move/from16 v10, v17

    move/from16 v11, v17

    .line 772
    move v9, v11

    if-nez v10, :cond_5

    move v10, v3

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    .line 773
    const-string/jumbo v10, "VideoPlayer...onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Height not stable... trying again (onMeasure "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 774
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/VideoPlayer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    invoke-direct/range {v12 .. v16}, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v10

    .line 780
    move-object v10, v0

    const/16 v11, 0x64

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMeasuredDimension(II)V

    .line 781
    goto/16 :goto_1

    .line 733
    :cond_4
    move v10, v5

    if-eqz v10, :cond_2

    .line 734
    move v10, v7

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v7, v10

    goto/16 :goto_3

    .line 739
    :pswitch_2
    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    .line 749
    :goto_5
    goto :goto_4

    .line 742
    :sswitch_2
    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move v8, v10

    goto :goto_5

    .line 751
    :pswitch_3
    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 753
    move-object v10, v0

    :try_start_2
    iget-object v10, v10, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v10

    move v8, v10

    .line 754
    const-string/jumbo v10, "VideoPlayer.onMeasure"

    const-string/jumbo v11, "Got height from MediaPlayer>"

    move v12, v8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v10

    .line 762
    goto/16 :goto_4

    .line 756
    :catch_3
    move-exception v10

    move-object v9, v10

    .line 757
    const-string/jumbo v10, "VideoPlayer..onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Failed to get MediaPlayer for height:\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v9

    .line 760
    invoke-virtual {v12}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 757
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 761
    const/16 v10, 0x90

    move v8, v10

    .line 762
    goto/16 :goto_4

    .line 783
    :cond_5
    move v10, v9

    move v11, v8

    const/16 v12, -0x3e8

    add-int/lit16 v11, v11, 0x3e8

    neg-int v11, v11

    mul-int/2addr v10, v11

    const/16 v11, 0x64

    div-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 790
    :cond_6
    :goto_6
    const-string/jumbo v10, "VideoPlayer.onMeasure"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Setting dimensions to:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 792
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    move v11, v7

    move v12, v8

    invoke-interface {v10, v11, v12}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 794
    move-object v10, v0

    move v11, v7

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->setMeasuredDimension(II)V

    .line 795
    goto/16 :goto_1

    .line 784
    :cond_7
    move v10, v4

    if-eqz v10, :cond_6

    .line 785
    move v10, v8

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    goto :goto_6

    .line 681
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 683
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 737
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 739
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V
    .locals 8

    .prologue
    .line 627
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V

    return-void
.end method


# virtual methods
.method public final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)V
    .locals 5

    .prologue
    .line 801
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    .line 802
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    .line 804
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->forceLayout()V

    .line 805
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidate()V

    .line 806
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .prologue
    .line 654
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V

    .line 655
    return-void
.end method

.method public final sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb()V
    .locals 3

    .prologue
    .line 812
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Boolean;

    .line 813
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/media/MediaPlayer;

    .line 816
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->forceLayout()V

    .line 817
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->invalidate()V

    .line 819
    return-void
.end method
