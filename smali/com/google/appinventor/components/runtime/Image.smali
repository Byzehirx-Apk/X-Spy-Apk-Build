.class public final Lcom/google/appinventor/components/runtime/Image;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying images.  The picture to display, and other aspects of the Image\'s appearance, can be specified in the Designer or in the Blocks Editor. You can also add gif images."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Image"


# instance fields
.field private final appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private clickable:Z

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private imageTintColor:I

.field private picturePath:Ljava/lang/String;

.field private repl:Z

.field private rotationAngle:D

.field private scalingMode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 66
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 57
    move-object v3, v1

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    .line 58
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    .line 59
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    .line 60
    move-object v3, v1

    const v4, 0xffffff

    iput v4, v3, Lcom/google/appinventor/components/runtime/Image;->imageTintColor:I

    .line 61
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 62
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Image;->repl:Z

    .line 67
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Image;->context:Landroid/content/Context;

    .line 68
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 69
    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/Image$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Image;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Image$1;-><init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 79
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 81
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v3, :cond_0

    .line 82
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Image;->repl:Z

    .line 84
    :cond_0
    const-string/jumbo v3, "Image"

    const-string/jumbo v4, "Image component Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Image;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Image;->imageHelper(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Image;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method private getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const v6, 0x101030e

    aput v6, v4, v5

    move-object v1, v3

    .line 143
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image;->context:Landroid/content/Context;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 144
    move-object v1, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 145
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private imageHelper(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    goto :goto_0
.end method


# virtual methods
.method public final Animation(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is a limited form of animation that can attach a small number of motion types to images.  The allowable motions are ScrollRightSlow, ScrollRight, ScrollRightFast, ScrollLeftSlow, ScrollLeft, ScrollLeftFast, and Stop"
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public final ClearImageTintColor()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the image tint color."
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 284
    return-void
.end method

.method public final Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Click\"."
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 95
    return-void
.end method

.method public final Clickable(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    .line 107
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    if-eqz v2, :cond_1

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/Image;->getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/google/appinventor/components/runtime/Image$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Image$2;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/google/appinventor/components/runtime/Image$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Image$3;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    .line 134
    goto :goto_0
.end method

.method public final Clickable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Image;->clickable:Z

    move v0, v1

    return v0
.end method

.method public final ImageTintColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the image tint color."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Image;->imageTintColor:I

    move v0, v1

    return v0
.end method

.method public final ImageTintColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the image tint color. You can use too alpha values if you want with the \'make a list\' block. Do not forget to use the \'make color\' block together with the \'make a list\' block."
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Image;->imageTintColor:I

    .line 272
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 273
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 274
    return-void
.end method

.method public final LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Long Click\"."
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 100
    return-void
.end method

.method public final Picture()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final Picture(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    .line 167
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 169
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v4, Lcom/google/appinventor/components/runtime/Image$4;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Image$4;-><init>(Lcom/google/appinventor/components/runtime/Image;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 188
    :goto_1
    return-void

    .line 166
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 183
    :cond_1
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Image;->picturePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Image;->imageHelper(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    goto :goto_1
.end method

.method public final RotationAngle()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angle at which the image picture appears rotated. This rotation does not appear on the designer screen, only on the device."
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final RotationAngle(D)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 202
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 203
    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move-wide v5, v2

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    .line 208
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/Image;->rotationAngle:D

    .line 209
    goto :goto_0
.end method

.method public final ScalePictureToFit(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the image should be resized to match the size of the ImageView."
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 224
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    goto :goto_0
.end method

.method public final Scaling()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    move v0, v1

    return v0
.end method

.method public final Scaling(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property determines how the picture scales according to the Height or Width of the Image. Scale proportionally (0) preserves the picture aspect ratio. Scale to fit (1) matches the Image area, even if the aspect ratio changes."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 258
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal scaling mode: "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    .line 260
    :goto_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Image;->scalingMode:I

    .line 261
    return-void

    .line 255
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Image;->appCompatImageView:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v0, v1

    return-object v0
.end method
