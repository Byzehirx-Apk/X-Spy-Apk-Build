.class Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ProgressBar;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    .line 49
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    move-object v1, v2

    .line 141
    .local v1, "roundedCorners":[F
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    return-object v0

    .line 140
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 15

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    move-object/from16 v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move/from16 v2, p2

    .local v2, "clip":Z
    move-object v8, v1

    instance-of v8, v8, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v8, :cond_1

    .line 74
    move-object v8, v1

    check-cast v8, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v8}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 75
    .local v3, "inner":Landroid/graphics/drawable/Drawable;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 76
    move-object v8, v0

    move-object v9, v3

    move v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 77
    move-object v8, v1

    check-cast v8, Landroidx/core/graphics/drawable/WrappedDrawable;

    move-object v9, v3

    invoke-interface {v8, v9}, Landroidx/core/graphics/drawable/WrappedDrawable;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 113
    .end local v3    # "inner":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    :goto_0
    return-object v0

    .line 79
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    :cond_1
    move-object v8, v1

    instance-of v8, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_6

    .line 80
    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v8

    .line 81
    .local v3, "background":Landroid/graphics/drawable/LayerDrawable;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    move v4, v8

    .line 82
    .local v4, "N":I
    move v8, v4

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    move-object v5, v8

    .line 84
    .local v5, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 85
    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v8

    move v7, v8

    .line 86
    .local v7, "id":I
    move-object v8, v5

    move v9, v6

    move-object v10, v0

    move-object v11, v3

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move v12, v7

    const v13, 0x102000d

    if-eq v12, v13, :cond_2

    move v12, v7

    const v13, 0x102000f

    if-ne v12, v13, :cond_3

    :cond_2
    const/4 v12, 0x1

    :goto_2
    invoke-direct {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v9

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 86
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 89
    .end local v7    # "id":I
    :cond_4
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v6, v8

    .line 91
    .local v6, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_3
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_5

    .line 92
    move-object v8, v6

    move v9, v7

    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 95
    :cond_5
    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 97
    .end local v3    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "N":I
    .end local v5    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v6    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v7    # "i":I
    :cond_6
    move-object v8, v1

    instance-of v8, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_0

    .line 98
    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v8

    .line 99
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v4, v8

    .line 100
    .local v4, "tileBitmap":Landroid/graphics/Bitmap;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v8, :cond_7

    .line 101
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    .line 104
    :cond_7
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v10}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v5, v8

    .line 105
    .local v5, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v8, Landroid/graphics/BitmapShader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, v10, v11, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object v6, v8

    .line 107
    .local v6, "bitmapShader":Landroid/graphics/BitmapShader;
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v8

    .line 108
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v8

    .line 109
    move v8, v2

    if-eqz v8, :cond_8

    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    :goto_4
    move-object v0, v8

    goto/16 :goto_0

    :cond_8
    move-object v8, v5

    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 12

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v1

    instance-of v7, v7, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_1

    .line 123
    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    move-object v2, v7

    .line 124
    .local v2, "background":Landroid/graphics/drawable/AnimationDrawable;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v7

    move v3, v7

    .line 125
    .local v3, "N":I
    new-instance v7, Landroid/graphics/drawable/AnimationDrawable;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    move-object v4, v7

    .line 126
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 128
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 129
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v6, v7

    .line 130
    .local v6, "frame":Landroid/graphics/drawable/Drawable;
    move-object v7, v6

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v7

    .line 131
    move-object v7, v4

    move-object v8, v6

    move-object v9, v2

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    .end local v6    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v7, v4

    const/16 v8, 0x2710

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-result v7

    .line 134
    move-object v7, v4

    move-object v1, v7

    .line 136
    .end local v2    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "N":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    .end local v5    # "i":I
    :cond_1
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    return-object v0
.end method


# virtual methods
.method getSampleTime()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatProgressBarHelper;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v1

    sget-object v7, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    move v8, v2

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v3, v5

    .line 55
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 56
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 57
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 61
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 62
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 66
    return-void
.end method
