.class public final Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;
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
.field private bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

.field private uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 28
    move-object v2, v0

    const v3, -0xde690e

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    .line 29
    move-object v2, v0

    const v3, -0xde690e

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I

    .line 33
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->context:Landroid/content/Context;

    .line 35
    move-object v2, v0

    new-instance v3, Landroid/widget/ProgressBar;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x1010078

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    .line 37
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Minimum(I)V

    .line 40
    move-object v2, v0

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Maximum(I)V

    .line 41
    move-object v2, v0

    const v3, -0xde690e

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->ProgressColor(I)V

    .line 42
    move-object v2, v0

    const v3, -0xde690e

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->IndeterminateColor(I)V

    .line 43
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Indeterminate(Z)V

    .line 44
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->Width(I)V

    .line 45
    const-string/jumbo v2, "Makeroid Progress bar"

    const-string/jumbo v3, "Makeroid Progress bar created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 46
    return-void
.end method


# virtual methods
.method public final Height()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->getView()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 61
    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final IncrementProgressBy(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Increase the progress bar\'s progress by the specified amount."
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 115
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->ProgressChanged(I)V

    .line 116
    return-void
.end method

.method public final Indeterminate(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the indeterminate mode for this progress bar. In indeterminate mode, the progress is ignored and the progress bar shows an infinite animation instead."
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 153
    const-string/jumbo v2, "Makeroid Progress bar"

    const-string/jumbo v3, "Indeterminate is: "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    return-void
.end method

.method public final Indeterminate()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicate whether this progress bar is in indeterminate mode."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final IndeterminateColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I

    move v0, v1

    return v0
.end method

.method public final IndeterminateColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the indeterminate color of the progress bar."
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:I

    .line 137
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    const-string/jumbo v2, "Makeroid Progress bar"

    const-string/jumbo v3, "Indeterminate Color = "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 139
    return-void
.end method

.method public final Maximum()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Maximum(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the upper range of the progress bar max."
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 88
    const-string/jumbo v2, "Makeroid Progress bar"

    const-string/jumbo v3, "setMax = "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 89
    return-void
.end method

.method public final Minimum()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public final Minimum(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the lower range of the progress bar to min. This function works only for devices with API >= 26"
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 73
    const-string/jumbo v2, "Makeroid Progress bar"

    const-string/jumbo v3, "setMin = "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string/jumbo v2, "Makeroid Progress bar"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "setMin of progress bar is not possible. API is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 77
    goto :goto_0
.end method

.method public final Progress()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the progress bar\'s current level of progress."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Progress(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current progress to the specified value. Does not do anything if the progress bar is in indeterminate mode."
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 100
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 104
    :goto_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->ProgressChanged(I)V

    .line 105
    return-void

    .line 102
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final ProgressChanged(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that indicates that the progress of the progress bar has been changed. Returns the current progress value. If \"Indeterminate\" is set to true, then it returns \"0\"."
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ProgressChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 166
    return-void
.end method

.method public final ProgressColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    move v0, v1

    return v0
.end method

.method public final ProgressColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the progress color of the progress bar."
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:I

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 124
    const-string/jumbo v2, "Makeroid Progress bar"

    const-string/jumbo v3, "Progress Color = "

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 125
    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->getView()Landroid/widget/ProgressBar;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getView()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidLinearProgressbar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ProgressBar;

    move-object v0, v1

    return-object v0
.end method
