.class Lcom/google/android/material/chip/Chip$2;
.super Landroid/view/ViewOutlineProvider;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/Chip;->initOutlineProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/chip/Chip;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    move-object v2, v0

    invoke-direct {v2}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "outline":Landroid/graphics/Outline;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v3}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 282
    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v3}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/ChipDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    goto :goto_0
.end method
