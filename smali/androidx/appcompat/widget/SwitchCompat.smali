.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroidx/appcompat/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-class v2, Ljava/lang/Float;

    const-string/jumbo v3, "thumbPos"

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/SwitchCompat$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->switchStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    .prologue
    .line 218
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 116
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 117
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 118
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 121
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 122
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 123
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 124
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 138
    move-object v12, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 180
    move-object v12, v0

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 220
    move-object v12, v0

    new-instance v13, Landroid/text/TextPaint;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 222
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object v4, v12

    .line 223
    .local v4, "res":Landroid/content/res/Resources;
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object v13, v4

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    iput v13, v12, Landroid/text/TextPaint;->density:F

    .line 225
    move-object v12, v1

    move-object v13, v2

    sget-object v14, Landroidx/appcompat/R$styleable;->SwitchCompat:[I

    move v15, v3

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    move-object v5, v12

    .line 227
    .local v5, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 229
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    :cond_0
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 233
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 235
    :cond_1
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 236
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 237
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_showText:I

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 238
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 240
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 242
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 244
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroidx/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 246
    move-object v12, v5

    sget v13, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v6, v12

    .line 247
    .local v6, "thumbTintList":Landroid/content/res/ColorStateList;
    move-object v12, v6

    if-eqz v12, :cond_2

    .line 248
    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 249
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 251
    :cond_2
    move-object v12, v5

    sget v13, Landroidx/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    const/4 v14, -0x1

    .line 252
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v12

    const/4 v13, 0x0

    .line 251
    invoke-static {v12, v13}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    move-object v7, v12

    .line 253
    .local v7, "thumbTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v13, v7

    if-eq v12, v13, :cond_3

    .line 254
    move-object v12, v0

    move-object v13, v7

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 255
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 257
    :cond_3
    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v12, :cond_4

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v12, :cond_5

    .line 258
    :cond_4
    move-object v12, v0

    invoke-direct {v12}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 261
    :cond_5
    move-object v12, v5

    sget v13, Landroidx/appcompat/R$styleable;->SwitchCompat_trackTint:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v8, v12

    .line 262
    .local v8, "trackTintList":Landroid/content/res/ColorStateList;
    move-object v12, v8

    if-eqz v12, :cond_6

    .line 263
    move-object v12, v0

    move-object v13, v8

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 264
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 266
    :cond_6
    move-object v12, v5

    sget v13, Landroidx/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    const/4 v14, -0x1

    .line 267
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v12

    const/4 v13, 0x0

    .line 266
    invoke-static {v12, v13}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    move-object v9, v12

    .line 268
    .local v9, "trackTintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v13, v9

    if-eq v12, v13, :cond_7

    .line 269
    move-object v12, v0

    move-object v13, v9

    iput-object v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 270
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 272
    :cond_7
    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v12, :cond_8

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v12, :cond_9

    .line 273
    :cond_8
    move-object v12, v0

    invoke-direct {v12}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 276
    :cond_9
    move-object v12, v5

    sget v13, Landroidx/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    move v10, v12

    .line 278
    .local v10, "appearance":I
    move v12, v10

    if-eqz v12, :cond_a

    .line 279
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 282
    :cond_a
    move-object v12, v5

    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 284
    move-object v12, v1

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    move-object v11, v12

    .line 285
    .local v11, "config":Landroid/view/ViewConfiguration;
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    .line 286
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v13

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 289
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->refreshDrawableState()V

    .line 290
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 291
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 11

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "newCheckedState":Z
    move v3, v1

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    move v2, v3

    .line 1025
    .local v2, "targetPosition":F
    move-object v3, v0

    move-object v4, v0

    sget-object v5, Landroidx/appcompat/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    aput v9, v7, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1026
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1027
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 1028
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1030
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1031
    return-void

    .line 1024
    .end local v2    # "targetPosition":F
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 3

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    .line 695
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 698
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 701
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_2

    .line 702
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 707
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 711
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 3

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_3

    .line 572
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    if-eqz v1, :cond_1

    .line 575
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_2

    .line 579
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 584
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 585
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 588
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 2

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 1035
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1037
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v3, v1

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object v2, v3

    .line 985
    .local v2, "cancel":Landroid/view/MotionEvent;
    move-object v3, v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 986
    move-object v3, v0

    move-object v4, v2

    invoke-super {v3, v4}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 987
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 988
    return-void
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 1426
    move v0, p0

    .local v0, "amount":F
    move v1, p1

    .local v1, "low":F
    move v2, p2

    .local v2, "high":F
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    .end local v0    # "amount":F
    return v0

    .restart local v0    # "amount":F
    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private getTargetCheckedState()Z
    .locals 3

    .prologue
    .line 1040
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 4

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v2, v0

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v2, v3

    move v1, v2

    .line 1298
    .local v1, "thumbPosition":F
    :goto_0
    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0

    .line 1296
    .end local v1    # "thumbPosition":F
    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    move v1, v2

    .restart local v1    # "thumbPosition":F
    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 5

    .prologue
    .line 1302
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1303
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v1, v3

    .line 1304
    .local v1, "padding":Landroid/graphics/Rect;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 1307
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1308
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v3

    move-object v2, v3

    .line 1313
    .local v2, "insets":Landroid/graphics/Rect;
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move v0, v3

    .line 1316
    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :goto_1
    return v0

    .line 1310
    .end local v2    # "insets":Landroid/graphics/Rect;
    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    sget-object v3, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v2, v3

    .restart local v2    # "insets":Landroid/graphics/Rect;
    goto :goto_0

    .line 1316
    .end local v1    # "padding":Landroid/graphics/Rect;
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 10

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 889
    const/4 v8, 0x0

    move v0, v8

    .line 901
    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :goto_0
    return v0

    .line 893
    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v8

    move v3, v8

    .line 895
    .local v3, "thumbOffset":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    .line 896
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v8, v9

    move v4, v8

    .line 897
    .local v4, "thumbTop":I
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    move v9, v3

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v8, v9

    move v5, v8

    .line 898
    .local v5, "thumbLeft":I
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v8, v9

    move v6, v8

    .line 900
    .local v6, "thumbRight":I
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v8, v9

    move v7, v8

    .line 901
    .local v7, "thumbBottom":I
    move v8, v1

    move v9, v5

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    move v8, v1

    move v9, v6

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    move v8, v2

    move v9, v4

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    move v8, v2

    move v9, v7

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 14

    .prologue
    .line 874
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v2, p1

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    move-object v5, v2

    move-object v6, v1

    .line 875
    invoke-interface {v4, v5, v6}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_0
    move-object v3, v4

    .line 878
    .local v3, "transformed":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object v8, v3

    if-eqz v8, :cond_1

    move-object v8, v3

    move-object v9, v1

    iget-object v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 880
    invoke-static {v8, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    :goto_1
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v1, v4

    .end local v1    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v1

    .line 875
    .end local v3    # "transformed":Ljava/lang/CharSequence;
    .restart local v1    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    move-object v4, v2

    goto :goto_0

    .line 880
    .restart local v3    # "transformed":Ljava/lang/CharSequence;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 7

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "typefaceIndex":I
    move v2, p2

    .local v2, "styleIndex":I
    const/4 v4, 0x0

    move-object v3, v4

    .line 340
    .local v3, "tf":Landroid/graphics/Typeface;
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 354
    :goto_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 355
    return-void

    .line 342
    :pswitch_0
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v3, v4

    .line 343
    goto :goto_0

    .line 346
    :pswitch_1
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v3, v4

    .line 347
    goto :goto_0

    .line 350
    :pswitch_2
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object v3, v4

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 996
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 1000
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    .line 1001
    .local v2, "commitChange":Z
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v6

    move v3, v6

    .line 1003
    .local v3, "oldState":Z
    move v6, v2

    if-eqz v6, :cond_6

    .line 1004
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1005
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    move v5, v6

    .line 1006
    .local v5, "xvel":F
    move v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1007
    move-object v6, v0

    invoke-static {v6}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 1011
    .line 1015
    .end local v5    # "xvel":F
    .local v4, "newState":Z
    :goto_2
    move v6, v4

    move v7, v3

    if-eq v6, v7, :cond_0

    .line 1016
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->playSoundEffect(I)V

    .line 1019
    :cond_0
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1020
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1021
    return-void

    .line 1000
    .end local v2    # "commitChange":Z
    .end local v3    # "oldState":Z
    .end local v4    # "newState":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1007
    .restart local v2    # "commitChange":Z
    .restart local v3    # "oldState":Z
    .restart local v5    # "xvel":F
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1009
    :cond_5
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v6

    move v4, v6

    .restart local v4    # "newState":Z
    goto :goto_2

    .line 1012
    .end local v4    # "newState":Z
    .end local v5    # "xvel":F
    :cond_6
    move v6, v3

    move v4, v6

    .restart local v4    # "newState":Z
    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 1133
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object/from16 v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v2, v13

    .line 1134
    .local v2, "padding":Landroid/graphics/Rect;
    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    move v3, v13

    .line 1135
    .local v3, "switchLeft":I
    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    move v4, v13

    .line 1136
    .local v4, "switchTop":I
    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    move v5, v13

    .line 1137
    .local v5, "switchRight":I
    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    move v6, v13

    .line 1139
    .local v6, "switchBottom":I
    move v13, v3

    move-object v14, v0

    invoke-direct {v14}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 1142
    .local v7, "thumbInitialLeft":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_6

    .line 1143
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v13}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v13

    move-object v8, v13

    .line 1149
    .local v8, "thumbInsets":Landroid/graphics/Rect;
    :goto_0
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    .line 1150
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 1153
    move v13, v7

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    move v7, v13

    .line 1156
    move v13, v3

    move v9, v13

    .line 1157
    .local v9, "trackLeft":I
    move v13, v4

    move v10, v13

    .line 1158
    .local v10, "trackTop":I
    move v13, v5

    move v11, v13

    .line 1159
    .local v11, "trackRight":I
    move v13, v6

    move v12, v13

    .line 1160
    .local v12, "trackBottom":I
    move-object v13, v8

    if-eqz v13, :cond_3

    .line 1161
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_0

    .line 1162
    move v13, v9

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v9, v13

    .line 1164
    :cond_0
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-le v13, v14, :cond_1

    .line 1165
    move v13, v10

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v10, v13

    .line 1167
    :cond_1
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_2

    .line 1168
    move v13, v11

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move v11, v13

    .line 1170
    :cond_2
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_3

    .line 1171
    move v13, v12

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move v12, v13

    .line 1174
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1178
    .end local v9    # "trackLeft":I
    .end local v10    # "trackTop":I
    .end local v11    # "trackRight":I
    .end local v12    # "trackBottom":I
    :cond_4
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 1179
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 1181
    move v13, v7

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    move v9, v13

    .line 1182
    .local v9, "thumbLeft":I
    move v13, v7

    move-object v14, v0

    iget v14, v14, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    move v10, v13

    .line 1183
    .local v10, "thumbRight":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move v14, v9

    move v15, v4

    move/from16 v16, v10

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1185
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v11, v13

    .line 1186
    .local v11, "background":Landroid/graphics/drawable/Drawable;
    move-object v13, v11

    if-eqz v13, :cond_5

    .line 1187
    move-object v13, v11

    move v14, v9

    move v15, v4

    move/from16 v16, v10

    move/from16 v17, v6

    invoke-static/range {v13 .. v17}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1193
    .end local v9    # "thumbLeft":I
    .end local v10    # "thumbRight":I
    .end local v11    # "background":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v13, v0

    move-object v14, v1

    invoke-super {v13, v14}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1194
    return-void

    .line 1145
    .end local v8    # "thumbInsets":Landroid/graphics/Rect;
    :cond_6
    sget-object v13, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v8, v13

    .restart local v8    # "thumbInsets":Landroid/graphics/Rect;
    goto/16 :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1354
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1357
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1358
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1361
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 1362
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1364
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    .line 1331
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v5, v0

    invoke-super {v5}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1333
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v5

    move-object v1, v5

    .line 1334
    .local v1, "state":[I
    const/4 v5, 0x0

    move v2, v5

    .line 1336
    .local v2, "changed":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v5

    .line 1337
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1338
    move v5, v2

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 1341
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v5

    .line 1342
    .local v4, "trackDrawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1343
    move v5, v2

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 1346
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    .line 1347
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 1349
    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 4

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v2, v0

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1264
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v2

    move v0, v2

    .line 1270
    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    .local v1, "padding":I
    :goto_0
    return v0

    .line 1266
    .end local v1    # "padding":I
    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1267
    .restart local v1    # "padding":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1268
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1270
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 4

    .prologue
    .line 1275
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v2, v0

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1276
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v2

    move v0, v2

    .line 1282
    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    .local v1, "padding":I
    :goto_0
    return v0

    .line 1278
    .end local v1    # "padding":I
    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1279
    .restart local v1    # "padding":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1280
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1282
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public getShowText()Z
    .locals 2

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0
.end method

.method public getSplitTrack()Z
    .locals 2

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0
.end method

.method public getSwitchPadding()I
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 2

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 3

    .prologue
    .line 1373
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1375
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1376
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1379
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1380
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1383
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1384
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 1385
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/SwitchCompat;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1387
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 1322
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "extraSpace":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 1323
    .local v2, "drawableState":[I
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1324
    move-object v3, v2

    sget-object v4, Landroidx/appcompat/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 1326
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .prologue
    .line 1198
    move-object/from16 v2, p0

    .local v2, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object/from16 v3, p1

    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-super/range {v17 .. v18}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1200
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    .line 1201
    .local v4, "padding":Landroid/graphics/Rect;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    .line 1202
    .local v5, "trackDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v17, v5

    if-eqz v17, :cond_4

    .line 1203
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v17

    .line 1208
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    move/from16 v17, v0

    move/from16 v6, v17

    .line 1209
    .local v6, "switchTop":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    move/from16 v17, v0

    move/from16 v7, v17

    .line 1210
    .local v7, "switchBottom":I
    move/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 1211
    .local v8, "switchInnerTop":I
    move/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 1213
    .local v9, "switchInnerBottom":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 1214
    .local v10, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v17, v5

    if-eqz v17, :cond_0

    .line 1215
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v10

    if-eqz v17, :cond_5

    .line 1216
    move-object/from16 v17, v10

    invoke-static/range {v17 .. v17}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v11, v17

    .line 1217
    .local v11, "insets":Landroid/graphics/Rect;
    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1218
    move-object/from16 v17, v4

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1219
    move-object/from16 v17, v4

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1221
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    move-result v17

    move/from16 v12, v17

    .line 1222
    .local v12, "saveCount":I
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    sget-object v19, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v17

    .line 1223
    move-object/from16 v17, v5

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1224
    move-object/from16 v17, v3

    move/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1225
    .line 1230
    .end local v11    # "insets":Landroid/graphics/Rect;
    .end local v12    # "saveCount":I
    :cond_0
    :goto_1
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    move-result v17

    move/from16 v11, v17

    .line 1232
    .local v11, "saveCount":I
    move-object/from16 v17, v10

    if-eqz v17, :cond_1

    .line 1233
    move-object/from16 v17, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1236
    :cond_1
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    :goto_2
    move-object/from16 v12, v17

    .line 1237
    .local v12, "switchText":Landroid/text/Layout;
    move-object/from16 v17, v12

    if-eqz v17, :cond_3

    .line 1238
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/appcompat/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v17

    move-object/from16 v13, v17

    .line 1239
    .local v13, "drawableState":[I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1240
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setColor(I)V

    .line 1242
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 1245
    move-object/from16 v17, v10

    if-eqz v17, :cond_7

    .line 1246
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v15, v17

    .line 1247
    .local v15, "bounds":Landroid/graphics/Rect;
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 1252
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .local v14, "cX":I
    :goto_3
    move/from16 v17, v14

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getWidth()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 1253
    .local v15, "left":I
    move/from16 v17, v8

    move/from16 v18, v9

    add-int v17, v17, v18

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getHeight()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 1254
    .local v16, "top":I
    move-object/from16 v17, v3

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1255
    move-object/from16 v17, v12

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1258
    .end local v13    # "drawableState":[I
    .end local v14    # "cX":I
    .end local v15    # "left":I
    .end local v16    # "top":I
    :cond_3
    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1259
    return-void

    .line 1205
    .end local v6    # "switchTop":I
    .end local v7    # "switchBottom":I
    .end local v8    # "switchInnerTop":I
    .end local v9    # "switchInnerBottom":I
    .end local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "saveCount":I
    .end local v12    # "switchText":Landroid/text/Layout;
    :cond_4
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 1226
    .restart local v6    # "switchTop":I
    .restart local v7    # "switchBottom":I
    .restart local v8    # "switchInnerTop":I
    .restart local v9    # "switchInnerBottom":I
    .restart local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1236
    .restart local v11    # "saveCount":I
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    goto/16 :goto_2

    .line 1249
    .restart local v12    # "switchText":Landroid/text/Layout;
    .restart local v13    # "drawableState":[I
    :cond_7
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/appcompat/widget/SwitchCompat;->getWidth()I

    move-result v17

    move/from16 v14, v17

    .restart local v14    # "cX":I
    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 1391
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1392
    move-object v2, v1

    const-string/jumbo v3, "android.widget.Switch"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1393
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1398
    move-object v5, v1

    const-string/jumbo v6, "android.widget.Switch"

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1399
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    :goto_0
    move-object v2, v5

    .line 1400
    .local v2, "switchText":Ljava/lang/CharSequence;
    move-object v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1401
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v3, v5

    .line 1402
    .local v3, "oldText":Ljava/lang/CharSequence;
    move-object v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1403
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1410
    .end local v3    # "oldText":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1399
    .end local v2    # "switchText":Ljava/lang/CharSequence;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1405
    .restart local v2    # "switchText":Ljava/lang/CharSequence;
    .restart local v3    # "oldText":Ljava/lang/CharSequence;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 1406
    .local v4, "newText":Ljava/lang/StringBuilder;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1407
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    .prologue
    .line 1077
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move/from16 v1, p1

    .local v1, "changed":Z
    move/from16 v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-super/range {v12 .. v17}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1079
    const/4 v12, 0x0

    move v6, v12

    .line 1080
    .local v6, "opticalInsetLeft":I
    const/4 v12, 0x0

    move v7, v12

    .line 1081
    .local v7, "opticalInsetRight":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 1082
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v12

    .line 1083
    .local v8, "trackPadding":Landroid/graphics/Rect;
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 1084
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v12

    .line 1089
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v12

    move-object v9, v12

    .line 1090
    .local v9, "insets":Landroid/graphics/Rect;
    const/4 v12, 0x0

    move-object v13, v9

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v6, v12

    .line 1091
    const/4 v12, 0x0

    move-object v13, v9

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v7, v12

    .line 1096
    .end local v8    # "trackPadding":Landroid/graphics/Rect;
    .end local v9    # "insets":Landroid/graphics/Rect;
    :cond_0
    move-object v12, v0

    invoke-static {v12}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1097
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingLeft()I

    move-result v12

    move v13, v6

    add-int/2addr v12, v13

    move v9, v12

    .line 1098
    .local v9, "switchLeft":I
    move v12, v9

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v8, v12

    .line 1106
    .local v8, "switchRight":I
    :goto_1
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getGravity()I

    move-result v12

    const/16 v13, 0x70

    and-int/lit8 v12, v12, 0x70

    sparse-switch v12, :sswitch_data_0

    .line 1109
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    move-result v12

    move v10, v12

    .line 1110
    .local v10, "switchTop":I
    move v12, v10

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr v12, v13

    move v11, v12

    .line 1125
    .local v11, "switchBottom":I
    :goto_2
    move-object v12, v0

    move v13, v9

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSwitchLeft:I

    .line 1126
    move-object v12, v0

    move v13, v10

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTop:I

    .line 1127
    move-object v12, v0

    move v13, v11

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSwitchBottom:I

    .line 1128
    move-object v12, v0

    move v13, v8

    iput v13, v12, Landroidx/appcompat/widget/SwitchCompat;->mSwitchRight:I

    .line 1129
    return-void

    .line 1086
    .end local v9    # "switchLeft":I
    .end local v10    # "switchTop":I
    .end local v11    # "switchBottom":I
    .local v8, "trackPadding":Landroid/graphics/Rect;
    :cond_1
    move-object v12, v8

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1100
    .end local v8    # "trackPadding":Landroid/graphics/Rect;
    :cond_2
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getWidth()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v8, v12

    .line 1101
    .local v8, "switchRight":I
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    sub-int/2addr v12, v13

    move v13, v6

    add-int/2addr v12, v13

    move v13, v7

    add-int/2addr v12, v13

    move v9, v12

    .restart local v9    # "switchLeft":I
    goto :goto_1

    .line 1114
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingTop()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move v10, v12

    .line 1116
    .restart local v10    # "switchTop":I
    move v12, v10

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr v12, v13

    move v11, v12

    .line 1117
    .restart local v11    # "switchBottom":I
    goto :goto_2

    .line 1120
    .end local v10    # "switchTop":I
    .end local v11    # "switchBottom":I
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v11, v12

    .line 1121
    .restart local v11    # "switchBottom":I
    move v12, v11

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    sub-int/2addr v12, v13

    move v10, v12

    .restart local v10    # "switchTop":I
    goto :goto_2

    .line 1106
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 16

    .prologue
    .line 797
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move/from16 v1, p1

    .local v1, "widthMeasureSpec":I
    move/from16 v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v13, v0

    iget-boolean v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eqz v13, :cond_1

    .line 798
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v13, :cond_0

    .line 799
    move-object v13, v0

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {v14, v15}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v14

    iput-object v14, v13, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 802
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v13, :cond_1

    .line 803
    move-object v13, v0

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {v14, v15}, Landroidx/appcompat/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v14

    iput-object v14, v13, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 807
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v3, v13

    .line 810
    .local v3, "padding":Landroid/graphics/Rect;
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    .line 812
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 813
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move-object v14, v3

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    move-object v14, v3

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    move v4, v13

    .line 814
    .local v4, "thumbWidth":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move v5, v13

    .line 821
    .local v5, "thumbHeight":I
    :goto_0
    move-object v13, v0

    iget-boolean v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    if-eqz v13, :cond_5

    .line 822
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v13

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v14}, Landroid/text/Layout;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move v6, v13

    .line 828
    .local v6, "maxTextWidth":I
    :goto_1
    move-object v13, v0

    move v14, v6

    move v15, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    .line 831
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_6

    .line 832
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 833
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move v7, v13

    .line 841
    .local v7, "trackHeight":I
    :goto_2
    move-object v13, v3

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move v8, v13

    .line 842
    .local v8, "paddingLeft":I
    move-object v13, v3

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move v9, v13

    .line 843
    .local v9, "paddingRight":I
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 844
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v13}, Landroidx/appcompat/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v13

    move-object v10, v13

    .line 845
    .local v10, "inset":Landroid/graphics/Rect;
    move v13, v8

    move-object v14, v10

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 846
    move v13, v9

    move-object v14, v10

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v9, v13

    .line 849
    .end local v10    # "inset":Landroid/graphics/Rect;
    :cond_2
    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    const/4 v14, 0x2

    move-object v15, v0

    iget v15, v15, Landroidx/appcompat/widget/SwitchCompat;->mThumbWidth:I

    mul-int/2addr v14, v15

    move v15, v8

    add-int/2addr v14, v15

    move v15, v9

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v10, v13

    .line 851
    .local v10, "switchWidth":I
    move v13, v7

    move v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v11, v13

    .line 852
    .local v11, "switchHeight":I
    move-object v13, v0

    move v14, v10

    iput v14, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchWidth:I

    .line 853
    move-object v13, v0

    move v14, v11

    iput v14, v13, Landroidx/appcompat/widget/SwitchCompat;->mSwitchHeight:I

    .line 855
    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-super {v13, v14, v15}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 857
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v13

    move v12, v13

    .line 858
    .local v12, "measuredHeight":I
    move v13, v12

    move v14, v11

    if-ge v13, v14, :cond_3

    .line 859
    move-object v13, v0

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/SwitchCompat;->getMeasuredWidthAndState()I

    move-result v14

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 861
    :cond_3
    return-void

    .line 816
    .end local v4    # "thumbWidth":I
    .end local v5    # "thumbHeight":I
    .end local v6    # "maxTextWidth":I
    .end local v7    # "trackHeight":I
    .end local v8    # "paddingLeft":I
    .end local v9    # "paddingRight":I
    .end local v10    # "switchWidth":I
    .end local v11    # "switchHeight":I
    .end local v12    # "measuredHeight":I
    :cond_4
    const/4 v13, 0x0

    move v4, v13

    .line 817
    .restart local v4    # "thumbWidth":I
    const/4 v13, 0x0

    move v5, v13

    .restart local v5    # "thumbHeight":I
    goto/16 :goto_0

    .line 825
    :cond_5
    const/4 v13, 0x0

    move v6, v13

    .restart local v6    # "maxTextWidth":I
    goto/16 :goto_1

    .line 835
    :cond_6
    move-object v13, v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 836
    const/4 v13, 0x0

    move v7, v13

    .restart local v7    # "trackHeight":I
    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 867
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    :goto_0
    move-object v2, v3

    .line 868
    .local v2, "text":Ljava/lang/CharSequence;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 869
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 871
    :cond_0
    return-void

    .line 867
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "ev":Landroid/view/MotionEvent;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 907
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    move v2, v8

    .line 908
    .local v2, "action":I
    move v8, v2

    packed-switch v8, :pswitch_data_0

    .line 980
    :cond_0
    :goto_0
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :goto_1
    return v0

    .line 910
    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 911
    .local v3, "x":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v4, v8

    .line 912
    .local v4, "y":F
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/SwitchCompat;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 913
    move-object v8, v0

    const/4 v9, 0x1

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 914
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 915
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    goto :goto_0

    .line 921
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    .line 963
    :cond_1
    :goto_2
    goto :goto_0

    .line 924
    :pswitch_2
    goto :goto_2

    .line 927
    :pswitch_3
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 928
    .restart local v3    # "x":F
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v4, v8

    .line 929
    .restart local v4    # "y":F
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2

    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    sub-float/2addr v8, v9

    .line 930
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 931
    :cond_2
    move-object v8, v0

    const/4 v9, 0x2

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 932
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 933
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 934
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchY:F

    .line 935
    const/4 v8, 0x1

    move v0, v8

    goto :goto_1

    .line 941
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 942
    .restart local v3    # "x":F
    move-object v8, v0

    invoke-direct {v8}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v8

    move v4, v8

    .line 943
    .local v4, "thumbScrollRange":I
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    sub-float/2addr v8, v9

    move v5, v8

    .line 945
    .local v5, "thumbScrollOffset":F
    move v8, v4

    if-eqz v8, :cond_5

    .line 946
    move v8, v5

    move v9, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v6, v8

    .line 952
    .local v6, "dPos":F
    :goto_3
    move-object v8, v0

    invoke-static {v8}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 953
    move v8, v6

    neg-float v8, v8

    move v6, v8

    .line 955
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    move v9, v6

    add-float/2addr v8, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10}, Landroidx/appcompat/widget/SwitchCompat;->constrain(FFF)F

    move-result v8

    move v7, v8

    .line 956
    .local v7, "newPos":F
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    .line 957
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchX:F

    .line 958
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 960
    :cond_4
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_1

    .line 950
    .end local v6    # "dPos":F
    .end local v7    # "newPos":F
    :cond_5
    move v8, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_4
    move v6, v8

    .restart local v6    # "dPos":F
    goto :goto_3

    .end local v6    # "dPos":F
    :cond_6
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_4

    .line 968
    .end local v3    # "x":F
    .end local v4    # "thumbScrollRange":I
    .end local v5    # "thumbScrollOffset":F
    :pswitch_5
    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 969
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 971
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 972
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_1

    .line 974
    :cond_7
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroidx/appcompat/widget/SwitchCompat;->mTouchMode:I

    .line 975
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 921
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "checked":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1064
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    move v1, v2

    .line 1066
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    .line 1073
    :goto_0
    return-void

    .line 1070
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1071
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 5

    .prologue
    .line 1418
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "actionModeCallback":Landroid/view/ActionMode$Callback;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    .line 1419
    invoke-static {v3, v4}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v3

    .line 1418
    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 1420
    return-void
.end method

.method public setShowText(Z)V
    .locals 4

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "showText":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 782
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mShowText:Z

    .line 783
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 785
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 4

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "splitTrack":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mSplitTrack:Z

    .line 724
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 725
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "pixels":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 434
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 435
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 4

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "pixels":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mSwitchPadding:I

    .line 410
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 411
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 14

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move/from16 v2, p2

    .local v2, "resid":I
    move-object v9, v1

    move v10, v2

    sget-object v11, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v9

    move-object v3, v9

    .line 306
    .local v3, "appearance":Landroidx/appcompat/widget/TintTypedArray;
    move-object v9, v3

    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v4, v9

    .line 307
    .local v4, "colors":Landroid/content/res/ColorStateList;
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 308
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 314
    :goto_0
    move-object v9, v3

    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v9

    move v5, v9

    .line 315
    .local v5, "ts":I
    move v9, v5

    if-eqz v9, :cond_0

    .line 316
    move v9, v5

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    .line 317
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 318
    move-object v9, v0

    invoke-virtual {v9}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 323
    :cond_0
    move-object v9, v3

    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v9

    move v6, v9

    .line 324
    .local v6, "typefaceIndex":I
    move-object v9, v3

    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v9

    move v7, v9

    .line 326
    .local v7, "styleIndex":I
    move-object v9, v0

    move v10, v6

    move v11, v7

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 328
    move-object v9, v3

    sget v10, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    move v8, v9

    .line 329
    .local v8, "allCaps":Z
    move v9, v8

    if-eqz v9, :cond_2

    .line 330
    move-object v9, v0

    new-instance v10, Landroidx/appcompat/text/AllCapsTransformationMethod;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroidx/appcompat/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 335
    :goto_1
    move-object v9, v3

    invoke-virtual {v9}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 336
    return-void

    .line 311
    .end local v5    # "ts":I
    .end local v6    # "typefaceIndex":I
    .end local v7    # "styleIndex":I
    .end local v8    # "allCaps":Z
    :cond_1
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, v9, Landroidx/appcompat/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 332
    .restart local v5    # "ts":I
    .restart local v6    # "typefaceIndex":I
    .restart local v7    # "styleIndex":I
    .restart local v8    # "allCaps":Z
    :cond_2
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroidx/appcompat/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 393
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 394
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 396
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 397
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 399
    :cond_2
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 8

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "tf":Landroid/graphics/Typeface;
    move v2, p2

    .local v2, "style":I
    move v5, v2

    if-lez v5, :cond_4

    .line 365
    move-object v5, v1

    if-nez v5, :cond_0

    .line 366
    move v5, v2

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    .line 371
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 373
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    :goto_1
    move v3, v5

    .line 374
    .local v3, "typefaceStyle":I
    move v5, v2

    move v6, v3

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v4, v5

    .line 375
    .local v4, "need":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 376
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    const/high16 v6, -0x41800000    # -0.25f

    :goto_3
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 377
    .line 382
    .end local v3    # "typefaceStyle":I
    .end local v4    # "need":I
    :goto_4
    return-void

    .line 368
    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 373
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 375
    .restart local v3    # "typefaceStyle":I
    .restart local v4    # "need":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 376
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 378
    .end local v3    # "typefaceStyle":I
    .end local v4    # "need":I
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 379
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 380
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "textOff":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 771
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 772
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "textOn":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 752
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 753
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 600
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 602
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 603
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 604
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 606
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 607
    return-void
.end method

.method setThumbPosition(F)V
    .locals 4

    .prologue
    .line 1049
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "position":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 1050
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->invalidate()V

    .line 1051
    return-void
.end method

.method public setThumbResource(I)V
    .locals 5

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "pixels":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbTextPadding:I

    .line 458
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 459
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 649
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTint:Z

    .line 651
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 652
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 677
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 679
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SwitchCompat;->applyThumbTint()V

    .line 680
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "track":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 481
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 483
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 485
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 487
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->requestLayout()V

    .line 488
    return-void
.end method

.method public setTrackResource(I)V
    .locals 5

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 527
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTint:Z

    .line 529
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 530
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 554
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 556
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SwitchCompat;->applyTrackTint()V

    .line 557
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 1055
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1056
    return-void

    .line 1055
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SwitchCompat;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SwitchCompat;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
