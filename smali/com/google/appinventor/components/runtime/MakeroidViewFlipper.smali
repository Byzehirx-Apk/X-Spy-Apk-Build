.class public Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/viewFlipper.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

.field private interval:I

.field private swipeable:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 49
    move-object v1, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 50
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 51
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    .line 52
    move-object v5, v1

    new-instance v6, Landroid/widget/ViewFlipper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    .line 53
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    const/high16 v6, 0x10a0000

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    move-object v3, v5

    .line 56
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    const v6, 0x10a0001

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    move-object v4, v5

    .line 57
    move-object v5, v3

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 58
    move-object v5, v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 61
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 63
    move-object v5, v2

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 65
    move-object v5, v1

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->AddImagesFromString(Ljava/lang/String;)V

    .line 66
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->BackgroundColor(I)V

    .line 67
    move-object v5, v1

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->FlipInterval(I)V

    .line 68
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->Swipeable(Z)V

    .line 70
    const-string/jumbo v5, "Makeroid View Flipper"

    const-string/jumbo v6, "Makeroid View Flipper Created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 71
    return-void
.end method


# virtual methods
.method public AddComponentToView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a component to the view flipper. The first added component will be the first visible component on the screen."
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 171
    move-object v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 174
    const-string/jumbo v2, "Makeroid View Flipper"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 176
    goto :goto_0
.end method

.method public AddImagesFromString(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use this function if you try to create a image view flipper. Use images separated by commas such as: Image1.png,Image2.png,Image3.png."
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 203
    move-object v2, v1

    const-string/jumbo v3, " *, *"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v1, v2

    .line 204
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->AddImagesToView(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 206
    :cond_0
    return-void
.end method

.method public AddImagesToView(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this function if you try to create a image view flipper. Please use a \'make a list\' block."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 181
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v7

    .line 183
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 185
    :try_start_0
    new-instance v7, Landroid/widget/ImageView;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v5, v7

    .line 186
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    move-object v6, v7

    .line 187
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 189
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v7

    const-string/jumbo v7, "Makeroid View Flipper"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Unable to load "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    move v10, v4

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 193
    .line 196
    :goto_1
    return-void

    :cond_0
    goto :goto_1
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->backgroundColor:I

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
        description = "Specifies the view flippers background color."
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->backgroundColor:I

    .line 213
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setBackgroundColor(I)V

    .line 214
    return-void
.end method

.method public FlipInterval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->interval:I

    move v0, v1

    return v0
.end method

.method public FlipInterval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How long to wait before flipping to the next view in milliseconds."
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->interval:I

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 135
    return-void
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 93
    const/4 v2, -0x2

    move v1, v2

    .line 95
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 96
    return-void
.end method

.method public ShowNext()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the next view."
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 160
    return-void
.end method

.method public ShowPrevious()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the previous view."
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 155
    return-void
.end method

.method public StartFlipping()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a timer to cycle through child views."
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 145
    return-void
.end method

.method public StopFlipping()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "No more flips."
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 150
    return-void
.end method

.method public Swipeable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true you can swipe with your fingers through views."
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->swipeable:Z

    .line 123
    return-void
.end method

.method public Swipeable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->swipeable:Z

    move v0, v1

    return v0
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 84
    const/4 v2, -0x2

    move v1, v2

    .line 86
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 87
    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->getView()Landroid/widget/ViewFlipper;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getView()Landroid/widget/ViewFlipper;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    move-object v0, v1

    return-object v0
.end method

.method public isFlipping()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the child views are flipping."
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v1

    .line 165
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 103
    packed-switch v3, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->swipeable:Z

    move v0, v3

    return v0

    .line 105
    :pswitch_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move v1, v3

    .line 107
    const/4 v3, 0x0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showNext()V

    .line 111
    :cond_1
    const/4 v3, 0x0

    move v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidViewFlipper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
