.class Lcom/google/android/material/resources/TextAppearance$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/resources/TextAppearance;

.field final synthetic val$callback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Lcom/google/android/material/resources/TextAppearance;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/resources/TextAppearance;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/material/resources/TextAppearance$1;->val$textPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v4, v0

    invoke-direct {v4}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance$1;
    move v1, p1

    .local v1, "reason":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    invoke-static {v2}, Lcom/google/android/material/resources/TextAppearance;->access$200(Lcom/google/android/material/resources/TextAppearance;)V

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/material/resources/TextAppearance;->access$102(Lcom/google/android/material/resources/TextAppearance;Z)Z

    move-result v2

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 181
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 5
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/TextAppearance$1;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iget v4, v4, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/resources/TextAppearance;->access$002(Lcom/google/android/material/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 171
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/material/resources/TextAppearance$1;->val$textPaint:Landroid/text/TextPaint;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 172
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/material/resources/TextAppearance;->access$102(Lcom/google/android/material/resources/TextAppearance;Z)Z

    move-result v2

    .line 173
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 174
    return-void
.end method
