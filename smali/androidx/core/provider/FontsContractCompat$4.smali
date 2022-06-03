.class final Landroidx/core/provider/FontsContractCompat$4;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 7

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$4;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$4;
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    invoke-static {v8, v9, v10}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v1, v8

    .line 549
    .line 551
    .local v1, "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v8

    if-eqz v8, :cond_0

    .line 552
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 573
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$4;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$4;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 580
    .line 643
    .end local v1    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 541
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$1;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$1;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 548
    goto :goto_0

    .line 554
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :pswitch_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$2;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$2;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 561
    goto :goto_0

    .line 563
    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$3;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$3;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 570
    goto :goto_0

    .line 584
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v8

    move-object v2, v8

    .line 585
    .local v2, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    array-length v8, v8

    if-nez v8, :cond_2

    .line 586
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$5;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$5;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 593
    goto :goto_0

    .line 595
    :cond_2
    move-object v8, v2

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 596
    .local v6, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v8

    if-eqz v8, :cond_4

    .line 599
    move-object v8, v6

    invoke-virtual {v8}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v8

    move v7, v8

    .line 600
    .local v7, "resultCode":I
    move v8, v7

    if-gez v8, :cond_3

    .line 603
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$6;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$6;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 618
    :goto_2
    goto/16 :goto_0

    .line 611
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$7;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move v12, v7

    invoke-direct {v10, v11, v12}, Landroidx/core/provider/FontsContractCompat$4$7;-><init>(Landroidx/core/provider/FontsContractCompat$4;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_2

    .line 595
    .end local v7    # "resultCode":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 622
    .end local v6    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroidx/core/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v8

    move-object v3, v8

    .line 624
    .local v3, "typeface":Landroid/graphics/Typeface;
    move-object v8, v3

    if-nez v8, :cond_6

    .line 627
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$8;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroidx/core/provider/FontsContractCompat$4$8;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 634
    goto/16 :goto_0

    .line 637
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/core/provider/FontsContractCompat$4$9;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Landroidx/core/provider/FontsContractCompat$4$9;-><init>(Landroidx/core/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 643
    goto/16 :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
