.class Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .locals 5

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    move-object v1, p1

    .local v1, "x0":Lcom/google/android/material/chip/ChipGroup;
    move-object v2, p2

    .local v2, "x1":Lcom/google/android/material/chip/ChipGroup$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 7

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "x0":Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    move-object v1, p1

    .local v1, "x1":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v0, v2

    .end local v0    # "x0":Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    return-object v0
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_1

    .line 429
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    move v3, v4

    .line 431
    .local v3, "id":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 432
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    .line 433
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    move v3, v4

    .line 437
    :goto_0
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 439
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/google/android/material/chip/Chip;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v5}, Lcom/google/android/material/chip/ChipGroup;->access$800(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 442
    .end local v3    # "id":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v4, :cond_2

    .line 443
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 445
    :cond_2
    return-void

    .line 435
    .restart local v3    # "id":I
    :cond_3
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    move v3, v4

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "child":Landroid/view/View;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    if-ne v3, v4, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 450
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/chip/Chip;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v3, :cond_1

    .line 454
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 456
    :cond_1
    return-void
.end method
