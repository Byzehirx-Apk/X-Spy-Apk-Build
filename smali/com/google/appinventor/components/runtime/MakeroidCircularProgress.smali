.class public final Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout$LayoutParams;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

.field private uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 30
    move-object v2, v0

    const v3, -0xde690e

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->context:Landroid/content/Context;

    .line 36
    move-object v2, v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    move-object v2, v0

    new-instance v3, Landroid/widget/ProgressBar;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x1010077

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    .line 38
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 42
    move-object v2, v0

    const v3, -0xde690e

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->Color(I)V

    .line 43
    const-string/jumbo v2, "Makeroid Progress bar circular "

    const-string/jumbo v3, "Makeroid Progress bar circular created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 44
    return-void
.end method


# virtual methods
.method public final Color()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I

    move v0, v1

    return v0
.end method

.method public final Color(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the indeterminate color of the circular progress bar."
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    const-string/jumbo v2, "Makeroid Progress bar circular "

    const-string/jumbo v3, "Indeterminate Color = "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 57
    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->getView()Landroid/widget/ProgressBar;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getView()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidCircularProgress;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move-object v0, v1

    return-object v0
.end method
