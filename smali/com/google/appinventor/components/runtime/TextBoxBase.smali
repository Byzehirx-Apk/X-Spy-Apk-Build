.class public abstract Lcom/google/appinventor/components/runtime/TextBoxBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "spinkit.jar"
    }
.end annotation


# instance fields
.field private PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private backgroundColor:I

.field private fontTypeface:I

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

.field private ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

.field private rotationAngle:D

.field private siVQGK7skYIQ7zI3RxZVmSEN1N3qEwDlBDPORHd716EIgwqH2EWQFUJrvV0SXYUL:Ljava/lang/String;

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

.field private textColor:I

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

.field protected final view:Landroid/widget/EditText;

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

.field private yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 52
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->rotationAngle:D

    .line 53
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    .line 54
    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    .line 65
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 72
    move-object v3, v2

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->disableSuggestions(Landroid/widget/EditText;)V

    .line 76
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    new-instance v4, Lcom/google/appinventor/components/runtime/TextBoxBase$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/TextBoxBase$1;-><init>(Lcom/google/appinventor/components/runtime/TextBoxBase;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

    .line 104
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 106
    move-object v3, v1

    move-object v4, v0

    const/16 v5, 0xa0

    invoke-interface {v3, v4, v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 108
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextAlignment(I)V

    .line 117
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Enabled(Z)V

    .line 118
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    .line 119
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/TextBoxBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 121
    move-object v3, v0

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->FontSize(F)V

    .line 122
    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Hint(Ljava/lang/String;)V

    .line 123
    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Text(Ljava/lang/String;)V

    .line 124
    move-object v3, v0

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->CursorColor(I)V

    .line 125
    move-object v3, v0

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextColor(I)V

    .line 126
    move-object v3, v0

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->HintColor(I)V

    .line 127
    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/TextBoxBase;->RotationAngle(D)V

    .line 128
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->CursorVisible(Z)V

    .line 129
    return-void
.end method


# virtual methods
.method public AnimationStyle(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, animation will be removed.Position can be: top, left, right, bottom. Size can be 100. "
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 682
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 1687
    move-object v1, v6

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1688
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1689
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->invalidate()V

    .line 683
    return-void
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    .line 371
    move v2, v1

    if-eqz v2, :cond_0

    .line 372
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 376
    goto :goto_0
.end method

.method public CurrentPosition()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the current cursor position."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public CursorColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the cursor."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    move v0, v1

    return v0
.end method

.method public CursorColor(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/appinventor/components/runtime/TextBoxBase;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:I

    .line 178
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v7, v1

    move v2, v7

    move-object v1, v6

    .line 1191
    :try_start_0
    const-class v6, Landroid/widget/TextView;

    const-string/jumbo v7, "mCursorDrawableRes"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 1192
    move-object v3, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1193
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 1196
    const-class v6, Landroid/widget/TextView;

    const-string/jumbo v7, "mEditor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 1197
    move-object v3, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1198
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1201
    move-object v6, v1

    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    move v7, v4

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 1202
    move-object v1, v7

    if-eqz v6, :cond_0

    .line 1203
    move-object v6, v1

    move v7, v2

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1205
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v1, v6

    .line 1208
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "mCursorDrawable"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 1209
    move-object v3, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1210
    move-object v6, v3

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public CursorVisible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Makes the cursor visible (the default) or invisible."
    .end annotation

    .prologue
    .line 669
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    .line 670
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 671
    return-void
.end method

.method public CursorVisible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 675
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Z

    move v0, v1

    return v0
.end method

.method public EnableCopyPaste(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "DEPRECATED since this feature is not working. Use \'Enabled\' instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    return-void
.end method

.method public EnableCopyPaste()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 401
    return-void
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into this input box.  By default, this is true."
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public FontBold(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 431
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    move v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 432
    return-void
.end method

.method public FontBold()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move v0, v1

    return v0
.end method

.method public FontItalic(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 461
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 462
    return-void
.end method

.method public FontItalic()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    move v0, v1

    return v0
.end method

.method public FontSize()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v1

    move v0, v1

    return v0
.end method

.method public FontSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 487
    return-void
.end method

.method public FontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    move v0, v1

    return v0
.end method

.method public FontTypeface(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    .line 522
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 523
    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 626
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/TextBoxBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 628
    :cond_0
    return-void
.end method

.method public GotFocus()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "GotFocus"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 288
    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text that should appear faintly in the input box to provide a hint as to what the user should enter.  This can only be seen if the <code>Text</code> property is empty."
    .end annotation

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->siVQGK7skYIQ7zI3RxZVmSEN1N3qEwDlBDPORHd716EIgwqH2EWQFUJrvV0SXYUL:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->siVQGK7skYIQ7zI3RxZVmSEN1N3qEwDlBDPORHd716EIgwqH2EWQFUJrvV0SXYUL:Ljava/lang/String;

    .line 549
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHint(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public HintColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the hint text color."
    .end annotation

    .prologue
    .line 645
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

    move v0, v1

    return v0
.end method

.method public HintColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom hint text color."
    .end annotation

    .prologue
    .line 634
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:I

    .line 635
    move v2, v1

    if-eqz v2, :cond_0

    .line 636
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHintColor(Landroid/widget/TextView;I)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHintColor(Landroid/widget/TextView;I)V

    .line 640
    goto :goto_0
.end method

.method public LineColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Please delete this block from your project.This block is deprecated and not longer supported."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    move v0, v1

    return v0
.end method

.method public LineColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->ik13O8j78hPb27XeipAJHUcJmdHxYMJFw4gYbTGvLKIOs7SX1F7x61gocQ17TlNc:I

    .line 170
    return-void
.end method

.method public LostFocus()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LostFocus"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 297
    return-void
.end method

.method public OnTextChanged()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect text changes."
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v2, v0

    const-string/jumbo v3, "OnTextChanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public RequestFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the textbox active."
    .end annotation

    .prologue
    .line 617
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v1

    .line 618
    return-void
.end method

.method public RotationAngle()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the textbox is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->rotationAngle:D

    move-wide v0, v1

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->rotationAngle:D

    .line 227
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-wide v4, v1

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRotation(F)V

    .line 228
    return-void
.end method

.method public SetCursorAt(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the cursor to the given position."
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    move v3, v1

    if-lt v2, v3, :cond_0

    .line 259
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 263
    goto :goto_0
.end method

.method public SetCursorAtEnd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the cursor to the end of the text."
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 271
    return-void
.end method

.method public SetShadow(FFFI)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Place a blurred shadow of text underneath the text, drawn with the specified x, y, radius, color (e.g. -11, 12, 13, black "
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShadow(Landroid/widget/TextView;FFFI)V

    .line 219
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text in the input box, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public TextAlignment()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    move v0, v1

    return v0
.end method

.method public TextAlignment(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    .line 342
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 343
    return-void
.end method

.method public TextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    move v0, v1

    return v0
.end method

.method public TextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 603
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    .line 604
    move v2, v1

    if-eqz v2, :cond_0

    .line 605
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 609
    goto :goto_0
.end method

.method public TextLength()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current text length as number."
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    move-object v0, v1

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 652
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 658
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/TextBoxBase;->GotFocus()V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/TextBoxBase;->LostFocus()V

    .line 662
    goto :goto_0
.end method
