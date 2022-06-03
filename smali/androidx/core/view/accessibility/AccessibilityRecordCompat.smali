.class public Landroidx/core/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# instance fields
.field private final mRecord:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "record":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/accessibility/AccessibilityRecord;

    iput-object v3, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    .line 45
    return-void
.end method

.method public static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 3

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 481
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v1

    move v0, v1

    .line 483
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :goto_0
    return v0

    .restart local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 3

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 531
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v1

    move v0, v1

    .line 533
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :goto_0
    return v0

    .restart local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityRecordCompat;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "record":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "record":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 4

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    move v1, p1

    .local v1, "maxScrollX":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    .line 507
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 509
    :cond_0
    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 4

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    move v1, p1

    .local v1, "maxScrollY":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    .line 557
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 559
    :cond_0
    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .locals 6
    .param p0    # Landroid/view/accessibility/AccessibilityRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 138
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 762
    const/4 v3, 0x1

    move v0, v3

    .line 778
    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    :goto_0
    return v0

    .line 764
    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 765
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 767
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 768
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 770
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-object v2, v3

    .line 771
    .local v2, "other":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_3

    .line 772
    move-object v3, v2

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v3, :cond_4

    .line 773
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 775
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v4, v2

    iget-object v4, v4, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 776
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 778
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getAddedCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getFromIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getItemCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getMaxScrollX()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getMaxScrollY()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getRemovedCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getScrollX()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getScrollY()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getSource()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return-object v0
.end method

.method public getToIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public getWindowId()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0

    .restart local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public isEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public isFullScreen()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public isPassword()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public isScrollable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    return v0
.end method

.method public recycle()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 744
    return-void
.end method

.method public setAddedCount(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "addedCount":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 585
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "beforeText":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "isChecked":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 197
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "className":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "contentDescription":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 702
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "currentItemIndex":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 353
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "isEnabled":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method public setFromIndex(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "fromIndex":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 385
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "isFullScreen":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 275
    return-void
.end method

.method public setItemCount(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "itemCount":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 327
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "maxScrollX":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 497
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "maxScrollY":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 547
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "parcelableData":Landroid/os/Parcelable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 728
    return-void
.end method

.method public setPassword(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "isPassword":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 249
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "removedCount":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 611
    return-void
.end method

.method public setScrollX(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "scrollX":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 435
    return-void
.end method

.method public setScrollY(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "scrollY":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 459
    return-void
.end method

.method public setScrollable(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "scrollable":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 301
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "source":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move-object v1, p1

    .local v1, "root":Landroid/view/View;
    move v2, p2

    .local v2, "virtualDescendantId":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public setToIndex(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    move v1, p1

    .local v1, "toIndex":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 411
    return-void
.end method
