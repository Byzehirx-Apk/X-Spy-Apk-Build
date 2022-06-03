.class Lcom/google/android/material/chip/Chip$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
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
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/chip/Chip;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/chip/Chip$1;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/chip/Chip$1;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 154
    return-void
.end method
