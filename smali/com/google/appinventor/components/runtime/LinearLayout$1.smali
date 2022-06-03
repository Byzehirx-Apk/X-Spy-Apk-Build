.class final Lcom/google/appinventor/components/runtime/LinearLayout$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Integer;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/LinearLayout$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/LinearLayout$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Integer;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/LinearLayout$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Integer;

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I
    .locals 6

    .prologue
    .line 79
    move v0, p0

    move v1, p1

    move v4, v0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    move v2, v4

    .line 80
    move v4, v0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    move v3, v4

    .line 82
    move v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_1

    .line 84
    move v4, v3

    move v0, v4

    .line 94
    :cond_0
    :goto_0
    move v4, v0

    move v0, v4

    return v0

    .line 87
    :cond_1
    move v4, v1

    move v0, v4

    .line 88
    move v4, v2

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    .line 90
    move v4, v0

    move v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LinearLayout$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LinearLayout$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 63
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 64
    .line 75
    :goto_0
    return-void

    .line 68
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/LinearLayout$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I

    move-result v4

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/LinearLayout$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Integer;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I

    move-result v5

    .line 73
    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->setMeasuredDimension(II)V

    .line 75
    goto :goto_0
.end method
