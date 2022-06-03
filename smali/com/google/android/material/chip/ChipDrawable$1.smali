.class Lcom/google/android/material/chip/ChipDrawable$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "ChipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/chip/ChipDrawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/ChipDrawable$1;->this$0:Lcom/google/android/material/chip/ChipDrawable;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/ChipDrawable$1;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable$1;->this$0:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/material/chip/ChipDrawable;->access$002(Lcom/google/android/material/chip/ChipDrawable;Z)Z

    move-result v2

    .line 182
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable$1;->this$0:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 183
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/ChipDrawable$1;->this$0:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->invalidateSelf()V

    .line 184
    return-void
.end method
