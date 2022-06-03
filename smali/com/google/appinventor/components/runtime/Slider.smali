.class public Lcom/google/appinventor/components/runtime/Slider;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

.field private EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

.field private HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

.field private R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

.field private W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

.field private dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

.field public final referenceGetThumb:Z

.field private rotationAngle:D

.field private symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 79
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 65
    move-object v3, v1

    const v4, -0xff432d

    iput v4, v3, Lcom/google/appinventor/components/runtime/Slider;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

    .line 66
    move-object v3, v1

    const v4, -0xff432d

    iput v4, v3, Lcom/google/appinventor/components/runtime/Slider;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

    .line 67
    move-object v3, v1

    const v4, -0x616162

    iput v4, v3, Lcom/google/appinventor/components/runtime/Slider;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

    .line 69
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Slider;->rotationAngle:D

    .line 71
    move-object v3, v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    .line 80
    move-object v3, v1

    new-instance v4, Landroid/widget/SeekBar;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    .line 82
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    .line 83
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_1

    .line 84
    move-object v3, v1

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    const v7, 0x102000d

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

    .line 89
    :goto_1
    move-object v3, v1

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/Slider;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V

    .line 92
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 95
    move-object v3, v1

    const/high16 v4, 0x41200000    # 10.0f

    iput v4, v3, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    .line 96
    move-object v3, v1

    const/high16 v4, 0x42480000    # 50.0f

    iput v4, v3, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    .line 97
    move-object v3, v1

    const/high16 v4, 0x41f00000    # 30.0f

    iput v4, v3, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    .line 98
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Slider;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    .line 100
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    move-object v3, v1

    const v4, -0xff432d

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Slider;->ThumbColor(I)V

    .line 104
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Slider;->RotationAngle(D)V

    .line 109
    move-object v3, v1

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/Slider;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0()V

    .line 120
    return-void

    .line 71
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 86
    :cond_1
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    const v5, 0x102000d

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ClipDrawable;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_1
.end method

.method private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Slider;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/LayerDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Slider;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/ClipDrawable;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Slider;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 127
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Slider;)Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Slider;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    move v0, v1

    return v0
.end method

.method private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0()V
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    sub-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    move v1, v2

    .line 150
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public ColorLeft()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Slider;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

    move v0, v1

    return v0
.end method

.method public ColorLeft(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF00BCD3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->HD0pINq0k1DLtf3yXVbK8xQhU4iGPT4iryXVeTceizjENHUUCtIIAr11wB5gmj8l:I

    .line 327
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Slider;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V

    .line 328
    return-void
.end method

.method public ColorRight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Slider;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

    move v0, v1

    return v0
.end method

.method public ColorRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF9E9E9E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:I

    .line 358
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Slider;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V

    .line 359
    return-void
.end method

.method public Height()I
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Slider;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public Height(I)V
    .locals 5

    .prologue
    .line 466
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 467
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public MaxValue()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the slider max value."
        userVisible = true
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    move v0, v1

    return v0
.end method

.method public MaxValue(F)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the maximum value of slider.  Changing the maximum value also resets Thumbposition to be halfway between the minimum and the (new) maximum. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value.  Setting MaxValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    .line 279
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    .line 284
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    .line 285
    return-void
.end method

.method public MinValue()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the value of slider min value."
        userVisible = true
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    move v0, v1

    return v0
.end method

.method public MinValue(F)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the minimum value of slider.  Changing the minimum value also resets Thumbposition to be halfway between the (new) minimum and the maximum. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value.  Setting MinValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event."
        userVisible = true
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    .line 249
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    .line 254
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Slider;->ThumbPosition(F)V

    .line 255
    return-void
.end method

.method public PositionChanged(F)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-object v3, v0

    const-string/jumbo v4, "PositionChanged"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method public RotationAngle()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the slider is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Slider;->rotationAngle:D

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
    .line 158
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Slider;->rotationAngle:D

    .line 159
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-wide v4, v1

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setRotation(F)V

    .line 160
    return-void
.end method

.method public ThumbColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the color of slider thumb."
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Slider;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

    move v0, v1

    return v0
.end method

.method public ThumbColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF00BCD3"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of slider thumb. This block works only on devices with api >= 16."
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:I

    .line 381
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Slider;->referenceGetThumb:Z

    if-eqz v2, :cond_0

    .line 382
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string/jumbo v2, "Slider"

    const-string/jumbo v3, "The api level of the device is below 16. To use this option you need api >= 16."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 385
    goto :goto_0
.end method

.method public ThumbEnabled(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether or not to display the slider thumb."
        userVisible = true
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Slider;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    new-instance v3, Lcom/google/appinventor/components/runtime/Slider$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Slider$1;-><init>(Lcom/google/appinventor/components/runtime/Slider;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    return-void
.end method

.method public ThumbEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether or not the slider thumb is being be shown"
        userVisible = true
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Slider;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    move v0, v1

    return v0
.end method

.method public ThumbImage(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 369
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 370
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 373
    const-string/jumbo v2, "Slider"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 375
    goto :goto_0
.end method

.method public ThumbPosition()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the position of slider thumb"
        userVisible = true
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    move v0, v1

    return v0
.end method

.method public ThumbPosition(F)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue."
        userVisible = true
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    .line 222
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Slider;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0()V

    .line 223
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 224
    return-void
.end method

.method public TouchDown()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked on a touch down."
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-object v2, v0

    const-string/jumbo v3, "TouchDown"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public TouchUp()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked on a touch up."
    .end annotation

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-object v2, v0

    const-string/jumbo v3, "TouchUp"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Slider;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/SeekBar;

    move-object v0, v1

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/google/appinventor/components/runtime/Slider;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:F

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    sub-float/2addr v5, v6

    move v6, v2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Slider;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:F

    add-float/2addr v5, v6

    iput v5, v4, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    .line 414
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/google/appinventor/components/runtime/Slider;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:F

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 415
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Slider;->TouchDown()V

    .line 428
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Slider;->TouchUp()V

    .line 438
    return-void
.end method
