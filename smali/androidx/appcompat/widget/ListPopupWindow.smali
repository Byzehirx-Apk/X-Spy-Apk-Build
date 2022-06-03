.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 84
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 90
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "getMaxAvailableHeight"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 97
    :goto_1
    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "setEpicenterBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .line 102
    :goto_2
    return-void

    .line 86
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ListPopupWindow"

    const-string/jumbo v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 93
    const-string/jumbo v1, "ListPopupWindow"

    const-string/jumbo v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 99
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 100
    const-string/jumbo v1, "ListPopupWindow"

    const-string/jumbo v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    sget v5, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v2, v3, v4, v5}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
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

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 108
    move-object v6, v0

    const/4 v7, -0x2

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 109
    move-object v6, v0

    const/4 v7, -0x2

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 112
    move-object v6, v0

    const/16 v7, 0x3ea

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 114
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 118
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    .line 120
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 121
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 122
    move-object v6, v0

    const v7, 0x7fffffff

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 125
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    .line 136
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    .line 137
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 138
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    .line 139
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 144
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 256
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 257
    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 259
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 261
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object v6, v0

    move-object v7, v5

    sget v8, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 263
    move-object v6, v0

    move-object v7, v5

    sget v8, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 265
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v6, :cond_0

    .line 266
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 268
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/AppCompatPopupWindow;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 271
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 272
    return-void
.end method

.method private buildDropDown()I
    .locals 18

    .prologue
    .line 1136
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    const/4 v11, 0x0

    move v2, v11

    .line 1138
    .local v2, "otherHeights":I
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-nez v11, :cond_8

    .line 1139
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    move-object v3, v11

    .line 1147
    .local v3, "context":Landroid/content/Context;
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/ListPopupWindow$2;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v12, v11, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1158
    move-object v11, v0

    move-object v12, v0

    move-object v13, v3

    move-object v14, v0

    iget-boolean v14, v14, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v14, :cond_6

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1159
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1160
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1163
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1164
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setFocusable(Z)V

    .line 1165
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1166
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    new-instance v12, Landroidx/appcompat/widget/ListPopupWindow$3;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1184
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1186
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v11, :cond_1

    .line 1187
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1190
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v1, v11

    .line 1192
    .local v1, "dropDownView":Landroid/view/ViewGroup;
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v4, v11

    .line 1193
    .local v4, "hintView":Landroid/view/View;
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 1196
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v3

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v11

    .line 1197
    .local v5, "hintContainer":Landroid/widget/LinearLayout;
    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1199
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v6, v11

    .line 1203
    .local v6, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v11, :pswitch_data_0

    .line 1215
    const-string/jumbo v11, "ListPopupWindow"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid hint position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1223
    :goto_1
    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v11, :cond_7

    .line 1224
    const/high16 v11, -0x80000000

    move v8, v11

    .line 1225
    .local v8, "widthMode":I
    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    move v7, v11

    .line 1230
    .local v7, "widthSize":I
    :goto_2
    move v11, v7

    move v12, v8

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v9, v11

    .line 1231
    .local v9, "widthSpec":I
    const/4 v11, 0x0

    move v10, v11

    .line 1232
    .local v10, "heightSpec":I
    move-object v11, v4

    move v12, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 1234
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v11

    .line 1235
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    .line 1238
    move-object v11, v5

    move-object v1, v11

    .line 1241
    .end local v5    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v6    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "widthSize":I
    .end local v8    # "widthMode":I
    .end local v9    # "widthSpec":I
    .end local v10    # "heightSpec":I
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1242
    .line 1256
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "hintView":Landroid/view/View;
    :cond_3
    :goto_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v4, v11

    .line 1257
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    move-object v11, v4

    if-eqz v11, :cond_9

    .line 1258
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v11

    .line 1259
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move v3, v11

    .line 1263
    .local v3, "padding":I
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v11, :cond_4

    .line 1264
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    iput v12, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1272
    :cond_4
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1273
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_5
    move v5, v11

    .line 1274
    .local v5, "ignoreBottomDecorations":Z
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v14, v5

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v11

    move v6, v11

    .line 1276
    .local v6, "maxHeight":I
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v11, :cond_5

    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1277
    :cond_5
    move v11, v6

    move v12, v3

    add-int/2addr v11, v12

    move v0, v11

    .line 1309
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_6
    return v0

    .line 1158
    .end local v1    # "dropDownView":Landroid/view/ViewGroup;
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v5    # "ignoreBottomDecorations":Z
    .end local v6    # "maxHeight":I
    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    .local v3, "context":Landroid/content/Context;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1205
    .restart local v1    # "dropDownView":Landroid/view/ViewGroup;
    .local v4, "hintView":Landroid/view/View;
    .local v5, "hintContainer":Landroid/widget/LinearLayout;
    .local v6, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1207
    goto/16 :goto_1

    .line 1210
    :pswitch_1
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1211
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    goto/16 :goto_1

    .line 1227
    :cond_7
    const/4 v11, 0x0

    move v8, v11

    .line 1228
    .restart local v8    # "widthMode":I
    const/4 v11, 0x0

    move v7, v11

    .restart local v7    # "widthSize":I
    goto/16 :goto_2

    .line 1243
    .end local v1    # "dropDownView":Landroid/view/ViewGroup;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "hintView":Landroid/view/View;
    .end local v5    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v6    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "widthSize":I
    .end local v8    # "widthMode":I
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v1, v11

    .line 1244
    .restart local v1    # "dropDownView":Landroid/view/ViewGroup;
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v3, v11

    .line 1245
    .local v3, "view":Landroid/view/View;
    move-object v11, v3

    if-eqz v11, :cond_3

    .line 1246
    move-object v11, v3

    .line 1247
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, v11

    .line 1248
    .local v4, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    goto/16 :goto_3

    .line 1267
    .end local v3    # "view":Landroid/view/View;
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 1268
    const/4 v11, 0x0

    move v3, v11

    .local v3, "padding":I
    goto :goto_4

    .line 1273
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 1281
    .local v5, "ignoreBottomDecorations":Z
    .local v6, "maxHeight":I
    :cond_b
    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v11, :pswitch_data_1

    .line 1295
    move-object v11, v0

    iget v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1301
    .local v7, "childWidthSpec":I
    :goto_7
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move v12, v7

    const/4 v13, 0x0

    const/4 v14, -0x1

    move v15, v6

    move/from16 v16, v2

    sub-int v15, v15, v16

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v11

    move v8, v11

    .line 1303
    .local v8, "listContent":I
    move v11, v8

    if-lez v11, :cond_c

    .line 1304
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v11}, Landroidx/appcompat/widget/DropDownListView;->getPaddingTop()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1305
    invoke-virtual {v12}, Landroidx/appcompat/widget/DropDownListView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1306
    .local v9, "listPadding":I
    move v11, v2

    move v12, v3

    move v13, v9

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v2, v11

    .line 1309
    .end local v9    # "listPadding":I
    :cond_c
    move v11, v8

    move v12, v2

    add-int/2addr v11, v12

    move v0, v11

    goto/16 :goto_6

    .line 1283
    .end local v7    # "childWidthSpec":I
    .end local v8    # "listContent":I
    :pswitch_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1284
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, -0x80000000

    .line 1283
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1287
    .restart local v7    # "childWidthSpec":I
    goto :goto_7

    .line 1289
    .end local v7    # "childWidthSpec":I
    :pswitch_3
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1290
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    .line 1289
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1293
    .restart local v7    # "childWidthSpec":I
    goto :goto_7

    .line 1203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1281
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 12

    .prologue
    .line 1421
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move v2, p2

    .local v2, "yOffset":I
    move v3, p3

    .local v3, "ignoreBottomDecorations":Z
    sget-object v5, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 1423
    :try_start_0
    sget-object v5, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    .line 1424
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1423
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 1430
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return v0

    .line 1425
    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1426
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ListPopupWindow"

    const-string/jumbo v6, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1430
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private static isConfirmKey(I)Z
    .locals 3

    .prologue
    .line 1407
    move v0, p0

    .local v0, "keyCode":I
    move v1, v0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "keyCode":I
    return v0

    .restart local v0    # "keyCode":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 5

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 770
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    .line 771
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 772
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 773
    .local v2, "group":Landroid/view/ViewGroup;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 776
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 10

    .prologue
    .line 1411
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "clip":Z
    sget-object v3, Landroidx/appcompat/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1413
    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1416
    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1415
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ListPopupWindow"

    const-string/jumbo v4, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 4

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v1, v2

    .line 827
    .local v1, "list":Landroidx/appcompat/widget/DropDownListView;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 829
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 831
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->requestLayout()V

    .line 833
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 7

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "src":Landroid/view/View;
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/ListPopupWindow$1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 930
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "hijackFocus":Z
    new-instance v3, Landroidx/appcompat/widget/DropDownListView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 753
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    .line 754
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 755
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 756
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 2
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public getHorizontalOffset()I
    .locals 2

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public getInputMethodMode()I
    .locals 2

    .prologue
    .line 800
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return-object v0
.end method

.method public getPromptPosition()I
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    const/4 v1, 0x0

    move-object v0, v1

    .line 878
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 4

    .prologue
    .line 901
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    const-wide/high16 v2, -0x8000000000000000L

    move-wide v1, v2

    .line 904
    .end local v1    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    const/4 v1, -0x1

    move v0, v1

    .line 891
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    const/4 v1, 0x0

    move-object v0, v1

    .line 917
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 2

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public getVerticalOffset()I
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_0

    .line 488
    const/4 v1, 0x0

    move v0, v1

    .line 490
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 3

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 962
    move v10, v1

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_8

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 963
    invoke-virtual {v10}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v10

    if-gez v10, :cond_0

    move v10, v1

    .line 964
    invoke-static {v10}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 965
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v10

    move v3, v10

    .line 968
    .local v3, "curIndex":I
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    .line 970
    .local v5, "below":Z
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v10

    .line 973
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const v10, 0x7fffffff

    move v8, v10

    .line 974
    .local v8, "firstItem":I
    const/high16 v10, -0x80000000

    move v9, v10

    .line 976
    .local v9, "lastItem":I
    move-object v10, v6

    if-eqz v10, :cond_1

    .line 977
    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v10

    move v7, v10

    .line 978
    .local v7, "allEnabled":Z
    move v10, v7

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    .line 979
    :goto_1
    move v8, v10

    .line 980
    move v10, v7

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 981
    :goto_2
    move v9, v10

    .line 984
    .end local v7    # "allEnabled":Z
    :cond_1
    move v10, v5

    if-eqz v10, :cond_2

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_2

    move v10, v3

    move v11, v8

    if-le v10, v11, :cond_3

    :cond_2
    move v10, v5

    if-nez v10, :cond_7

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_7

    move v10, v3

    move v11, v9

    if-lt v10, v11, :cond_7

    .line 988
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    .line 989
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 990
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 991
    const/4 v10, 0x1

    move v0, v10

    .line 1036
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    .end local v3    # "curIndex":I
    .end local v5    # "below":Z
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    .end local v8    # "firstItem":I
    .end local v9    # "lastItem":I
    :goto_3
    return v0

    .line 968
    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    .restart local v3    # "curIndex":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 978
    .restart local v5    # "below":Z
    .restart local v6    # "adapter":Landroid/widget/ListAdapter;
    .restart local v7    # "allEnabled":Z
    .restart local v8    # "firstItem":I
    .restart local v9    # "lastItem":I
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 979
    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_1

    .line 980
    :cond_6
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v11, v6

    .line 981
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_2

    .line 995
    .end local v7    # "allEnabled":Z
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 998
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    move v4, v10

    .line 1001
    .local v4, "consumed":Z
    move v10, v4

    if-eqz v10, :cond_9

    .line 1004
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1009
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/DropDownListView;->requestFocusFromTouch()Z

    move-result v10

    .line 1010
    move-object v10, v0

    invoke-virtual {v10}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1012
    move v10, v1

    sparse-switch v10, :sswitch_data_0

    .line 1019
    .line 1036
    .end local v3    # "curIndex":I
    .end local v4    # "consumed":Z
    .end local v5    # "below":Z
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    .end local v8    # "firstItem":I
    .end local v9    # "lastItem":I
    :cond_8
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 1019
    .restart local v3    # "curIndex":I
    .restart local v4    # "consumed":Z
    .restart local v5    # "below":Z
    .restart local v6    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "firstItem":I
    .restart local v9    # "lastItem":I
    :sswitch_0
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1022
    :cond_9
    move v10, v5

    if-eqz v10, :cond_a

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_a

    .line 1025
    move v10, v3

    move v11, v9

    if-ne v10, v11, :cond_8

    .line 1026
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1028
    :cond_a
    move v10, v5

    if-nez v10, :cond_8

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_8

    move v10, v3

    move v11, v8

    if-ne v10, v11, :cond_8

    .line 1030
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1075
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1078
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 1079
    .local v3, "anchorView":Landroid/view/View;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1080
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1081
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1082
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1084
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 1096
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v0

    .line 1085
    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    .restart local v3    # "anchorView":Landroid/view/View;
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1086
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1087
    .restart local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 1088
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1090
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1091
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 1092
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1096
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1051
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 1052
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v3, v4

    .line 1053
    .local v3, "consumed":Z
    move v4, v3

    if-eqz v4, :cond_0

    move v4, v1

    invoke-static {v4}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1056
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 1058
    :cond_0
    move v4, v3

    move v0, v4

    .line 1060
    .end local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    .end local v3    # "consumed":Z
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 12

    .prologue
    .line 859
    move-object v1, p0

    .local v1, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v2, p1

    .local v2, "position":I
    move-object v6, v1

    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 860
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v6, :cond_0

    .line 861
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v3, v6

    .line 862
    .local v3, "list":Landroidx/appcompat/widget/DropDownListView;
    move-object v6, v3

    move v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 863
    .local v4, "child":Landroid/view/View;
    move-object v6, v3

    invoke-virtual {v6}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v5, v6

    .line 864
    .local v5, "adapter":Landroid/widget/ListAdapter;
    move-object v6, v1

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v7, v3

    move-object v8, v4

    move v9, v2

    move-object v10, v5

    move v11, v2

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-interface/range {v6 .. v11}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 866
    .end local v3    # "list":Landroidx/appcompat/widget/DropDownListView;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v6, 0x1

    move v1, v6

    .line 868
    .end local v1    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :goto_0
    return v1

    .restart local v1    # "this":Landroidx/appcompat/widget/ListPopupWindow;
    :cond_1
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public postShow()V
    .locals 3

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 639
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 7
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v2, :cond_3

    .line 282
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 286
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 287
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 288
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v2, :cond_2

    .line 292
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    :cond_2
    return-void

    .line 283
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 284
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "anchor":Landroid/view/View;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 465
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "animationStyle":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 436
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    return-void
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "width":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 550
    .local v2, "popupBackground":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 551
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 552
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "dropDownAlwaysVisible":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 368
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "gravity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    .line 523
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 513
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "forceIgnoreOutsideTouch":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 352
    return-void
.end method

.method public setHeight(I)V
    .locals 6

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "height":I
    move v2, v1

    if-gez v2, :cond_0

    const/4 v2, -0x2

    move v3, v1

    if-eq v2, v3, :cond_0

    const/4 v2, -0x1

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 576
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 580
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 481
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 4

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "mode":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 792
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 4

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "max":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 941
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 411
    return-void
.end method

.method public setModal(Z)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "modal":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 330
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "listener":Landroid/widget/PopupWindow$OnDismissListener;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 766
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 604
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "selectedListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 615
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1318
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "overlapAnchor":Z
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1319
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1320
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    .line 307
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v1, p1

    .local v1, "prompt":Landroid/view/View;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    move v2, v3

    .line 625
    .local v2, "showing":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 626
    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    .line 628
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 629
    move v3, v2

    if-eqz v3, :cond_1

    .line 630
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 632
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "position":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v2, v3

    .line 811
    .local v2, "list":Landroidx/appcompat/widget/DropDownListView;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 812
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 813
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    .line 815
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/appcompat/widget/DropDownListView;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/DropDownListView;->setItemChecked(IZ)V

    .line 819
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 4

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "mode":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 392
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 500
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 501
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "width":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 540
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move v1, p1

    .local v1, "layoutType":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 593
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v6, v0

    invoke-direct {v6}, Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    move v1, v6

    .line 649
    .local v1, "height":I
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v6

    move v2, v6

    .line 650
    .local v2, "noInputMethod":Z
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v6, v7}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 652
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 653
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 655
    .line 745
    :goto_0
    return-void

    .line 658
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 661
    const/4 v6, -0x1

    move v3, v6

    .line 669
    .local v3, "widthSpec":I
    :goto_1
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 672
    move v6, v2

    if-eqz v6, :cond_4

    move v6, v1

    :goto_2
    move v4, v6

    .line 673
    .local v4, "heightSpec":I
    move v6, v2

    if-eqz v6, :cond_6

    .line 674
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    const/4 v7, -0x1

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 676
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 688
    :goto_4
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_a

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_a

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 690
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v10, v3

    if-gez v10, :cond_b

    const/4 v10, -0x1

    :goto_6
    move v11, v4

    if-gez v11, :cond_c

    const/4 v11, -0x1

    :goto_7
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 693
    .line 745
    :cond_1
    :goto_8
    goto :goto_0

    .line 662
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_3

    .line 663
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v3, v6

    .restart local v3    # "widthSpec":I
    goto :goto_1

    .line 665
    .end local v3    # "widthSpec":I
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v6

    .restart local v3    # "widthSpec":I
    goto :goto_1

    .line 672
    :cond_4
    const/4 v6, -0x1

    goto :goto_2

    .line 674
    .restart local v4    # "heightSpec":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 678
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    const/4 v7, -0x1

    :goto_9
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 680
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    .line 678
    :cond_7
    const/4 v7, 0x0

    goto :goto_9

    .line 682
    .end local v4    # "heightSpec":I
    :cond_8
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_9

    .line 683
    move v6, v1

    move v4, v6

    .restart local v4    # "heightSpec":I
    goto :goto_4

    .line 685
    .end local v4    # "heightSpec":I
    :cond_9
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v6

    .restart local v4    # "heightSpec":I
    goto :goto_4

    .line 688
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 690
    :cond_b
    move v10, v3

    goto :goto_6

    :cond_c
    move v11, v4

    goto :goto_7

    .line 695
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_d
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_12

    .line 696
    const/4 v6, -0x1

    move v3, v6

    .line 706
    .restart local v3    # "widthSpec":I
    :goto_a
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_14

    .line 707
    const/4 v6, -0x1

    move v4, v6

    .line 716
    .restart local v4    # "heightSpec":I
    :goto_b
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 717
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 718
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 722
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_16

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_16

    const/4 v7, 0x1

    :goto_c
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 723
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 724
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v6, :cond_e

    .line 725
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-static {v6, v7}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 727
    :cond_e
    sget-object v6, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_f

    .line 729
    :try_start_0
    sget-object v6, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 732
    .line 734
    :cond_f
    :goto_d
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v9, v0

    iget v9, v9, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object v10, v0

    iget v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 736
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    .line 738
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-eqz v6, :cond_10

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 739
    :cond_10
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    .line 741
    :cond_11
    move-object v6, v0

    iget-boolean v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v6, :cond_1

    .line 742
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    goto/16 :goto_8

    .line 698
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_12
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_13

    .line 699
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v3, v6

    .restart local v3    # "widthSpec":I
    goto/16 :goto_a

    .line 701
    .end local v3    # "widthSpec":I
    :cond_13
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v6

    .restart local v3    # "widthSpec":I
    goto/16 :goto_a

    .line 709
    :cond_14
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_15

    .line 710
    move v6, v1

    move v4, v6

    .restart local v4    # "heightSpec":I
    goto/16 :goto_b

    .line 712
    .end local v4    # "heightSpec":I
    :cond_15
    move-object v6, v0

    iget v6, v6, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v6

    .restart local v4    # "heightSpec":I
    goto/16 :goto_b

    .line 722
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 730
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 731
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ListPopupWindow"

    const-string/jumbo v7, "Could not invoke setEpicenterBounds on PopupWindow"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_d
.end method
