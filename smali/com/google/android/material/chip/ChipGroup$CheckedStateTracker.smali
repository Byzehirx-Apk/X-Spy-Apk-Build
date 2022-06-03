.class Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .locals 5

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    move-object v1, p1

    .local v1, "x0":Lcom/google/android/material/chip/ChipGroup;
    move-object v2, p2

    .local v2, "x1":Lcom/google/android/material/chip/ChipGroup$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    move-object v1, p1

    .local v1, "buttonView":Landroid/widget/CompoundButton;
    move v2, p2

    .local v2, "isChecked":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v4}, Lcom/google/android/material/chip/ChipGroup;->access$300(Lcom/google/android/material/chip/ChipGroup;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    .line 415
    :goto_0
    return-void

    .line 403
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    move v3, v4

    .line 405
    .local v3, "id":I
    move v4, v2

    if-eqz v4, :cond_3

    .line 406
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v4}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v4}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v4

    move v5, v3

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v4}, Lcom/google/android/material/chip/ChipGroup;->access$500(Lcom/google/android/material/chip/ChipGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v5}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/material/chip/ChipGroup;->access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V

    .line 409
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    move v5, v3

    invoke-static {v4, v5}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 415
    :cond_2
    :goto_1
    goto :goto_0

    .line 411
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v4}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v4

    move v5, v3

    if-ne v4, v5, :cond_2

    .line 412
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;I)V

    goto :goto_1
.end method
