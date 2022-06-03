.class public final Landroidx/appcompat/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$AvdcInflateDelegate;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$VdcInflateDelegate;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;,
        Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManag"

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroidx/collection/SparseArrayCompat",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 78
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 107
    new-instance v0, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 123
    const/4 v0, 0x7

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 137
    const/16 v0, 0xa

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget v3, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget v3, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget v3, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 183
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v2, v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 800
    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "tagName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "delegate":Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    if-nez v3, :cond_0

    .line 490
    move-object v3, v0

    new-instance v4, Landroidx/collection/ArrayMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v4, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    .line 492
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 493
    return-void
.end method

.method private declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-wide/from16 v2, p2

    .local v2, "key":J
    move-object/from16 v4, p4

    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v13, p0

    monitor-enter v13

    move-object v7, v4

    :try_start_0
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    move-object v5, v7

    .line 416
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 417
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/collection/LongSparseArray;

    move-object v6, v7

    .line 418
    .local v6, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v7, v6

    if-nez v7, :cond_0

    .line 419
    new-instance v7, Landroidx/collection/LongSparseArray;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object v6, v7

    .line 420
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 422
    :cond_0
    move-object v7, v6

    move-wide v8, v2

    new-instance v10, Ljava/lang/ref/WeakReference;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    const/4 v7, 0x1

    move v0, v7

    .line 425
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .end local v6    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :goto_0
    monitor-exit v13

    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 415
    .end local v5    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v3, p3

    .local v3, "tintList":Landroid/content/res/ColorStateList;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v5, :cond_0

    .line 569
    move-object v5, v0

    new-instance v6, Ljava/util/WeakHashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 571
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/collection/SparseArrayCompat;

    move-object v4, v5

    .line 572
    .local v4, "themeTints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    move-object v5, v4

    if-nez v5, :cond_1

    .line 573
    new-instance v5, Landroidx/collection/SparseArrayCompat;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v4, v5

    .line 574
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 576
    :cond_1
    move-object v5, v4

    move v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 8

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "array":[I
    move v1, p1

    .local v1, "value":I
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 503
    .local v5, "id":I
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 504
    const/4 v6, 0x1

    move v0, v6

    .line 507
    .end local v0    # "array":[I
    .end local v5    # "id":I
    :goto_1
    return v0

    .line 502
    .restart local v0    # "array":[I
    .restart local v5    # "id":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    .end local v5    # "id":I
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v3, :cond_0

    .line 748
    .line 759
    :goto_0
    return-void

    .line 752
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 753
    move-object v3, v0

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$drawable;->abc_vector_test:I

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 754
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-static {v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 756
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 759
    :cond_2
    goto :goto_0
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "baseColor":I
    const/4 v8, 0x4

    new-array v8, v8, [[I

    move-object v3, v8

    .line 597
    .local v3, "states":[[I
    const/4 v8, 0x4

    new-array v8, v8, [I

    move-object v4, v8

    .line 598
    .local v4, "colors":[I
    const/4 v8, 0x0

    move v5, v8

    .line 600
    .local v5, "i":I
    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v6, v8

    .line 601
    .local v6, "colorControlHighlight":I
    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v7, v8

    .line 604
    .local v7, "disabledColor":I
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 605
    move-object v8, v4

    move v9, v5

    move v10, v7

    aput v10, v8, v9

    .line 606
    add-int/lit8 v5, v5, 0x1

    .line 608
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 609
    move-object v8, v4

    move v9, v5

    move v10, v6

    move v11, v2

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    aput v10, v8, v9

    .line 610
    add-int/lit8 v5, v5, 0x1

    .line 612
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v10, v8, v9

    .line 613
    move-object v8, v4

    move v9, v5

    move v10, v6

    move v11, v2

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v10

    aput v10, v8, v9

    .line 614
    add-int/lit8 v5, v5, 0x1

    .line 617
    move-object v8, v3

    move v9, v5

    sget-object v10, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v10, v8, v9

    .line 618
    move-object v8, v4

    move v9, v5

    move v10, v2

    aput v10, v8, v9

    .line 619
    add-int/lit8 v5, v5, 0x1

    .line 621
    new-instance v8, Landroid/content/res/ColorStateList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    return-object v0
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 6

    .prologue
    .line 226
    move-object v1, p0

    .local v1, "tv":Landroid/util/TypedValue;
    move-object v2, v1

    iget v2, v2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    move-object v4, v1

    iget v4, v4, Landroid/util/TypedValue;->data:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "tv":Landroid/util/TypedValue;
    return-wide v1
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 591
    invoke-static {v4, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 590
    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    sget v5, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 581
    invoke-static {v4, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 580
    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 231
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object/from16 v2, p1

    .local v2, "context":Landroid/content/Context;
    move/from16 v3, p2

    .local v3, "resId":I
    move-object v8, v1

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v8, :cond_0

    .line 232
    move-object v8, v1

    new-instance v9, Landroid/util/TypedValue;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    iput-object v9, v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 234
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    move-object v4, v8

    .line 235
    .local v4, "tv":Landroid/util/TypedValue;
    move-object v8, v2

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move v9, v3

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 236
    move-object v8, v4

    invoke-static {v8}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v8

    move-wide v5, v8

    .line 238
    .local v5, "key":J
    move-object v8, v1

    move-object v9, v2

    move-wide v10, v5

    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v7, v8

    .line 239
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 241
    move-object v8, v7

    move-object v1, v8

    .line 258
    .end local v1    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_0
    return-object v1

    .line 245
    .restart local v1    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1
    move v8, v3

    sget v9, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne v8, v9, :cond_2

    .line 246
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v1

    move-object v14, v2

    sget v15, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 247
    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move-object v13, v1

    move-object v14, v2

    sget v15, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 248
    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v7, v8

    .line 252
    :cond_2
    move-object v8, v7

    if-eqz v8, :cond_3

    .line 253
    move-object v8, v7

    move-object v9, v4

    iget v9, v9, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 255
    move-object v8, v1

    move-object v9, v2

    move-wide v10, v5

    move-object v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    move-result v8

    .line 258
    :cond_3
    move-object v8, v7

    move-object v1, v8

    goto :goto_0
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 12

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x3

    new-array v6, v6, [[I

    move-object v2, v6

    .line 626
    .local v2, "states":[[I
    const/4 v6, 0x3

    new-array v6, v6, [I

    move-object v3, v6

    .line 627
    .local v3, "colors":[I
    const/4 v6, 0x0

    move v4, v6

    .line 629
    .local v4, "i":I
    move-object v6, v1

    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v6, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v5, v6

    .line 632
    .local v5, "thumbColor":Landroid/content/res/ColorStateList;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 638
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    move-object v9, v2

    move v10, v4

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v7

    .line 639
    add-int/lit8 v4, v4, 0x1

    .line 641
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 642
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 643
    add-int/lit8 v4, v4, 0x1

    .line 646
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v8, v6, v7

    .line 647
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    aput v8, v6, v7

    .line 648
    add-int/lit8 v4, v4, 0x1

    .line 667
    :goto_0
    new-instance v6, Landroid/content/res/ColorStateList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    return-object v0

    .line 653
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_0
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 654
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 655
    add-int/lit8 v4, v4, 0x1

    .line 657
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v8, v6, v7

    .line 658
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 659
    add-int/lit8 v4, v4, 0x1

    .line 662
    move-object v6, v2

    move v7, v4

    sget-object v8, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v8, v6, v7

    .line 663
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 7

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "tint":Landroid/content/res/ColorStateList;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, p2

    .local v2, "state":[I
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 718
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 721
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 720
    .restart local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_1
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 721
    .local v3, "color":I
    move v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/AppCompatDrawableManager;
    .locals 4

    .prologue
    .line 89
    const-class v2, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 91
    sget-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroidx/appcompat/widget/AppCompatDrawableManager;)V

    .line 93
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-wide v2, p2

    .local v2, "key":J
    move-object v10, p0

    monitor-enter v10

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 395
    .local v4, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v7, v4

    if-nez v7, :cond_0

    .line 396
    const/4 v7, 0x0

    move-object v0, v7

    .line 410
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_0
    monitor-exit v10

    return-object v0

    .line 399
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_0
    move-object v7, v4

    move-wide v8, v2

    :try_start_1
    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 400
    .local v5, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 402
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v6, v7

    .line 403
    .local v6, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 404
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 407
    :cond_1
    move-object v7, v4

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->delete(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .end local v6    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 394
    .end local v4    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v5    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 9

    .prologue
    .line 727
    move v0, p0

    .local v0, "color":I
    move-object v1, p1

    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    const-class v7, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v7

    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    move-object v2, v3

    .line 729
    .local v2, "filter":Landroid/graphics/PorterDuffColorFilter;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 731
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 732
    sget-object v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;

    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 735
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "color":I
    monitor-exit v7

    return-object v0

    .line 727
    .end local v2    # "filter":Landroid/graphics/PorterDuffColorFilter;
    .restart local v0    # "color":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "color":I
    throw v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-eqz v4, :cond_1

    .line 560
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/collection/SparseArrayCompat;

    move-object v3, v4

    .line 561
    .local v3, "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v4

    .line 563
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .end local v3    # "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :goto_1
    return-object v0

    .line 561
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v3    # "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 563
    .end local v3    # "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 4

    .prologue
    .line 511
    move v0, p0

    .local v0, "resId":I
    const/4 v2, 0x0

    move-object v1, v2

    .line 513
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    move v2, v0

    sget v3, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v2, v3, :cond_0

    .line 514
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v1, v2

    .line 517
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "resId":I
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Landroidx/appcompat/widget/AppCompatDrawableManager;)V
    .locals 6
    .param p0    # Landroidx/appcompat/widget/AppCompatDrawableManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "manager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 101
    move-object v1, v0

    const-string/jumbo v2, "vector"

    new-instance v3, Landroidx/appcompat/widget/AppCompatDrawableManager$VdcInflateDelegate;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 102
    move-object v1, v0

    const-string/jumbo v2, "animated-vector"

    new-instance v3, Landroidx/appcompat/widget/AppCompatDrawableManager$AvdcInflateDelegate;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 103
    move-object v1, v0

    const-string/jumbo v2, "animated-selector"

    new-instance v3, Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$AsldcInflateDelegate;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V

    .line 105
    :cond_0
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    instance-of v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.graphics.drawable.VectorDrawable"

    move-object v2, v0

    .line 763
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    return v0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 308
    move-object/from16 v1, p0

    .local v1, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object/from16 v2, p1

    .local v2, "context":Landroid/content/Context;
    move/from16 v3, p2

    .local v3, "resId":I
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    if-eqz v14, :cond_b

    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    invoke-virtual {v14}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 309
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    if-eqz v14, :cond_3

    .line 310
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    move v15, v3

    invoke-virtual {v14, v15}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v4, v14

    .line 311
    .local v4, "cachedTagName":Ljava/lang/String;
    const-string/jumbo v14, "appcompat_skip_skip"

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v4

    if-eqz v14, :cond_1

    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    move-object v15, v4

    .line 312
    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1

    .line 319
    :cond_0
    const/4 v14, 0x0

    move-object v1, v14

    .line 389
    .end local v1    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .end local v4    # "cachedTagName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 321
    .line 326
    .restart local v1    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1
    :goto_1
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v14, :cond_2

    .line 327
    move-object v14, v1

    new-instance v15, Landroid/util/TypedValue;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    iput-object v15, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 329
    :cond_2
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    move-object v4, v14

    .line 330
    .local v4, "tv":Landroid/util/TypedValue;
    move-object v14, v2

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object v5, v14

    .line 331
    .local v5, "res":Landroid/content/res/Resources;
    move-object v14, v5

    move v15, v3

    move-object/from16 v16, v4

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 333
    move-object v14, v4

    invoke-static {v14}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v14

    move-wide v6, v14

    .line 335
    .local v6, "key":J
    move-object v14, v1

    move-object v15, v2

    move-wide/from16 v16, v6

    invoke-direct/range {v14 .. v17}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v8, v14

    .line 336
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    move-object v14, v8

    if-eqz v14, :cond_4

    .line 342
    move-object v14, v8

    move-object v1, v14

    goto :goto_0

    .line 323
    .end local v4    # "tv":Landroid/util/TypedValue;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "key":J
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v14, v1

    new-instance v15, Landroidx/collection/SparseArrayCompat;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v15, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    goto :goto_1

    .line 345
    .restart local v4    # "tv":Landroid/util/TypedValue;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "key":J
    .restart local v8    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object v14, v4

    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v14, :cond_6

    move-object v14, v4

    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 348
    move-object v14, v5

    move v15, v3

    :try_start_0
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    move-object v9, v14

    .line 349
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v14, v9

    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    move-object v10, v14

    .line 351
    .local v10, "attrs":Landroid/util/AttributeSet;
    :goto_2
    move-object v14, v9

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v11, v15

    .local v11, "type":I
    const/4 v15, 0x2

    if-eq v14, v15, :cond_5

    move v14, v11

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    goto :goto_2

    .line 355
    :cond_5
    move v14, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_8

    .line 356
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string/jumbo v16, "No start tag found"

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "type":I
    :catch_0
    move-exception v14

    move-object v9, v14

    .line 378
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "AppCompatDrawableManag"

    const-string/jumbo v15, "Exception while inflating drawable"

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 381
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    move-object v14, v8

    if-nez v14, :cond_7

    .line 384
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    move v15, v3

    const-string/jumbo v16, "appcompat_skip_skip"

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 386
    :cond_7
    move-object v14, v8

    move-object v1, v14

    goto/16 :goto_0

    .line 359
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "type":I
    :cond_8
    move-object v14, v9

    :try_start_1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 361
    .local v12, "tagName":Ljava/lang/String;
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    move v15, v3

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 364
    move-object v14, v1

    iget-object v14, v14, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    move-object v15, v12

    invoke-virtual {v14, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;

    move-object v13, v14

    .line 365
    .local v13, "delegate":Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
    move-object v14, v13

    if-eqz v14, :cond_9

    .line 366
    move-object v14, v13

    move-object v15, v2

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v2

    .line 367
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    .line 366
    invoke-interface/range {v14 .. v18}, Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v8, v14

    .line 369
    :cond_9
    move-object v14, v8

    if-eqz v14, :cond_a

    .line 371
    move-object v14, v8

    move-object v15, v4

    iget v15, v15, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 372
    move-object v14, v1

    move-object v15, v2

    move-wide/from16 v16, v6

    move-object/from16 v18, v8

    invoke-direct/range {v14 .. v18}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_a

    .line 379
    :cond_a
    goto :goto_3

    .line 389
    .end local v4    # "tv":Landroid/util/TypedValue;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "key":J
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "type":I
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "delegate":Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
    :cond_b
    const/4 v14, 0x0

    move-object v1, v14

    goto/16 :goto_0
.end method

.method private removeDelegate(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "tagName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "delegate":Landroidx/appcompat/widget/AppCompatDrawableManager$InflateDelegate;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 497
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDelegates:Landroidx/collection/ArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 499
    :cond_0
    return-void
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    move v1, p1

    .local v1, "color":I
    move-object v2, p2

    .local v2, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v3, v0

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 742
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    if-nez v5, :cond_1

    sget-object v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-static {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 743
    return-void

    .line 742
    :cond_1
    move-object v5, v2

    goto :goto_0
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move v3, p3

    .local v3, "failIfNotKnown":Z
    move-object v4, p4

    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object v5, v7

    .line 264
    .local v5, "tintList":Landroid/content/res/ColorStateList;
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 266
    move-object v7, v4

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 269
    :cond_0
    move-object v7, v4

    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 270
    move-object v7, v4

    move-object v8, v5

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 273
    move v7, v2

    invoke-static {v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    move-object v6, v7

    .line 274
    .local v6, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 275
    move-object v7, v4

    move-object v8, v6

    invoke-static {v7, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 277
    .line 304
    .end local v6    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    :goto_0
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    return-object v0

    .line 277
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_2
    move v7, v2

    sget v8, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    if-ne v7, v8, :cond_3

    .line 278
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v7

    .line 279
    .local v6, "ld":Landroid/graphics/drawable/LayerDrawable;
    move-object v7, v6

    const/high16 v8, 0x1020000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 280
    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 279
    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 281
    move-object v7, v6

    const v8, 0x102000f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 282
    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 281
    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 283
    move-object v7, v6

    const v8, 0x102000d

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 284
    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 283
    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    goto :goto_0

    .end local v6    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    move v7, v2

    sget v8, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq v7, v8, :cond_4

    move v7, v2

    sget v8, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq v7, v8, :cond_4

    move v7, v2

    sget v8, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne v7, v8, :cond_5

    .line 288
    :cond_4
    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v6, v7

    .line 289
    .restart local v6    # "ld":Landroid/graphics/drawable/LayerDrawable;
    move-object v7, v6

    const/high16 v8, 0x1020000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 290
    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 289
    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 292
    move-object v7, v6

    const v8, 0x102000f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 293
    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 292
    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 294
    move-object v7, v6

    const v8, 0x102000d

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 295
    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 294
    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 296
    goto/16 :goto_0

    .line 297
    .end local v6    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move-object v7, v1

    move v8, v2

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v7

    move v6, v7

    .line 298
    .local v6, "tinted":Z
    move v7, v6

    if-nez v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_1

    .line 301
    const/4 v7, 0x0

    move-object v4, v7

    goto/16 :goto_0
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .locals 7

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "tint":Landroidx/appcompat/widget/TintInfo;
    move-object v2, p2

    .local v2, "state":[I
    move-object v3, v0

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 694
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 695
    const-string/jumbo v3, "AppCompatDrawableManag"

    const-string/jumbo v4, "Mutated drawable is not the same instance as the input."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 696
    .line 713
    :goto_0
    return-void

    .line 699
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_1

    move-object v3, v1

    iget-boolean v3, v3, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_5

    .line 700
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget-boolean v4, v4, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-object v4, v4, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_1
    move-object v5, v1

    iget-boolean v5, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_4

    move-object v5, v1

    iget-object v5, v5, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 708
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_2

    .line 711
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 713
    :cond_2
    goto :goto_0

    .line 700
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    sget-object v5, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 705
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v8

    .line 443
    .local v3, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v8, 0x0

    move v4, v8

    .line 444
    .local v4, "colorAttrSet":Z
    const/4 v8, 0x0

    move v5, v8

    .line 445
    .local v5, "colorAttr":I
    const/4 v8, -0x1

    move v6, v8

    .line 447
    .local v6, "alpha":I
    sget-object v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    move v9, v1

    invoke-static {v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 448
    sget v8, Landroidx/appcompat/R$attr;->colorControlNormal:I

    move v5, v8

    .line 449
    const/4 v8, 0x1

    move v4, v8

    .line 466
    :cond_0
    :goto_0
    move v8, v4

    if-eqz v8, :cond_7

    .line 467
    move-object v8, v2

    invoke-static {v8}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 468
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v2, v8

    .line 471
    :cond_1
    move-object v8, v0

    move v9, v5

    invoke-static {v8, v9}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v8

    move v7, v8

    .line 472
    .local v7, "color":I
    move-object v8, v2

    move v9, v7

    move-object v10, v3

    invoke-static {v9, v10}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 474
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 475
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    :cond_2
    const/4 v8, 0x1

    move v0, v8

    .line 485
    .end local v0    # "context":Landroid/content/Context;
    .end local v7    # "color":I
    :goto_1
    return v0

    .line 450
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    sget-object v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    move v9, v1

    invoke-static {v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 451
    sget v8, Landroidx/appcompat/R$attr;->colorControlActivated:I

    move v5, v8

    .line 452
    const/4 v8, 0x1

    move v4, v8

    goto :goto_0

    .line 453
    :cond_4
    sget-object v8, Landroidx/appcompat/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    move v9, v1

    invoke-static {v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 454
    const v8, 0x1010031

    move v5, v8

    .line 455
    const/4 v8, 0x1

    move v4, v8

    .line 456
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v8

    goto :goto_0

    .line 457
    :cond_5
    move v8, v1

    sget v9, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne v8, v9, :cond_6

    .line 458
    const v8, 0x1010030

    move v5, v8

    .line 459
    const/4 v8, 0x1

    move v4, v8

    .line 460
    const v8, 0x42233333    # 40.8f

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v6, v8

    goto :goto_0

    .line 461
    :cond_6
    move v8, v1

    sget v9, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne v8, v9, :cond_0

    .line 462
    const v8, 0x1010031

    move v5, v8

    .line 463
    const/4 v8, 0x1

    move v4, v8

    goto :goto_0

    .line 485
    :cond_7
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    monitor-exit v7

    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move v3, p3

    .local v3, "failIfNotKnown":Z
    move-object v10, p0

    monitor-enter v10

    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 198
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 199
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 200
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 202
    :cond_0
    move-object v5, v4

    if-nez v5, :cond_1

    .line 203
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 206
    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 208
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 210
    :cond_2
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 212
    move-object v5, v4

    invoke-static {v5}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_3
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    monitor-exit v10

    return-object v0

    .line 196
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "resId":I
    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    :try_start_0
    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    .line 524
    .local v3, "tint":Landroid/content/res/ColorStateList;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 526
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne v4, v5, :cond_2

    .line 527
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    .line 551
    :cond_0
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 552
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    monitor-exit v8

    return-object v0

    .line 528
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_2
    move v4, v2

    :try_start_1
    sget v5, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne v4, v5, :cond_3

    .line 529
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 530
    :cond_3
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v4, v5, :cond_4

    .line 531
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 532
    :cond_4
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne v4, v5, :cond_5

    .line 533
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 534
    :cond_5
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne v4, v5, :cond_6

    .line 535
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 536
    :cond_6
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne v4, v5, :cond_7

    .line 537
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 538
    :cond_7
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq v4, v5, :cond_8

    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne v4, v5, :cond_9

    .line 540
    :cond_8
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 541
    :cond_9
    sget-object v4, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    move v5, v2

    invoke-static {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 542
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v4, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 543
    :cond_a
    sget-object v4, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    move v5, v2

    invoke-static {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 544
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$color;->abc_tint_default:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 545
    :cond_b
    sget-object v4, Landroidx/appcompat/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    move v5, v2

    invoke-static {v4, v5}, Landroidx/appcompat/widget/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 546
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 547
    :cond_c
    move v4, v2

    sget v5, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne v4, v5, :cond_0

    .line 548
    move-object v4, v1

    sget v5, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 522
    .end local v3    # "tint":Landroid/content/res/ColorStateList;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/LongSparseArray;

    move-object v2, v3

    .line 219
    .local v2, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 221
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit v5

    return-void

    .line 218
    .end local v2    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/VectorEnabledTintResources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "resources":Landroidx/appcompat/widget/VectorEnabledTintResources;
    move v3, p3

    .local v3, "resId":I
    move-object v10, p0

    monitor-enter v10

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    :try_start_0
    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 431
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 432
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 434
    :cond_0
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 435
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    const/4 v8, 0x0

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v0, v5

    .line 437
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_0
    monitor-exit v10

    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 430
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatDrawableManager;
    throw v0
.end method
