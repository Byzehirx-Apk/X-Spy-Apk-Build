.class public Lcom/google/android/material/tabs/TabItem;
.super Landroid/view/View;
.source "TabItem.java"


# instance fields
.field public final customLayout:I

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabItem;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/tabs/TabItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabItem;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Lcom/google/android/material/R$styleable;->TabItem:[I

    .line 55
    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v4

    move-object v3, v4

    .line 56
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->TabItem_android_text:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    .line 57
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->TabItem_android_icon:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    move-object v4, v0

    move-object v5, v3

    sget v6, Lcom/google/android/material/R$styleable;->TabItem_android_layout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    .line 59
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 60
    return-void
.end method
