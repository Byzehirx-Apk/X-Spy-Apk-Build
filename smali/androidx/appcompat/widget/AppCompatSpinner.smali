.class public Landroidx/appcompat/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;,
        Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field mDropDownWidth:I

.field private mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

.field mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10102f1

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "mode":I
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    sget v6, Landroidx/appcompat/R$attr;->spinnerStyle:I

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move v4, p4

    .local v4, "mode":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 17

    .prologue
    .line 196
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "mode":I
    move-object/from16 v5, p5

    .local v5, "popupTheme":Landroid/content/res/Resources$Theme;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    move-object v10, v0

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 198
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroidx/appcompat/R$styleable;->Spinner:[I

    move v13, v3

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v10

    move-object v6, v10

    .line 201
    .local v6, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v10, v0

    new-instance v11, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 203
    move-object v10, v5

    if-eqz v10, :cond_5

    .line 204
    move-object v10, v0

    new-instance v11, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 216
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    .line 217
    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 218
    const/4 v10, 0x0

    move-object v7, v10

    .line 220
    .local v7, "aa":Landroid/content/res/TypedArray;
    move-object v10, v1

    move-object v11, v2

    :try_start_0
    sget-object v12, Landroidx/appcompat/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    move v13, v3

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v7, v10

    .line 222
    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 223
    move-object v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    move v4, v10

    .line 228
    :cond_0
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 229
    move-object v10, v7

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    .end local v7    # "aa":Landroid/content/res/TypedArray;
    :cond_1
    :goto_1
    move v10, v4

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 235
    new-instance v10, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object v14, v2

    move v15, v3

    invoke-direct {v11, v12, v13, v14, v15}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v7, v10

    .line 236
    .local v7, "popup":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object v11, v2

    sget-object v12, Landroidx/appcompat/R$styleable;->Spinner:[I

    move v13, v3

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v10

    move-object v8, v10

    .line 238
    .local v8, "pa":Landroidx/appcompat/widget/TintTypedArray;
    move-object v10, v0

    move-object v11, v8

    sget v12, Landroidx/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v11

    iput v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 240
    move-object v10, v7

    move-object v11, v8

    sget v12, Landroidx/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 241
    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 240
    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    move-object v10, v7

    move-object v11, v6

    sget v12, Landroidx/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 243
    move-object v10, v8

    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 245
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    .line 246
    move-object v10, v0

    new-instance v11, Landroidx/appcompat/widget/AppCompatSpinner$1;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    move-object v14, v0

    move-object v15, v7

    invoke-direct {v12, v13, v14, v15}, Landroidx/appcompat/widget/AppCompatSpinner$1;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    .line 263
    .end local v7    # "popup":Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
    .end local v8    # "pa":Landroidx/appcompat/widget/TintTypedArray;
    :cond_2
    move-object v10, v6

    sget v11, Landroidx/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    move-object v7, v10

    .line 264
    .local v7, "entries":[Ljava/lang/CharSequence;
    move-object v10, v7

    if-eqz v10, :cond_3

    .line 265
    new-instance v10, Landroid/widget/ArrayAdapter;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    const v13, 0x1090008

    move-object v14, v7

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v8, v10

    .line 267
    .local v8, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    move-object v10, v8

    sget v11, Landroidx/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v10, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 268
    move-object v10, v0

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    .end local v8    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3
    move-object v10, v6

    invoke-virtual {v10}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 273
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    .line 277
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v10, :cond_4

    .line 278
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 282
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v11, v2

    move v12, v3

    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 283
    return-void

    .line 206
    .end local v7    # "entries":[Ljava/lang/CharSequence;
    :cond_5
    move-object v10, v6

    sget v11, Landroidx/appcompat/R$styleable;->Spinner_popupTheme:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    move v7, v10

    .line 207
    .local v7, "popupThemeResId":I
    move v10, v7

    if-eqz v10, :cond_6

    .line 208
    move-object v10, v0

    new-instance v11, Landroidx/appcompat/view/ContextThemeWrapper;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v1

    move v14, v7

    invoke-direct {v12, v13, v14}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 212
    :cond_6
    move-object v10, v0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-ge v11, v12, :cond_7

    move-object v11, v1

    :goto_2
    iput-object v11, v10, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    .line 225
    .local v7, "aa":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 226
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "AppCompatSpinner"

    const-string/jumbo v11, "Could not read android:spinnerMode"

    move-object v12, v8

    invoke-static {v10, v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 228
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 229
    move-object v10, v7

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 228
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v7

    if-eqz v10, :cond_8

    .line 229
    move-object v10, v7

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    move-object v10, v9

    throw v10
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 19

    .prologue
    .line 543
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object/from16 v1, p1

    .local v1, "adapter":Landroid/widget/SpinnerAdapter;
    move-object/from16 v2, p2

    .local v2, "background":Landroid/graphics/drawable/Drawable;
    move-object v13, v1

    if-nez v13, :cond_0

    .line 544
    const/4 v13, 0x0

    move v0, v13

    .line 583
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return v0

    .line 547
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    const/4 v13, 0x0

    move v3, v13

    .line 548
    .local v3, "width":I
    const/4 v13, 0x0

    move-object v4, v13

    .line 549
    .local v4, "itemView":Landroid/view/View;
    const/4 v13, 0x0

    move v5, v13

    .line 550
    .local v5, "itemType":I
    move-object v13, v0

    .line 551
    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v6, v13

    .line 552
    .local v6, "widthMeasureSpec":I
    move-object v13, v0

    .line 553
    invoke-virtual {v13}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v7, v13

    .line 557
    .local v7, "heightMeasureSpec":I
    const/4 v13, 0x0

    move-object v14, v0

    invoke-virtual {v14}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 558
    .local v8, "start":I
    move-object v13, v1

    invoke-interface {v13}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v13

    move v14, v8

    const/16 v15, 0xf

    add-int/lit8 v14, v14, 0xf

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v9, v13

    .line 559
    .local v9, "end":I
    move v13, v9

    move v14, v8

    sub-int/2addr v13, v14

    move v10, v13

    .line 560
    .local v10, "count":I
    const/4 v13, 0x0

    move v14, v8

    const/16 v15, 0xf

    move/from16 v16, v10

    rsub-int/lit8 v15, v16, 0xf

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 561
    move v13, v8

    move v11, v13

    .local v11, "i":I
    :goto_1
    move v13, v11

    move v14, v9

    if-ge v13, v14, :cond_3

    .line 562
    move-object v13, v1

    move v14, v11

    invoke-interface {v13, v14}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v13

    move v12, v13

    .line 563
    .local v12, "positionType":I
    move v13, v12

    move v14, v5

    if-eq v13, v14, :cond_1

    .line 564
    move v13, v12

    move v5, v13

    .line 565
    const/4 v13, 0x0

    move-object v4, v13

    .line 567
    :cond_1
    move-object v13, v1

    move v14, v11

    move-object v15, v4

    move-object/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object v4, v13

    .line 568
    move-object v13, v4

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    if-nez v13, :cond_2

    .line 569
    move-object v13, v4

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :cond_2
    move-object v13, v4

    move v14, v6

    move v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 574
    move v13, v3

    move-object v14, v4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v3, v13

    .line 561
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 578
    .end local v12    # "positionType":I
    :cond_3
    move-object v13, v2

    if-eqz v13, :cond_4

    .line 579
    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 580
    move v13, v3

    move-object v14, v0

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    move v3, v13

    .line 583
    :cond_4
    move v13, v3

    move v0, v13

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 537
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    .line 538
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 540
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 359
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOffset()I

    move-result v1

    move v0, v1

    .line 363
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return v0

    .line 360
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 361
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 3

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 334
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getVerticalOffset()I

    move-result v1

    move v0, v1

    .line 338
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return v0

    .line 335
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 336
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 3

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 378
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    move v0, v1

    .line 382
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return v0

    .line 379
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 380
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 382
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 315
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 319
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return-object v0

    .line 316
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 317
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 319
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 291
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object v0, v1

    .line 295
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return-object v0

    .line 292
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 293
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 295
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 502
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 530
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 531
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 406
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 409
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 423
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v4, :cond_0

    move v4, v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    .line 424
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredWidth()I

    move-result v4

    move v3, v4

    .line 425
    .local v3, "measuredWidth":I
    move-object v4, v0

    move v5, v3

    move-object v6, v0

    move-object v7, v0

    .line 426
    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v6

    .line 425
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    .line 427
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 425
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v6, v0

    .line 428
    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatSpinner;->getMeasuredHeight()I

    move-result v6

    .line 425
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->setMeasuredDimension(II)V

    .line 430
    .end local v3    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mForwardingListener:Landroidx/appcompat/widget/ForwardingListener;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const/4 v2, 0x1

    move v0, v2

    .line 416
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_1

    .line 436
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->show()V

    .line 439
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 443
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatSpinner;
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/Spinner;->performClick()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 9

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/SpinnerAdapter;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupSet:Z

    if-nez v3, :cond_0

    .line 390
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 391
    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 396
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v3, :cond_1

    .line 397
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_1
    move-object v2, v3

    .line 398
    .local v2, "popupContext":Landroid/content/Context;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    new-instance v4, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    .end local v2    # "popupContext":Landroid/content/Context;
    :cond_1
    goto :goto_0

    .line 397
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 472
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 463
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 464
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 466
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move v1, p1

    .local v1, "pixels":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 344
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 346
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move v1, p1

    .local v1, "pixels":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 325
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setVerticalOffset(I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 327
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move v1, p1

    .local v1, "pixels":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 369
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 371
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_1

    .line 301
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 303
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move v1, p1

    .local v1, "resId":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "prompt":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    if-eqz v2, :cond_0

    .line 449
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 487
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 489
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatSpinner;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v2, :cond_0

    .line 516
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 518
    :cond_0
    return-void
.end method
