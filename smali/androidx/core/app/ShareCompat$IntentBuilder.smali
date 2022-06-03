.class public Landroidx/core/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "launchingActivity":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 215
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    .line 216
    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 217
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 218
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 219
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 220
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "extra":Ljava/lang/String;
    move-object v2, p2

    .local v2, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 281
    .local v3, "currentAddresses":[Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    array-length v6, v6

    :goto_0
    move v4, v6

    .line 282
    .local v4, "currentLength":I
    move v6, v4

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v6, v6, [Ljava/lang/String;

    move-object v5, v6

    .line 283
    .local v5, "finalAddresses":[Ljava/lang/String;
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 284
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 285
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v5

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 288
    return-void

    .line 281
    .end local v4    # "currentLength":I
    .end local v5    # "finalAddresses":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "extra":Ljava/lang/String;
    move-object v2, p2

    .local v2, "add":[Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v7

    move-object v3, v7

    .line 293
    .local v3, "intent":Landroid/content/Intent;
    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 294
    .local v4, "old":[Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    array-length v7, v7

    :goto_0
    move v5, v7

    .line 295
    .local v5, "oldLength":I
    move v7, v5

    move-object v8, v2

    array-length v8, v8

    add-int/2addr v7, v8

    new-array v7, v7, [Ljava/lang/String;

    move-object v6, v7

    .line 296
    .local v6, "result":[Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :cond_0
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v6

    move v10, v5

    move-object v11, v2

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    move-object v7, v3

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 299
    return-void

    .line 294
    .end local v5    # "oldLength":I
    .end local v6    # "result":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "launchingActivity":Landroid/app/Activity;
    new-instance v1, Landroidx/core/app/ShareCompat$IntentBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/app/ShareCompat$IntentBuilder;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    .end local v0    # "launchingActivity":Landroid/app/Activity;
    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 6

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "address":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 542
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 544
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 545
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "addresses":[Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "android.intent.extra.BCC"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 557
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public addEmailCc(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 6

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "address":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 502
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 504
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 505
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public addEmailCc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "addresses":[Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "android.intent.extra.CC"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 517
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public addEmailTo(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 6

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "address":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 462
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 464
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 465
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public addEmailTo([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "addresses":[Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "android.intent.extra.EMAIL"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 477
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public addStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 7

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "streamUri":Landroid/net/Uri;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object v2, v3

    .line 423
    .local v2, "currentStream":Landroid/net/Uri;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_0

    .line 424
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v3

    move-object v0, v3

    .line 434
    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    :goto_0
    return-object v0

    .line 426
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 427
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 429
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 430
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 431
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 433
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 434
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public createChooserIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 233
    move-object v3, v0

    const-string/jumbo v4, "android.intent.extra.EMAIL"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 234
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 236
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 237
    move-object v3, v0

    const-string/jumbo v4, "android.intent.extra.CC"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 238
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 240
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 241
    move-object v3, v0

    const-string/jumbo v4, "android.intent.extra.BCC"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 246
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 247
    .local v1, "needsSendMultiple":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 249
    .local v2, "isSendMultiple":Z
    move v3, v1

    if-nez v3, :cond_3

    move v3, v2

    if-eqz v3, :cond_3

    .line 252
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 253
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 254
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 258
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 261
    :cond_3
    move v3, v1

    if-eqz v3, :cond_4

    move v3, v2

    if-nez v3, :cond_4

    .line 264
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 265
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 266
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    .line 272
    :cond_4
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0

    .line 246
    .end local v1    # "needsSendMultiple":Z
    .end local v2    # "isSendMultiple":Z
    .restart local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 256
    .restart local v1    # "needsSendMultiple":Z
    .restart local v2    # "isSendMultiple":Z
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "title":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    .line 333
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "addresses":[Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.BCC"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 530
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setEmailCc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "addresses":[Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.CC"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 490
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setEmailTo([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "addresses":[Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 447
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 449
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.EMAIL"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 450
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setHtmlText(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "htmlText":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.HTML_TEXT"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 384
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v2

    .line 388
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "streamUri":Landroid/net/Uri;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 405
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 407
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "subject":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 569
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 5

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TEXT"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 368
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 355
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    return-object v0
.end method

.method public startChooser()V
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method
