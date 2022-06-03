.class public final Lcom/google/appinventor/components/runtime/KodularDynamicImage;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to create dynamic image in Arrangements."
    iconName = "images/image.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private kodularDynamicModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    move-object v2, v0

    const-string/jumbo v3, "KodularDynamicImage"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->LOG_TAG:Ljava/lang/String;

    .line 36
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    .line 40
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    .line 41
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->setImage(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularDynamicImage;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method private imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v6, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;-><init>(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->setImage(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V

    .line 143
    goto :goto_0
.end method

.method private linearLayoutParams(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 10

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    move v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move v3, v5

    .line 196
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move v4, v5

    .line 197
    move v5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 198
    const/4 v5, -0x2

    move v3, v5

    .line 203
    :cond_0
    :goto_0
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 204
    const/4 v5, -0x2

    move v4, v5

    .line 209
    :cond_1
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v3

    move v8, v4

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v5

    return-object v0

    .line 199
    :cond_2
    move v5, v1

    const/4 v6, -0x2

    if-ne v5, v6, :cond_0

    .line 200
    const/4 v5, -0x1

    move v3, v5

    goto :goto_0

    .line 205
    :cond_3
    move v5, v2

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    .line 206
    const/4 v5, -0x1

    move v4, v5

    goto :goto_1
.end method

.method private setImage(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v3

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    goto :goto_0
.end method


# virtual methods
.method public final CreateImage(ILcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;II)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new image component dynamically. Use for width/height \'-1\' for wrap content or \'-2\' for fill parent."
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    :try_start_0
    new-instance v7, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 48
    move-object v6, v8

    move-object v8, v0

    move v9, v4

    move v10, v5

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->linearLayoutParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    new-instance v8, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move v10, v1

    move-object v11, v6

    move-object v12, v2

    invoke-direct {v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 51
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 52
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 53
    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    move-object v7, v0

    move-object v8, v6

    move-object v9, v3

    const-string/jumbo v10, "CreateImage"

    invoke-direct {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 56
    const-string/jumbo v7, "KodularDynamicImage"

    move-object v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 58
    goto :goto_0
.end method

.method public final DeleteImage(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a image component with the given id."
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v2, v3

    .line 77
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getViewHolderById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 79
    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 81
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->removeItemById(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 83
    const-string/jumbo v3, "KodularDynamicImage"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 85
    goto :goto_0
.end method

.method public final GetHeight(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Height of a image component."
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 187
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageView;->getHeight()I

    move-result v2

    move v0, v2

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final GetImageById(I)Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the image referenced by its id."
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 90
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;-><init>(Landroid/view/View;)V

    .line 93
    move-object v0, v2

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final GetWidth(I)I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Width of a image component."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 167
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageView;->getWidth()I

    move-result v2

    move v0, v2

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final RotationAngle(ID)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specifies the angle of a image component with the given id."
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, v1

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 118
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v1

    move-wide v5, v2

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 122
    const-string/jumbo v4, "KodularDynamicImage"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 124
    goto :goto_0
.end method

.method public final ScalePictureToFit(IZ)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specifies whether a image component with the given id should be resized to match the size of the ImageView."
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 102
    move-object v1, v4

    if-eqz v3, :cond_1

    .line 103
    move v3, v2

    if-eqz v3, :cond_0

    .line 104
    move-object v3, v1

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v3, v1

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    goto :goto_0

    .line 109
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 110
    const-string/jumbo v3, "KodularDynamicImage"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 112
    goto :goto_0
.end method

.method public final SetHeight(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Height of a image component."
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 176
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 177
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 178
    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 179
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method public final SetWidth(II)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update the Width of a image component."
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 156
    move-object v1, v5

    if-eqz v4, :cond_0

    .line 157
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 158
    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->context:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 159
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    move-object v4, v1

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 162
    :cond_0
    return-void
.end method

.method public final UpdateImage(ILjava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update a image component with the given id."
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->kodularDynamicModelList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;->getObjectById(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 64
    move-object v1, v4

    if-eqz v3, :cond_0

    .line 65
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-string/jumbo v6, "UpdateImage"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 68
    const-string/jumbo v3, "KodularDynamicImage"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 70
    goto :goto_0
.end method
