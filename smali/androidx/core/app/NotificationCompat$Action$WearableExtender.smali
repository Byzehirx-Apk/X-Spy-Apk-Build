.class public final Landroidx/core/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 3462
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3452
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3463
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 7

    .prologue
    .line 3470
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, p1

    .local v1, "action":Landroidx/core/app/NotificationCompat$Action;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3452
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3471
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 3472
    .local v2, "wearableBundle":Landroid/os/Bundle;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 3473
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "flags"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3474
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "inProgressLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 3475
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "confirmLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 3476
    move-object v3, v0

    move-object v4, v2

    const-string/jumbo v5, "cancelLabel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 3478
    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 8

    .prologue
    .line 3538
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move v1, p1

    .local v1, "mask":I
    move v2, p2

    .local v2, "value":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 3539
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    move v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3543
    :goto_0
    return-void

    .line 3541
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 3508
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;-><init>()V

    move-object v1, v2

    .line 3509
    .local v1, "that":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    iput v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    .line 3510
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 3511
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 3512
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 3513
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3434
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$Action$WearableExtender;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 7

    .prologue
    .line 3487
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, p1

    .local v1, "builder":Landroidx/core/app/NotificationCompat$Action$Builder;
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 3489
    .local v2, "wearableBundle":Landroid/os/Bundle;
    move-object v3, v0

    iget v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3490
    move-object v3, v2

    const-string/jumbo v4, "flags"

    move-object v5, v0

    iget v5, v5, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3492
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 3493
    move-object v3, v2

    const-string/jumbo v4, "inProgressLabel"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3495
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 3496
    move-object v3, v2

    const-string/jumbo v4, "confirmLabel"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3498
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 3499
    move-object v3, v2

    const-string/jumbo v4, "cancelLabel"

    move-object v5, v0

    iget-object v5, v5, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3502
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.wearable.EXTENSIONS"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3503
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3614
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3590
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public getHintDisplayActionInline()Z
    .locals 3

    .prologue
    .line 3665
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHintLaunchesActivity()Z
    .locals 3

    .prologue
    .line 3638
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3566
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 3

    .prologue
    .line 3534
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, v0

    iget v1, v1, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return v0

    .restart local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAvailableOffline(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 3523
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move v1, p1

    .local v1, "availableOffline":Z
    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 3524
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3602
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, p1

    .local v1, "label":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 3603
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3578
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, p1

    .local v1, "label":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 3579
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public setHintDisplayActionInline(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 3652
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move v1, p1

    .local v1, "hintDisplayInline":Z
    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 3653
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public setHintLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 5

    .prologue
    .line 3626
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move v1, p1

    .local v1, "hintLaunchesActivity":Z
    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    .line 3627
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3554
    move-object v0, p0

    .local v0, "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    move-object v1, p1

    .local v1, "label":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 3555
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/app/NotificationCompat$Action$WearableExtender;
    return-object v0
.end method
